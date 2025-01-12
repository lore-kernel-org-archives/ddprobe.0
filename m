Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B08D25763
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736674554; cv=none; b=ruCxD7muy+9ZYglCWai5MrO6nIsKhmoMKp2QG2XnAwt1rPstn9v4jnLjj+bcKKgMKnYWpjYK6yy1OAW9EZa9bHGKuFUx8DGLKiYEQs8+0mlRCN1aw3MP9acg88xDmtDkn43coMF1RXFP4q5te0vd1v2tVxac9aA3sghWfF9jZiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736674554; c=relaxed/simple;
	bh=6c8rUF/XdByupEQCsBmJSPOK+gqvgQ1BHNqHh5dlFlY=;
	h=To:Subject:From:Message-Id:Date; b=KDWW7tcBfxvrSAJzKOBCEa6GtpXajvWE6oY1CwWJq1aeJ/o9OiJFKd1n0g9vUf4PIMrK1dMZao5OKaE9DUenVotpbUKr1bmiJxGkjq9piU9T2pmPjYdA9z+2ANm7ATXCFgJ+PmSaG7DJnfTMkbLshRXIyVXFYmXk2MZ6LtbRewI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hzp+oaom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hzp+oaom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D72C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736674553;
	bh=6c8rUF/XdByupEQCsBmJSPOK+gqvgQ1BHNqHh5dlFlY=;
	h=To:Subject:From:Date:From;
	b=Hzp+oaomr3koxMwgRVBCUd/KlYE+LyDKpCQW9FGjZUR9GC3LWHkUS8JS5e72f6jYg
	 6EPTZGId5cZbC1lLiQ+7mmzNk8nkNZ1pP3U9t2+WmyWvRN61+bdaNy7z48bqiCPXRq
	 ChzPATxxwCNG6K+4mS1GonCp20p5Uyf/VLMYN0SWlB7rwBifacIvP8AfuWsIpx355B
	 jUj/RGiMkYeNbAIpz7Gc3ixXBTd+88ij5S8F+Bu2/Bqe4wwC7JocjC2nakCavVY7H9
	 6C7IpCWLk4qNpjkfxFr4/pN8cB/dZ2kyEQD7MCeOiy3LlVeAmm9lYyRulccjISB0Jl
	 F8Dsadd1sPpQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9775DE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667455359.24878.11090517399459736273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7152e426eef0d1c4d5dc5c836946f5129897b4e81d4dd9ebaed036f271f45e20
Date: Sun, 12 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736674553
