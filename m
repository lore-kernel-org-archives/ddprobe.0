Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF1F353A70
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789132834; cv=none; b=YxItE7buY8iG5tc6biGDsdWO4+aB8BhJEzijEdmmLwkBL6KP3TeZj+j8riDeMMTgnU3pEEXqQ8vl9MN5BTIdRaBSkHrg7zxQ1GZ4zgCrgLUHe8bnGK2SjKAq7e5BZ35Eb7XcvJ6q7Cf7NwHBA8aozGhioasYCpJPAhlWmfu76cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789132834; c=relaxed/simple;
	bh=cQ5cgdlPgyka5BP2KbEBmjSS7US3WFNXZadhS8DxeX8=;
	h=To:Subject:From:Message-Id:Date; b=HmH5H4F3/N1E5KXbPsC01DPwAkcjO7n6V69ItsVu0DbdenAqV7Oi5Y7F5k13NkXcSxFKrsZtI9fsQ7Hu/7VROPli1nsjpllFxUeLJaJ7huHvcI4Yh7/okfzHF+13h05gEiri1v2bmb5/3Llqa2CKYP2y20PKYaH/g2bz0g30S08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2xTqIwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2xTqIwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6D8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789132833;
	bh=cQ5cgdlPgyka5BP2KbEBmjSS7US3WFNXZadhS8DxeX8=;
	h=To:Subject:From:Date:From;
	b=X2xTqIwQLgfoOg4J3XjwQPBCYcHn6yrfNrJlhYkIiFTgY4WZ7+wK9rPAKAbwpXSAo
	 FDEYbknAlKCLr4ckFndGgC1zKoM2Diag0oiwi8nTeWa786OHl78JlNSDZNe2qPzfGk
	 OxWSfWHweGZJ2AVwFwIDYTpZUhtNsJasCSLEaHmCrTtS7DrWlcmBpeZ9nCATx3efUW
	 fThbd7emSCCtMDUhbLvX3JxYHkIaUwoELkYyhNl/gRAteAZjwO5gaozmWxDLqSs+AB
	 OBiVe87089Onuy+UwO7UANauUe5vG3YeX09lBlPEMWLa+Nha+AQy5EQO4AM7g6ASih
	 Bvys8qAFmKYEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0E1C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913283368.9315.12374177244539041186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd7bbb556eaa293748c1c52fda5788f8575fc6b2c995545c50c0ad780af2cc2
Date: Fri, 11 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789132833
