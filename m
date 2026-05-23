Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCFC175A72
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779522154; cv=none; b=cHg6Nwsl9XAVm3UDyS9CpPed4KcXRPqnG6IC5UPSj3uODvWa//deDG6XdtAPsIEph1e6T2CLgEAFfSzN4HuvxUZme8DLpHlvyTiKnGXqfRta05/ZVB+3YX/YsrRv6YfaHjtOedOJz6sv+fBcq2tsTk2IBEFb/n63WRbfTyCVqz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779522154; c=relaxed/simple;
	bh=9ZG3y/i7OrAvC5PXSyBhX/ZckrAAbglbx82cDRRhLLM=;
	h=To:Subject:From:Message-Id:Date; b=W78Mg0HUsCbWBMLMale464OZnNI9E2SGj5BHntK1ooPcdumZ7e1sSsM6YPIoqzwS9xAPUgiYJS/iD9S8f434QoKMYC4DRxRromGuhT5NItdE8N5AJBSyE+fIMXtiT+UWURaWMVA6I6Ga4uG8JN89TxoLfXfk2/1Ht7sr71j3Xak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORWWe94d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORWWe94d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3EFC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779522153;
	bh=9ZG3y/i7OrAvC5PXSyBhX/ZckrAAbglbx82cDRRhLLM=;
	h=To:Subject:From:Date:From;
	b=ORWWe94dZdKvW8gdQgtX6FSWNOJuKqW87/1VbxcJAt5WgN2iBmutIZ4zFvNVMsRtw
	 tfvqZogTBfu5Gh8QHFGiaqhjmJWKKJg4l213/kl+Xe3JWeCU1IGjFmRK1TTmvNt7ay
	 bB87sN1b31g2mJ8DzNl6znChP1MfUckc/tThRt5BrZBIAvTgEIwwF6xGEskzyHkJF1
	 trVyc6EAjVP0im+PDPa/J/AQbTFiAPujVaUzfQ/0wstGY0mCV6CdL+vxl88joItuh4
	 eo19CuRhMVGeeUTWynyaTnDl8K83OLfoEToaWfvmbZW9ho5tLr5QSc2eVXbuapR5gx
	 +OmaNNUGMXO1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EBCCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952215368.27037.16165247341442515304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111ef20e132187b6eeb5bb14964a894aa7b84eb635599ee579ecb19422cc8051
Date: Sat, 23 May 2026 07:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779522153
