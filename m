Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3291519BB
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738755354; cv=none; b=LTLW+6dOdTu8yogydXs9WsxpP5Z6XOGtADhAk8vdK57RDtn93uGGbJN64PQ2bxcBtcJOgfY9Ws8QQZIvyB3kbUA4h7c8DJ2h07p16+tz3pTePOLM6kxG0wE+r7OUzTBC282gXLzvoOX8aFufwYwPYl4ekWFjHLPW98f4dgZGlcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738755354; c=relaxed/simple;
	bh=zb7uZ/8peI1BWyb8l4fIDsB60Z1/P0Smz6c0lOSCVV8=;
	h=To:Subject:From:Message-Id:Date; b=nR2sqPYJ+S01X+1A2nLDP+EuadQVJqJvuwzQxL5errR5xXtYrdfz4hJb8p2CJ0inwXBlpHY2bvDdcrCvtjBwCVrXecdPLuzFH37vIrV4Q4db6ooS389/jJW6HUlhhSQHES8w7UeFiDYANMoKN3w2HRMapjoGOjPlDVe9s0fy6f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1oMHkX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1oMHkX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB95C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738755353;
	bh=zb7uZ/8peI1BWyb8l4fIDsB60Z1/P0Smz6c0lOSCVV8=;
	h=To:Subject:From:Date:From;
	b=V1oMHkX76327+a9Fbv4/bLBxU+ESs1K8GAz/+s4C76jcU6ANNuSH+uTsGZQ86mMZb
	 Lc1XS/YvFL596py8tHXV1S3DjeeIEIViJyS1t8hK8NFAytq7fSerDYwN2P0kOiTZqM
	 rxr+HKWJCCP5WIqP7Jo3DHd74H97CApjhdtMqOTTn91US9LGoM3t2fibyRqJaNWVre
	 wJVTKga1s8K/9jh98b6XyLfFpgyfexURxKksgcX927aM2+GBHSQpDPDbh/WlVd2DFa
	 5ZaK+NmDzENwgISMXgkWq9Dpu7WpEEvRYtxpB7waay5S73QLT9IAkGjfZ4FahwWFQl
	 gN2EtUzu12BIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923DDC02194
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173875535358.7222.17047245966809496939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21702cdde65018acce5a2d9d16b16c4215875a3c637942b38d87da863efadbc7
Date: Wed, 05 Feb 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738755353
