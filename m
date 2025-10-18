Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2003523C513
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760762394; cv=none; b=MF/1piTX3hCFhAyQytVibI7sVY/A9eZA5omtpGxPG2oFqRUigXgfqKhoKAgtELSVHLvhLH0PJagcnflrLRwHbhd4d8WTVR5W27RFl4ogFq7JG2eNQq5kaJLqgqXowI8MqxCRnQsjhGh7Nwva9U3p48hYD1xjsYBjikHWG3LcAPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760762394; c=relaxed/simple;
	bh=nTRzhGW+k7NSdRW9dXC2CYmF2BSRUKDto3LJOMISDxY=;
	h=To:Subject:From:Message-Id:Date; b=uVsPCGJbr+j5D9ffnpGHNXAbfwhQYsmm7AaTVxc2gQSBcVyzoxymXtky0sLf+id71PFNMrMJmLbuAI4WCDlA8dim8DZTlr2SaMq1bRqWVGYZEvL9KO+HtmegVCp6b6HVyvmCN4INLNh+hu14w3LElgCp/AXTXZ+Uqo88F/D1o+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+gWxLtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+gWxLtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E5DC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760762393;
	bh=nTRzhGW+k7NSdRW9dXC2CYmF2BSRUKDto3LJOMISDxY=;
	h=To:Subject:From:Date:From;
	b=M+gWxLtJDpWIn+13g7cwSy7+MwTCxUWvUKfYmfyASM+tdUDEwcNLlRNwq1fZxqres
	 fTIiLFJQdUw6Ov5ubaOHEuZhH+8OGMq0KS1brHtlEx3TjM/Cc3cvVkBQslAL7dRdcI
	 ZCCoXJD/nrgaH8XZehqCZ0UHjpPkxT+4XzLANp5CFaPrY/AZmmOdz15Yf8rChaQZgE
	 WDynyIpVIMpFuViX0s5PGmg3YxWKQnEeXOpgTl620DRvPPR2+ngZuFB5tRcHlyBGin
	 hp5wTUe7Dg+wR5rzhC4fv5WgHg9XYQ7AkUfGfnwlWxlEhgpjBGJswH1ImtsTJXY+c9
	 PcAOdzViYvu/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A70CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076239358.3283.4300473830199482476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f4da9c3dd9748f4458353ba6b0b7b5dfb35cec84f842532de8a567435f0a98
Date: Sat, 18 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760762393
