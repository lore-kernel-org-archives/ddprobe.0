Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16465214A9B
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756576794; cv=none; b=b9qyzTPUjhcLksOPCInQUgyIFsyeVeTfjRNu8UsqrN61ah8sjiXOlxXKmXQy/kVo+eVAPUJSWkDE2exCXnQ8mbiEqftppyY6QolR6Tnp6XFs5yFF/wDOnPgK8BQRtvoiAJIrM9dqmNEFlTfPi90bmMRjvATJTZ1b8yORUnlVZlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756576794; c=relaxed/simple;
	bh=Gdn+NttiM1LnuoNLox8WX1K7Fj5Ny7CTnFfE6zf8bhc=;
	h=To:Subject:From:Message-Id:Date; b=Z/BRYstXtzWsfq+d1ADD6qDHa1C61kfZNkBwBWFu5p3E60Q0uEEI0ZNwRsLPL2cI7xNY5N9FGaZOuNrOTHD7/ANgOkjYdQsh6Jis8hJMAyzc5+6Tjt131Ty1w7Q/E5Ji2tUC0HMBBdckfgq+A3wsWasCpiR9PZoKLWE+/bSu7F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vv17AM7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vv17AM7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB82C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756576793;
	bh=Gdn+NttiM1LnuoNLox8WX1K7Fj5Ny7CTnFfE6zf8bhc=;
	h=To:Subject:From:Date:From;
	b=Vv17AM7MdPPqIpelyZgd1wHsWlxe6GlmHDd9gDDmkLtfHrLn1NvVK3SUY98JKQfCs
	 ZPs0ow5T0dhVSplOiVj0cIMgNg1pGAz7ERs6Pdk16cMEWN83l28NHVbTXEK0/tP2DY
	 TrFbwja4xr73Mhk7Y5AzTV8vsRrq/sEfognXxGg2n17qQVfQ/f8Zwl0OlKg308to/1
	 dHlJU03eTJGhkC0OjusGEElqcUxx8Twj5nggxgiBK3amDsq8SI6BZLiqsNF7MMgoXZ
	 fzx3fwQ3vzwX9VWdj7nF6GoenmwsXAofi11YsxFN9rK3jPm3BN7yym2IYvUYiHb3Yb
	 BZlrgg1VuugDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E843CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657679357.9908.14503288254390047210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120880e1ae43bc54b04b9bfce9f1f24589adf1a067a0c7abc3035036856e2640
Date: Sat, 30 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756576793
