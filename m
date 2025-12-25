Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4516614AD20
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766661834; cv=none; b=MXq47WTgBEvRVhSPaPbuVT885gtVly12/xHhgUWkFLPo5JKByMw018Scb8HVQ2Vw40WkOwTCl+Oth3CBPCOSnoGe0djMi5sBdQ55L29DnUSbnLCfG8J7ZhLsZU1hja0nm3Ucslojv39LvyQ5mM/N8b8XZkPDlctUO8e8hE34K6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766661834; c=relaxed/simple;
	bh=KTJK269pCtyZfUGhig7AZJrBGG+Lh89l9hA2M0yl22s=;
	h=To:Subject:From:Message-Id:Date; b=hq+oXCQ/wnJRVrUv8aXConYDfFhLnS6GvnChumVgu3wy4azT6fJhqpuGO+bC9560uWC3zw1U5pFzsVVQAVWztaJ9LwGzeLfqPCiIJDumD05fVVvi2b4NO1LjJ3shL6AoE0IRu3L+kCK76GWbiUL2zek3U50HC0lTOBjfJu8eq/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFWfjRwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFWfjRwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E58C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766661833;
	bh=KTJK269pCtyZfUGhig7AZJrBGG+Lh89l9hA2M0yl22s=;
	h=To:Subject:From:Date:From;
	b=KFWfjRwkC8kJ0r95Sy8dkvAD9DmZJomao2xymeEtq2rkQdCNCcrut24FwLLc66aNU
	 7fmRWcC3wm6n+nqDqRIW6FiKebkaIgOH/xA/bW+keTpeiZgq1fpGs6iTxTEpdVnO69
	 mkojxMSgQdqKc8lKo4mPPmEzjBfF9BMR+4e6BX7wA3nM2/W0ZB7SVAG+t4REUs9pJy
	 MbZ6T25G1XEN2UaOU0NXcp4Glj6/Ibtfq3NGTcpR3HcWK5zHTAHad0msykI0GiUSfz
	 pOknfowjg9M/UuwI+U7tU+LvUkBkvnmPM60nrg2QX4EoXIQOM2NWH92FPrrQXALV8O
	 YfDwt1TppeGSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951D4E7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666183358.3467.15933668842919870055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17457719fb3ac91b0706166ec7d07ec146126a7e3175a91c9661407312a05b27
Date: Thu, 25 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766661833
