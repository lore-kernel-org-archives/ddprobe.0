Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47049364937
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775616934; cv=none; b=B+QsuhQ4lG6Q7jPu1PQSWkpvm/gpnpjvXQcv8osfYhME1zhExank+Oga1rd5N++KDxsHjwCvAccXVvvWYDMNYWUujkAdzFp/UVNRGTft/lQObClL02Fo4bfHUAy+bJwSqJ+/HSUMljE43n+q+dw8Fl9ndDU0lD+sO9d+IDQgKSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775616934; c=relaxed/simple;
	bh=hOR4flaGx2ySUJFYdP9dnSJti1nG4ksybtfUUFwohDo=;
	h=To:Subject:From:Message-Id:Date; b=AVjW2kz9UdlZk2w6gmv2tk8TgtnWYPF8AlgTBQfOBu/EhfW5JxwfwhMXpBBHya8xswaSjDX+JrR//MYkNrvPfUFqpH1jqf/Qc/+NlVzFDOSSfhbkUijZoa7SqT0M7jE64xYH8x+WlivlKS4c0Tnbe3eiVBbvE77y87U2uwB5bAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTa7lvF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTa7lvF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D566DC116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775616933;
	bh=hOR4flaGx2ySUJFYdP9dnSJti1nG4ksybtfUUFwohDo=;
	h=To:Subject:From:Date:From;
	b=aTa7lvF9PGENobenjbfJgxqitlrWRwsod3hireRWK/WEROEJnH70hMfUKhRhK27FV
	 pmlKNUifaiiUyLgsVnK1gb6bpZOKOxIP9uP/m2iqBOxL6xkJMDsJct6F2s8gABzpSz
	 u35VFfvtO33E/T/+kuoOk0gkSk9J4El4jSoVDMmoRWiKidXXfPFxWuOOv+74GGfJGA
	 kdjBQ23O9PKhQg1eeaCoI28hYrl1K1NC5qmJtFeOAAn9EL1Olln3/lNLOqcjawYBcy
	 2S0nbfxuNmwiDOMjZMyRBCcRgNVyv2gZCrvpO5XvLf6yOKsixzLeKe0CGyCxqpHPL1
	 waqeig8FYSt8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED5FFF513A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561693377.19609.14810446432681214824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7fedaa9be58b3a88918300fd04649cf3606fd12a630dbc0e623eb427847323
Date: Wed, 08 Apr 2026 02:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775616933
