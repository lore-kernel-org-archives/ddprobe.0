Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5DB2E0B4B
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751993393; cv=none; b=Fhbl6LiqNp3odT0demjKmWrDjl7yTkKaqdchpxJyrftC+IVRZqDLy8nFrAypBfgzOh0+gnOHzvVzEBLL9xu90VKhS8m5VunDjsaGyuXRbI8kY5O3APmK8uNVlCXBAcFCEQt7KysRhJAPjUejiD6VIxleHHEtbix9o2CUEd4a8K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751993393; c=relaxed/simple;
	bh=wB2Bx3ZKorItBxmU3ATCFj9sqfNqyLi/44aukIfExy4=;
	h=To:Subject:From:Message-Id:Date; b=kISSnHiw0jPdVGaDgltdT5CBVE5IZpVPRsg8jLSGMclR6Cocbs5yk8/PxpqeKJCHc8aPOK5FU6S+9Rwe1G27Wd5CGLmMPMKXuc0L6vgHNFHS7c3Upm7dlIsdTexqMKEhwDYG8zsKOOr6CZT9GGkv1irQzkYHUkXHObQgGxpMurE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5WJyWL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5WJyWL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3A6C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751993393;
	bh=wB2Bx3ZKorItBxmU3ATCFj9sqfNqyLi/44aukIfExy4=;
	h=To:Subject:From:Date:From;
	b=U5WJyWL1TL3QYWtx1C3ksBE+cLyIO2TG+kFv5VvdWEVVa5H3XdFcgLol6uuZbNOJY
	 77PfdiowZaSt/iJ7Q8PXlvvANZHc/AvbpepzTFh8JoRNd6IrGm5zJ+IiM6zonr4uD6
	 etqTwS4L7HXED2nRZlhI+MFR60zyG6zSHZS1JchzJ4ikInK5LBHd/UebeDHh/Nup5y
	 lBfFzTHZvG4rBVvXv+sbiH7FeI/JU6xFV6arUy5KPd5XUWBOlwaA1iAdRCArY2FJwy
	 EnRXALlPq7W/yBEdnmZxp4mPJXi2LZas6xV2BAZwSaVKDNbz7oFaH48SGqgQZFRfSf
	 d4xPpTHqc1bnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900ECC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199339358.4756.11505300739597785783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a17b9822e60e62fb7491641c99ae1c86183e8c39eed191dc7b663e17a8b5b2b4
Date: Tue, 08 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751993393
