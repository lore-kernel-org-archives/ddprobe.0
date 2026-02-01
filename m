Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167551B6527
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769934234; cv=none; b=SsxMb69KvF24KnRTmXPIRDWJOnONl4AYLSn6sTporYABqlsIpYTr5DYG7PB48+ASbaDkYQa9wb0he387KL/QWba51rNLHVCgc+GG1Hq6h/+KfJLFZkOkANu1Cb9litKOpMhkETXIpAKA/yMYF+bPGarZd9Qjti/l9mPE0X0T2FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769934234; c=relaxed/simple;
	bh=7zgFeenJpxaz0RTs29cXEPwCj781kNk8vmTJk2GDP5M=;
	h=To:Subject:From:Message-Id:Date; b=ecEEmRn2IpHt9nNwv8lnB8DMRfymFBGwIyrAfg4X9nd5dppuemQ3siicREV1v/jWGLs5PNr84IRwAE/wh7dP1el8CW3YuK4VoKp1i2NcwAljnCzUaCp4H++IjMgK3RIK/OsRya6hB+zM468kpixHl8Tk1jkgt+EhfMfH8BkZDwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MycUOjjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MycUOjjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769934233;
	bh=7zgFeenJpxaz0RTs29cXEPwCj781kNk8vmTJk2GDP5M=;
	h=To:Subject:From:Date:From;
	b=MycUOjjLFkUDdm3JRHBgtLc7koO6Ukl1bKdwPklVnwSoKWQiPxlHXo5wDTbksAUeg
	 vKNROn4AdCyainUuKyEnxNqwy4prk+/A9B9dWsK4mZWC5JTZmUjpwZtxSBMGCydVFK
	 jlBCqcEEYNLckgmlNNTeBv03pSshkG7GgHeKupw3Vs2s3Ts3uHPETTLrnIB2eYk6XS
	 CYSisegCM8ROPHNfnwXB4N0ZkM7X8DVNTTauj32kJMTJeUfou7xjTjipP7KrwDWlo+
	 3SYo1Hm8/UfCb2/ElI5/Tzx7K++LTuJ1YSnJoJB3UwAUl+d0nCbn6YhCYgcVLrikuP
	 KjHhL2E+I0SHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD4E7C6FC
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993423357.24186.8437205923075215996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de2127bc5b6e0a794ba4b4b4415bbb33026d91f06808a06efebe761752cc9f3
Date: Sun, 01 Feb 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769934233
