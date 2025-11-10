Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9A42FE07F
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762785593; cv=none; b=qENtaFH4358c4bv/D62cc/7JbqP8t2fU4dDoC4sD4RkWCKnTXDVS0s5sasMrtmQ+ZSlFbcnXb0YZMi4lcNLU3UMDVekx26B8qB98eGq3zI0rP5AzYz17Lh6+d22oRzRK3rDf5tssOx4EpcnT6Q71OjbwVagusN6/359mqLX756I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762785593; c=relaxed/simple;
	bh=g9+kWAFXqDQ2AQefxfokLCdnHuKo+AezQMTqU8LDbS4=;
	h=To:Subject:From:Message-Id:Date; b=BDGJfroIVgx55XvH2sKED0zL//+unfmZxmSv5VctiOcQM3Bc5xIKiwO5ekKkl2JTcFWwUZeUiglmfe72sWWqhZMgh0/CavsAP9eecMtnWg2T89keLLMV+SW+BLAR7PgVw7QP0gixPb3ARcdKZQs90+iH+77Ta1j6SwifbQakjkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6cepgpZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6cepgpZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA26C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762785593;
	bh=g9+kWAFXqDQ2AQefxfokLCdnHuKo+AezQMTqU8LDbS4=;
	h=To:Subject:From:Date:From;
	b=u6cepgpZS8EJdFHVKK3FBE99W7e83q6Mdq7kW+EJlZxqJa6c48I8SiSZK6nEI9BNX
	 OsTIBj7rsEF6rDm6h9zVA/sHW/hBvWpvSTuZp3R9l3oXtE9c9SbawwxklWxnyPLIKM
	 DOAv6dunREGIB5gv0i0G+pRJJdk2Bc1hi9h4/h8mNnFlZoETRvAj7auPQyicx/oFHh
	 vwoulnaqAJGlBBC9lXL4TlD+Mc+KEb8OOTIeLGRPJ2INQq1f5XkNT4cpQiQbFCSXJc
	 koiurHEhhWP4oXJalP10/qbkmwop1XgZVzyaa+mCqTSHMylB+ZtnQRDule5rB/Sj+2
	 Tsy9PIosPuT6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD18CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278559358.32127.1176224717578209184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a168ea9c238651800f91a687d7d0c2f410947fc8fe6746785bc665ee750725
Date: Mon, 10 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762785593
