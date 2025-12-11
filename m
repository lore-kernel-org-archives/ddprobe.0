Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ABC20A5C4
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765419174; cv=none; b=Y23p4KLEzKhB2XW4bKbGDfwIqXnJjojDpp4zzaWe19Wq5R7uvzYzT16Tk3qc1Zw9QVTeQ/k6BWd0OuP+E7xVSPS4wEWmIzT7hr8VsrDFyvpw1NvzWh9mXQT0hFCrDP0jBZmA95rgb9QY06bwUrc2CvTOxvpHAsVmN6yweitKBAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765419174; c=relaxed/simple;
	bh=IEPe5HEo9eTwIFC+gRSEpDmDj1VmyPIbEIsX8iKvE2U=;
	h=To:Subject:From:Message-Id:Date; b=sx0gO6kU2K871dSlUMT1/Ymr07ckI56HIQkZFlK/2xSqAYQVy5BH3LfHC8Ogk4FcrsfXSLMa6fFPw+9cW3ZqFIE/Uwg/ka5Oa2T03RZJfK4w5PaTPZ8bOh6gZPYKpwgSbOscFKtX5SzFobWprGR3iKd5nQpQrJbzKFm6LIm0VPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUHKPpsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUHKPpsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF56C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765419173;
	bh=IEPe5HEo9eTwIFC+gRSEpDmDj1VmyPIbEIsX8iKvE2U=;
	h=To:Subject:From:Date:From;
	b=hUHKPpswM3ueH8E1z9HGr8t8EK/2/hHrZQ8BaypXkMwGOWO2oc38rJltunVSJiPI9
	 Phc4IcufqQru22f/Hjo3GSwt+8CMGAeVzK5aaL0HDCmJq5ghw2Eu7qPIRdFhkmZTpU
	 JLgHTlSCWwfw8/SBt6d4h/vR0kUS5pykJFCfeATIizA5oHCPAjl/fG01HwfX4gl+25
	 WB7DaU65N309tQRMx6ps08JBsGutapltRLyYvf8tiGUmRJQGl1bYwYzLeMRtlQGPTT
	 X5PbDzgck4WYpNNWmNG82PtMnsXKctJLEHunPja/6YoNb0RmKhPuOigMU3+F0cdt0Z
	 GoTxWTPoez9rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9984BD3E785
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541917359.14784.2623640242220139966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97bed87e1a8248f4b5b5492e60da73e53fa105f2a33684ab491a9c71d21201b1
Date: Thu, 11 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765419173
