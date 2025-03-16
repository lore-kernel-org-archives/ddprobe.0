Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EAE2E3373
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742115595; cv=none; b=amWSKEcATAVgZv7odjipWbEUuP3/Zdj8RZO4tk18RvU0vAniVGFpCiIrax2fXnPpz+RDbgPbyAsVLZTfaKfduK1rKD+LPc6K4f/ZFQ4NbmByqLLcrLTreJyAPwg1fonHY1md6D46yA4JhUc5I1NMoLh1AQku1tAV7iPLjiO5dkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742115595; c=relaxed/simple;
	bh=ajTBVhc+Ysi/jJrEZf1eUSSK1JWdZzCnkmWLoHIFnZY=;
	h=To:Subject:From:Message-Id:Date; b=jkem7LDWApJtt8ndhGVz9f7EWq6pZ68klAEDN0V/Tnz3O8MGndhMq/KyCt+4FIChjIWkj1Z0ezm5VBJJBeXUeSo4Ez3vUXBb78JQzNWLUt9VpK+u+qG8IA0707Dfcr1rEgaUb2ByRQi7eaRfhD3msdyqZfLC/XIBiGdcnoFb850=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjtmKZq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjtmKZq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CAFC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742115593;
	bh=ajTBVhc+Ysi/jJrEZf1eUSSK1JWdZzCnkmWLoHIFnZY=;
	h=To:Subject:From:Date:From;
	b=rjtmKZq1qHOqnzoAYaFAHNrMQli5wBeaFlF+ci0kl+HqQ+07ImDwfh3H3Adw/63mZ
	 barLSsGnhhBpAEnmfCIYgAkx0WPEl1f3ZwPfhavoBxzDbsNbkSJpsCjFirH09KXagX
	 ZbHp7AUv2qkWS80lRXDYG9sSiLkB89c8lDpx8+PmjaozeNyRwzFDzLgKj5IHFgyrm3
	 wp/c5AYmv6aqQtvQQ+qgNF5wPul6ppS5dQAufOwGK8h5X5/+u3WmUMv+A5kLY4mwzG
	 HpLns8ULREs/jy4vmUOv4P1VNfQe8Lk5J2KfGpSV+xN5KJbGSNpC8mIeF6UBnnfBYQ
	 eLfmxj8gtUJMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB7BC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174211559361.4586.12497425105709364868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4787c2a4e178a9e0db63b26b170342493a183c35de23c5d5eb76dc897ed91c8d
Date: Sun, 16 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742115593
