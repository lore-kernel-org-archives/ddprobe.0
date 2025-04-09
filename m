Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AFE5464E
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744171795; cv=none; b=JDI0ghxFul6eAFN1p0AKxvHMOZhGiSrFMiMcwjMBnpn25YhUnahyBJywJacpWj56Ri3s8ahn/Rj8wXRmQ/XMdrNy3JwIDTy8iIbIvj/voWnTK+QmR2e1BuLMXIC3U+LxxeXu7vjtsse9sRxJ1dVSfvF0wuIoQxpb8IflmBBnPuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744171795; c=relaxed/simple;
	bh=sekVg66/x6bWSlQ28x9OlFxda/7wfXgY+LTHqBWPVIE=;
	h=To:Subject:From:Message-Id:Date; b=LUYjnLy6bJ8HiFVucFTJUlm/1JCLxCclM8OQ9mkz6jeWsQF94CITU4DxYZfpBiMbWBG/UJSe5yYmGubMUr6AkADqT9Nf423aPohL9jl1NqYfTfASmLpyMtP538sSUTK947EDSo3asQrHzZSBgQEGr1tm0T5Y1kra0Zcf3TF4ngc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSrJe2DY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSrJe2DY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B287FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744171793;
	bh=sekVg66/x6bWSlQ28x9OlFxda/7wfXgY+LTHqBWPVIE=;
	h=To:Subject:From:Date:From;
	b=aSrJe2DYqBFYVXOaPhTQbiZfMEAyLXUJSOvcE9kH8b62wgFGpQI/FWFFWkvljoEHq
	 kiEIWamRzigvYl/FhzWENvwrjz2g66xAiulmY2HuHVGyxbH2cX6nPEnoQrmbb9w268
	 RBR7WgqkFop9Xr3qNGY7MVDOf4x2/Bs6sOCHe9iGMGJvmGKJx1hKhePkQzmLuOR5ei
	 hM6WdEmQ1e/rXksD399h0CKZgT9tEbm3TmbDWsWwcXz/rToHdsJnbeZK1uta8riW9N
	 q0ErGgSBcw7IMsCZ4m3UH0r3GhdL2wbSdYgAoPdw8ZTl3BelfzRlTSv3uLtPQNK7tg
	 XoMibBoE9fXwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEBAC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417179362.2337.15296934275139970033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dfb507ac781ad30befd5529d9047a9ce1708e1fdd3db2bcf73d2a3e91f94fd2
Date: Wed, 09 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744171793
