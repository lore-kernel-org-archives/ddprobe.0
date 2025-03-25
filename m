Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587621C6FEC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742878794; cv=none; b=EihslNB98+N6/P1YvBbxj6baazso0QFF5KR+2AE5f1r8hfvGVgDii2ad0uKWBQNJoPSB2VSFP8XQbH62IZOiItXeStCDAxGWyN60k2S8et1sPQWNgvK9pDJ4bbgAv8grS/hYIbYLYBRn9CqK7r9ciV+86SZSwTen3vatNVLP0PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742878794; c=relaxed/simple;
	bh=C76QcfGywPDWFPka36+ob/BYdcqypKUiwmpcQuVU478=;
	h=To:Subject:From:Message-Id:Date; b=Dxt5ntuAuT+01o4Zirk8G0FBRKb970b6kx8mn2XxVLV8EaVXRLB6X0OkOw0B+X/P3L1ahDDfNhbMM7z4PYtDMdY7bFDyOh1SGq9H7Zf1olBCKBuq0fPW2NbuOew/KjaUqpMb0Ynur/h9Z5fnkOK1DeVKkQjt9leePtnHhzPXg4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJZIdftI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJZIdftI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC847C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742878793;
	bh=C76QcfGywPDWFPka36+ob/BYdcqypKUiwmpcQuVU478=;
	h=To:Subject:From:Date:From;
	b=hJZIdftIZ9Eu7UBsaVhSUBu3dN5DSrIcHP9adbYNGBBuoJpm8XtyYKBItwnZAGdLJ
	 wb3e4TdLvG8lCa2me2pTf0Oqewg303qGdUs2HoNweJ1AJ29e3pUp6n5Y+7MkTB3kMS
	 KjpishHIqSZqj84cC7TkL1bBJJNODwKaBWQWExHC5VlYNZWlXXI+nkERTHkl41IYv2
	 Aqep1oiI0zYxePcpjfcf95klarmb/Sn02bJbnFHPuXcvpapdTxumLSadlQBDIlm6Vz
	 /1NlBwQgzU4hzCwrTynYgtC5ZlLgvg1lE2Hqw1KJcE6g07cgGKPDzVHZoIC4iXuYJG
	 efFy7VHYLG62A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD156C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174287879366.22548.10589609799785260105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a590d345d31cd42e0658f914145d5071ab73efe2c181dde4cb6e5faccdf961
Date: Tue, 25 Mar 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742878793
