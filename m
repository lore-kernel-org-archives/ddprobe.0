Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2652D24B2F
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725749754; cv=none; b=fIKn5XJNKVf0WNhjDnGbwZ48pdL8/RWytTP+h22+9bfsX6Dkeu3rgP66koZqNNC0W3jxmNpJl4dJkoTaENTHwHd4BPZq7/yQDOAHK9px17zQwn2Ph1YWZlJMJ8briH805YM97bFqaMlLfFQ2j57+/XBMTxWNLGH9pUvb2chO3Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725749754; c=relaxed/simple;
	bh=Wgnm4mqxsj65Y68ab9ipKslHFUGxDrpKcyWCLNP7syI=;
	h=To:Subject:From:Message-Id:Date; b=FwAZSMQbYHvq/jS2bin78ETTZyszi1WXAz4me1hZRgA1KKxYtp8++dyQDt4zegQUc7sF/fzBp7sCv7o9ae6H2I2TY1E5C3KrfK/zVzR6EDFh1Hbyqm6PqQMR63hftTmeEor1llOuhXGx976l/Ua7aMP3QMXdbt9q0PIJ9OaCB3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkEf6+ga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkEf6+ga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D7CC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725749753;
	bh=Wgnm4mqxsj65Y68ab9ipKslHFUGxDrpKcyWCLNP7syI=;
	h=To:Subject:From:Date:From;
	b=GkEf6+ga/8MGw+oWmFjE03EF/es5IEsJ8fx0w0NuSxWBN0B+MsILH80il7atOehyk
	 Xk1R/Mq5YS2rznZ2T6UgBocsMiu4zXyxOU3iazITD4wnE6mUxtPQdt4hAJS/OHC+QJ
	 73yxlo4i16JWtlgRFmvLlAA3+qQOvFgHGMQmRs+qhkMK6DmHXOVLx84ZDEMMDZD9/2
	 pdyUWA7ILpqxO/w3I0ijPgI6xghXsIdYkVbHLtfZZT544zTxUjb87SWztpWP5AAqTf
	 RTRt0BySN0ym3WK+L4CBTHs+vu3F84ZukoxPN5rpwmn7Jd4Hd48lRKcIRATHn27cB2
	 M0IMLpdW3x71A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E10ECE576
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172574975357.7167.3596964813754688011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0b05ad103113e9e7df68f92a6ffea5db3c986968b0f1c8dbd91fba6bf86422
Date: Sat, 07 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725749753
