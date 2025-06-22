Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B051F5852
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750595394; cv=none; b=YEsjngO5cPErgFA0mEAMJtLeoqDIZmIZ3Voo531+M1TzZ7OaeDqDDPnHNEYlKAxg7UmM3xcry1pk7U14aB4/Cprc3l8O0ngvy7OEGeRhUP1mwGkxikIuwfDjw2czktpzNeBDT7UtBXzhg+HWoDhUFViwgWFXZiJTG5jI5Qnd8d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750595394; c=relaxed/simple;
	bh=V2eRZZfmxhfKPUCFbCb58Ok8C+KEtDvasCDNSvMJ6Q0=;
	h=To:Subject:From:Message-Id:Date; b=i1Qpgxp4/TLyW4ZFDBNPcDPG8oT6Il6UdAPEutUI9ESjKoT61HbnADfaGeqR80YItlQDFA78gIrbw1qemYKnSBlqqpsKl2dko2MqWVijZOtkzztxUsUlCP41CA69hzxXUeNiebsv6w75whPzmtb4kJ8+JqIDeeQsAayAhTZojOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMGqgla4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMGqgla4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A286CC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750595393;
	bh=V2eRZZfmxhfKPUCFbCb58Ok8C+KEtDvasCDNSvMJ6Q0=;
	h=To:Subject:From:Date:From;
	b=VMGqgla4kHdStnFFO03FRfZfS6qdSupcuzOro9yz/3WO2hmk7A4ToyE04rLfuYOz8
	 sVi1rlG/y/CO/QSxI/f8hWrRb1Yo0AWzvnAWrB/nfL0mPzLGoTYZAUsKTqGrz8gIzR
	 HDXX/N+PHLxBo7psmy4hOoP7ZnPmXVm3gMaAKWGdJ0OjqWyf9JFA5VtpJICQ7R++lG
	 R+vBU06L+RjmlqJ0QSs5TsQYF8Zros1E/AlR3Hdv+iPk7HHaUFdKfJd+yC9lCU+Dq0
	 Ri9B//g/tauRMhuQs904mA+ys7MSfQPDPYK0AWY7PDA4BCDXO6rKb5aXF8a+owC9Lb
	 TIgSjUcRJg66g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA9C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059539358.22838.17815102723956976924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307a423b92c7fea9105e0d038b992fd36519f70e8f0463aee63981b7c5568e23
Date: Sun, 22 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750595393
