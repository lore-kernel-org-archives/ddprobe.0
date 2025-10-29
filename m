Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327982DE71D
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761738594; cv=none; b=nMlT6qL849KZaPxpvkp6UcjAPDGYE9xihhlNFLOFJ7WpGHnvp7udgfZ+b3X0QJ6k8VwTS7e9VNcVUTwcQEciadGjW1HtSvdcjeoOShy5FNY6MjjZMPj4CoL8WjVmB9dZ9WjTU03wnqIQ4TyOJri7zdO0fsSaBn1yozqj6d8OYZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761738594; c=relaxed/simple;
	bh=wRTNs/bVFU78G6Tc41L7kpAyTBqRAkPWlXyZqF02cFU=;
	h=To:Subject:From:Message-Id:Date; b=NcKL4+/iJaoEq8W3NsAn/6mzqd5nu696RU9O5FdTxLIHB1QuS3j/QyHTm/56vnKWNiOFHmJ1a+MJ2nGVkW73ZqYUpQ5uZDzdSWwJVMGukpDT8orX2DPa4a0gbz4liac9sbfN6tvZIAu+TnPrZJV60y5I8sQ1K3ytqckSZ6LuZzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qy6vlbAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qy6vlbAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5800C4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761738593;
	bh=wRTNs/bVFU78G6Tc41L7kpAyTBqRAkPWlXyZqF02cFU=;
	h=To:Subject:From:Date:From;
	b=Qy6vlbAYzD6ksel+oZYbMY3J3wwPmFIv+fiVRS7VtOeBA739MCoFKxs7Gb/hkUrp7
	 g/IygFi9ljmj64VFa7co7Nse8fLLETf+n7NyfD+CmP5O+pPb+tiX4iBeW2ZQcnhAma
	 Gt8g7voWFyzoq9fpFvJW8EBDruSd8hyxIfWGt5bEaexdT7IC3SoHnCyhwiS/CCKswL
	 hLVQlNEnpDbTcBSyNtNhBvzFTNycVej/emR8Mhbzdr1apKOAuThWKEPeLWqN7S60+s
	 G2zy4hfXAn2DYoC/r2egUXDCNrFtAFoJHjWP6iK7G/6kh+ggFi8AgIH3dWHMHGxLNk
	 myWS8Y0FEhIrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923DFCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173859359.1072.8632573791846006314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c249c18fb2afa0e67194ac9472a79906d6671b9e108da4e312bac28ac99de33
Date: Wed, 29 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761738593
