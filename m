Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EC3175A76
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774071894; cv=none; b=B35F2lZNI900omvyXLs0odM//yaxKzVekdOpL/yg6PbUPGu3oORA6nI2W5av6qTkxD72EIUxejxmUdoBS+0rnVMfXEiCm8npJA0l3CIyzFWQ3BBifEaUm2vTJICUH90Qqp6Dk6njrwIMV3M8Y0eypyHSoOGrqzArkNgJxrlipvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774071894; c=relaxed/simple;
	bh=xbUCLX/gyekHVP7kisleAYN6qZfa1wo1FXr1f5oL3z4=;
	h=To:Subject:From:Message-Id:Date; b=mXHOwqRNnFp3fCuHfz6/F+1k96gQY23WtoJ4d5HZD836ahk/hR2xxB++3cho0wLfaELMKa8w989YUOsdza5r4tW/3/7mHRzNo9L9kmhi/u45NTAiMOibjYav4JjkMSMids4vf0jOT6TnpJroYi9Niq9Cox8VFSAHpmXZ6aMLwKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoEiHX6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoEiHX6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A504CC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774071893;
	bh=xbUCLX/gyekHVP7kisleAYN6qZfa1wo1FXr1f5oL3z4=;
	h=To:Subject:From:Date:From;
	b=UoEiHX6zGKkIwxZGlI+cTqbfwj/Qjt26lHi58/3wsjakbvh1fW16FtFqwO1F3LutT
	 gyOUbDC2QJ5+jkX9bs6s3nDB5WgHn3J79GdZxTx/XnLU8TZPMqm0m4udx4/r0d5VoY
	 MmahGORrCZj1QkLlqRZ9TI0dBlVuMP+i2cvEXwIMMp92AifDV93ZCDn8wVumTK/qO8
	 1dpX1xfbH2pkV88YGkwoSUmkaxvXEjFMev4N5jIEI9BOlsHEDpvJeczU3+9gNiw6/T
	 M/7So3CCode79Nktue3gEHiKfamXP6GPfpJIhv0QmiJarvIBdC6sKpD+VffBbYdCUe
	 n0VYoCUsRU7Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA21093170
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407189357.12045.7210107227300548927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9661c9dde3dd7520c1c00402b041ca744eca4fc2a81a52e327dba3f3989c9a35
Date: Sat, 21 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774071893
