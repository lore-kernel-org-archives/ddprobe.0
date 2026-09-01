Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A821C84A2
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788263434; cv=none; b=LZVNFALe2Ab4bEwHAst5HKaZltN+x3v0cwi6nQM4wBvr4PgfUlvPzh4wScIitN3qrJ3q8KGtV0HgtIFxISvrgqHcgD9mmSsRcDoFc15Jv4ArK4VZ/RnMjdUO2+jDoj2rdVbf/CDD18HqrEadc1iiyAtz54Qy8M3SNoZNzbmt4fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788263434; c=relaxed/simple;
	bh=yhNNzPqhBdTTkvux/wNxHydVR0DgUfnHBPHZFB1CZUI=;
	h=To:Subject:From:Message-Id:Date; b=BInK4fdlZ2opT5CQCjjilQ+7jxA3qX4fAbbDhc1QEWbkMHo1p0dX4D+VVUfDFC4Bfr/NI4Zkl9Z0ixJOMoHEaGR/3ksmj2z63bgBHGnmmFUvdnmP+tf3/35FtRLtcRY5TRqFx3aJZghyU6ihWQKazeUy8DSn6xmoaXWmMsOFB54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUdrdr+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUdrdr+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F1CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788263433;
	bh=yhNNzPqhBdTTkvux/wNxHydVR0DgUfnHBPHZFB1CZUI=;
	h=To:Subject:From:Date:From;
	b=NUdrdr+9raLX0d7XSHaZBZw7mF8+mFf0ok9CU2IYNSvLWQyukk1U/fLkJDfW2bE9O
	 lcnB5kSWeC0uCfAVBxopayhUx4Smlm65lYfLCCq+ywLQsHx0wYWU4pOkGKKAveaclv
	 0LnB605bLiPKd3I2zgbTuDhqAXSpOEW3/P43XCFJ1rRV7aSdt689THt8ZLQB1QaosV
	 YcIALoiJ7Sp4qp0gmtDyD35yNY1Omq0ARdfjWwZcGbePzebGRo8Oyhz6oY2JPmU4Qn
	 tsTsFEbyP8pEsjF2aDl/EVeeu3TBjF8FMt8fOF6T78VBYmLu55WoVs+VVpXpltgzDz
	 tYy0OuikWUROA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4418C624CF
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826343369.27316.16440009498433442548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0f4c2e5eee1d92ee0ec9514967df27923470c8b8b73496babc180b12280c70
Date: Tue, 01 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788263433
