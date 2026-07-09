Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4CE54723
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783607914; cv=none; b=MEaiKCN4ekb+rTAcROOiOaSYf/fQmCEu0p/J5fGHkeybGYdfgybdKx9W/PC0qI1txtUtp0vMsWwweJuVQTkuq2KvY7gpshgjvOCgSnlIHH/HGhCM255USeLx8mk1JYeMq6mhWsEpTJHnILRC7tL6wJdPrYCOnsi+BjNzrrdHGhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783607914; c=relaxed/simple;
	bh=qYW+vijf3fY3iIobMZ2YPKUiilcBIexWav2sDNiGz9M=;
	h=To:Subject:From:Message-Id:Date; b=Tc+nDrQE8hmn8UJW3bQtlSynOW8ipwH+PczmsMg9e4dNWA6OXD73GrE6EFrvGsUiYmZQ8gVnODoiJOHNJe4xOUxu3Dvufxw3VvfP9MP4rVoNt1IqBmYfV7vmp1gkkbdeUmma5jHJzLSblCXvFjgc6Uj8WCHNdPETV4lX6Xpp/rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIT3CFxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIT3CFxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AFFC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783607913;
	bh=qYW+vijf3fY3iIobMZ2YPKUiilcBIexWav2sDNiGz9M=;
	h=To:Subject:From:Date:From;
	b=XIT3CFxtvCOUP+ArFBb/S694jiKPexwJc2q+96tE6REwOFlaEVxLMTqsWGbJLl6JY
	 42vBRdV1hdeAuGo2yS556wIi1i81gubsSaqzx0YgKC/oGWBSAhp0PVa9/UwTlHw1PR
	 6LDFYyls29uMfFCSm6IONLEnRklAgSBh3FLovCfFciY2SwnmcqbRPVMqNlSJSf7pJ0
	 rovVcBMePHOg+ewNKQZqm1DNxYynG6hkTaWhkjbl9iuFTKuKXSB0obu2vO1JjALXha
	 yRrSmzMm1nTyFz5u1E86pB0gZUh7hxtyDCEDxL/4NVjXlpgQkRHCsgrIxAjycL+IQR
	 qHPhAjPC5WBVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E6EC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360791368.637.6843401241488681639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539c0b62f0e85c5b7932339efcfb33e08a2d59f4c05be73391ef6f837401abbb
Date: Thu, 09 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783607913
