Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB05335C0
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735951554; cv=none; b=R8kvFrEoiud8w2lEBmWH0UfyzuPjbpfxu9f8XfY8KVOH1YOy/2LMPrejNf0uVKhnEb34RV96Yn4mMhXtjW8g4zdnH7IecgW9PXzY5eZv9Ke2/AZg2maorQaF3t3OVnp6Z45ixDije2ej1jNEnLOGQwCjcSrZgLzK9lOjOqx0RNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735951554; c=relaxed/simple;
	bh=xldLQtCD9JBKVG52QEdJN/YXIVsBbUjct4F6PbWt2Q0=;
	h=To:Subject:From:Message-Id:Date; b=XfUZSVMBKRH3hZDbS/ZhKF11jQHz2Q7pHDTWD75IjgoiZXaTy4eYjJoKW7FnQd9X/MEJAoSairOEX2/IoZtaNKAq5H58USoaqtbDYAIrRR4dsUx9ocAcAEIFynw7QdlSh2tZ+3cB34+U5gSa7FBNDXgs7BMpa/NM5kfG7M4ZE10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ay1MQmgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ay1MQmgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA3AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735951553;
	bh=xldLQtCD9JBKVG52QEdJN/YXIVsBbUjct4F6PbWt2Q0=;
	h=To:Subject:From:Date:From;
	b=Ay1MQmgi2NQot4wkpAb+hFA/Y1ojHOXeuI+14H1s6MVR888qIPRvbG7x81gRO2P05
	 4dR/1TpAH6qrAYH1nzohyPOepgAMCGDYAJTspK/se8VLK7DGsPItKTv4oekN7JO5pZ
	 sn/kGwn2KsUn0SxHmEZSFk96ohLjcIgAJwE+NP7bAlFIg6nGVowLl4Rag1kxcqkNOo
	 wFFRRXsdLuz6PUw6NMkN7EBF3GKJXH+oV6TUcIcySa1fZMTCdW7d4EsNHtT1/kcIja
	 ENsajV2P9ALk4zzpUknnwSDdV6QaKoy+GAAub/uPc9Ll5l0yEvJX9gU9Y6ADCo/e6c
	 sg/NFrjv1s+iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F782E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595155362.31973.15871844635977432853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcf9be7465e748242523cbd0bf528a9691160998fdd097e0df0abb6aa673cb3
Date: Sat, 04 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735951553
