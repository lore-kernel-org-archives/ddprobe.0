Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5497E6FB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719977123; cv=none; b=LcDDmXG3A4TvTD/imzVcrMVk5LBOoHAmEx7dQ13j32tw96467mCvXO/MIefEUSU7UTOUKoJ17481kLSNu9OYyLkDbaZ5QPCmbs+m2sCTSpuIZ/vj98U40Mwv0NuF1DHjqhUiuV0H8rsGXQuuKuNBREKPR498cBWtlA5Ij0zo3gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719977123; c=relaxed/simple;
	bh=aVTzL2X4rceejAmQ8ZEemGS82Wyux6POqpwkoj92cVg=;
	h=To:Subject:From:Message-Id:Date; b=tZtwizUG1eIJ0GuoHI/P0OnMxzPodGfKowVWF33G4amUOjKI6xbhNi8x1ngQ8S8mrW+sG2jL0IrwqorKOAwbZVJpsuK5GcmgKtK6aXV1ukz6jsew4HHq4/CrhklMOhbfBujaLE9FMYqm2OMDnNO8ldOZguNE+ZU4Ac/Lr6dsgsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkTo7Dds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkTo7Dds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBD4C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719977122;
	bh=aVTzL2X4rceejAmQ8ZEemGS82Wyux6POqpwkoj92cVg=;
	h=To:Subject:From:Date:From;
	b=ZkTo7Dds8llMn9C2a7rb8Ct+K2lWOAhfxwLK3r1JL1hmqNLAlc0M51QeFp+1ad9D9
	 iCXWXl45KzZCIndNEwVYJlC5xGqktgUnxK6rt8k2iMLKDKU7vdYlC8zqC3YV1ZKSPM
	 +h+0ppK+mG2XsQknVN3rR5v7zLwEYK7Lsitr8wnEwfHGp4emrmdZRrzNmsTUj2xJ1a
	 hY91eAgb09ubR0P/QRhK9aX8sP/WdFlQDOVpZrIN/jOWxFTaO0+K+HAq6jiSIKIAji
	 B7DD7WQVnEOuTyliajqqJ1VjKL9CaasQR8P+hJfkuKBXnIsWxfu1nnCb0sxotorAS+
	 gYdup60SAwVmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9B68C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997712281.17419.3002962288202338330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19adfdc94ff50dd15a80387f8e4f93c7381dc85632c4a6e1e931e6525e0c3e28
Date: Wed, 03 Jul 2024 03:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719977122
