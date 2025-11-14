Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA3A2ED86F
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763148594; cv=none; b=n7wac1muZwJRNelGXuTs8CIIiJZ8qV0V1sSs8AEZ8LJvJWsnp30b4peHfthee5FlB+zvUmWAZOxWD+HchRX0Au15taSAB1SCImQeTyLF+buimr3yw4uHa2aev168YUUVjigPyz7iOEAzOSImN4wyEBQW3Pj6nHfpBwr1CrMTrC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763148594; c=relaxed/simple;
	bh=zb9tfwqOV6jTm7Tr8ky/Wb6E6JYNPf98Q3AKKfQpb1o=;
	h=To:Subject:From:Message-Id:Date; b=MdThqJhEAK0zNe13vE+hXIM6d0iaYmTf/PtESasFx+RelaDpbuhDUzutcoqVvsBVa5Bpdqw1R7Fn/QHNHYYD0nuyKt2eVeNFUYJ/OjW1EQ7L363zufeX+KLsmCOapZKDcPiCQsLOAhQa5261ehgoCtnBdPHEFyD5Q8Aw1IIu43o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLXIiX7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLXIiX7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26B2C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763148593;
	bh=zb9tfwqOV6jTm7Tr8ky/Wb6E6JYNPf98Q3AKKfQpb1o=;
	h=To:Subject:From:Date:From;
	b=sLXIiX7PMP6o8QvOJbDPp1ErgEYXVi9WzZPhZMlW0ix8lIPB7aKhwJVYMmS/GIVaN
	 ocsKXWf4966RUxORgWlfkMjeeqTnPWxviw0vZAQtetDV7SIHYpcWjH4SKEd3NPCZKq
	 Ye3T6FVnBShwY/k3CpqQYPoexMzbtXyq9mLE06rJO9Arl02kAsaeHNbTtGiR6IVOTE
	 S3xN3rigtHnHeN/mzsjjKMBXRrN0DJ+6bxFjGhPprcgPik4ewbllGQW8AyGRBjx/fP
	 eXpxWjFv+V+ciieHrZOYv+pshkdUyywZRhoAjPOWsusLa6a0OFGhvEkVWJRULKVum8
	 wK8BdtUo6XY8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92764CE8D7D
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314859358.10217.12193091881110285969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe6cd8073aa5a730ea614e69ed994570a60fe388d3e84ad8be68709b99c7b12
Date: Fri, 14 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763148593
