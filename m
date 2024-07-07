Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DA926AC1
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720366583; cv=none; b=ImPknQle1h54tp1OUzhnaRj7HoqYw1Ft/EeNSi1B1/ghsZGrmA50DU1D+FMssSUpJI5idHSTFe0hBdpnDc8sL+wLZHymYdkYLnK4ArppRH4SwIX/Fy24s4F8523vIQxYtyrrxvmmLETaY514Dwj2XhFoO1t3LA6Q0oUJSxoTIZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720366583; c=relaxed/simple;
	bh=Iqb5ZIbO2GIhUQyHryoTOUVt9EgUI1HMwqIBCJlEhpE=;
	h=To:Subject:From:Message-Id:Date; b=Aeh7P15H9veEHojKI4bjT5unZuRQ5tfY1NZLWTzims5zE0s30jqmuOMi+CUQiIaXX43IshU/WiXBzTbYeaNJ3AAIWistoEymxhBYkO44O1Hm3fPN2Ul1chgX12p5Kj4OpQOiTDraCgDVDeKufeWJ/N4SaR4mfWQd42tXA3B5CKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzVnThkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzVnThkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3521C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720366582;
	bh=Iqb5ZIbO2GIhUQyHryoTOUVt9EgUI1HMwqIBCJlEhpE=;
	h=To:Subject:From:Date:From;
	b=bzVnThkmQ3k4wk7PoGE3KEOHhhdLaaaAATbi03TbgXxJITnabsIHYtWvXN22YZ37b
	 INPCMbuld03o2+KxhYq7ZqrVaAyzbmkrLIybozxrZYxLaR3kqEj/LnSwN5WUPh7IuJ
	 QY4n8KtC/+vahVapQDjxGlM+gLNzIx+fTcVzDQ39puPr/AaTxSdUj/jAHJiugtG6S9
	 HEhJvQNRA7iDwET/+UyCsgoM8ntjFzMEE3vJhbn+jw/mMniF4EbGolJgERddcL2Z5H
	 9NfX/A+z8MOQzwfa0BWDtu55hXgvlu7rRx5XAsIZErBlI/5QN1dXhCl8BRvEF2rMaO
	 JZVT5guPqED/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E04C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036658277.11551.1401339934198477516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2c2a8abccbf57f6e227b0e08be19dd294592dc10ec637634bb5cbd9f82678d
Date: Sun, 07 Jul 2024 15:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720366582
