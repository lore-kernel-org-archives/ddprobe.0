Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3233C149C4D
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744835994; cv=none; b=IfSJ3YFLSc9EPp/DahW2HuhKg3MgoI70U4B94zaZ4QQVlbnCnQfoqLH3M4/VLIN5Afj2CqIRITg2600jRY6KHsGr8OQUKtH/i4Go6K1iHtq32UFbSmJsTXG64NqnpStPh53Y4T9GS45UPEEw9oPrkCFqqfDA5swgnOJdV0yfT14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744835994; c=relaxed/simple;
	bh=cIo0nmcpzpfc6+y9tjqJwCh5N5XEsxgk8NxMVOP6xb8=;
	h=To:Subject:From:Message-Id:Date; b=u0hLyxTwjSRVKgbghvaUorForzfAv6K8FCt2pSXPJcfW0dU/7EcuoeUbVPf1s4wdWnBtqhZKCF4M0gtqo+5QLkm8IR6U7BcovDkaLLw9ueGcPxDhHNjevsJD7Cws7W/8V0tJFDh0sTgD1RsU1PEUtu3ZIebFGsmbYdx4UPGIia0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vObrpT/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vObrpT/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A218FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744835993;
	bh=cIo0nmcpzpfc6+y9tjqJwCh5N5XEsxgk8NxMVOP6xb8=;
	h=To:Subject:From:Date:From;
	b=vObrpT/9VutuDMMuSjR8TWBf1e9aCWr0R9q9MtdQh0v6nyUdQG1z/q5XrbDAiH6Zw
	 tIkTPPbK6mt/+MkugOH5MTI6GaleV1Kv4WbPIot13eDahrSLelZ1Eso2qdk9jpaYHV
	 Bc70jOgu4IYNnVhh7dxCVlpo9FOnH9ESlW10aZRkz21+2CgkuLAciy8CrgikJSIrHR
	 Vci8SNeZSnSKNh1tS0rr5bJOUJlwNEgv94utC6YxVmdThPKLOQ4ph4pXFBP+jGvwi6
	 gXWraxQ7vQsTjMhv4pYzN6lW1ACVQPez6OTHx2GRcETx9qYoFABpXEyax82pJIBvj2
	 2Wxgtgqpuo7aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93200C369C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483599358.8238.16577139791676254094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b2127a7f17d1663b48e16c3e54594355575d42037387d242a9ae03d6afa073
Date: Wed, 16 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744835993
