Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5845A22370A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792105834; cv=none; b=Oh/UP/kTsN9G6uX7HKI9mUcyoltaL797QX1k8VbGW2ZhMyr9OZ4bak4SS9208NXYJmg2STXr3KntEtznFY74pL6OwvlEYCaIbl3TCGa/E+aYDeMCqilDMOPRvAJTFJ1cKq7Fk2OT+7vfPo52x0jKHpnE/q6QFom3hRiFIX6Nnao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792105834; c=relaxed/simple;
	bh=ssPuBuD1EaXGN+yh38Mz2iZidlLEaQmmk5O0kPS2+bs=;
	h=To:Subject:From:Message-Id:Date; b=QChbRLWXrWSIshUf91txYY3Zng4eJiONw3ZlDrYyEso3swjqXtXtj9/qY6BCzA7+fXDYMzW+anxu9nU0jBZEL+ksd+OUZRJFXESdEU8uEgc2OatVdKJ40GaUSu6/zl20OCtVo+xCenLunTyVGiA1MmadVDhbedZPotp1cE9o+pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjhVEX7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjhVEX7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2547C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792105833;
	bh=ssPuBuD1EaXGN+yh38Mz2iZidlLEaQmmk5O0kPS2+bs=;
	h=To:Subject:From:Date:From;
	b=CjhVEX7UZltcXHJg0HKhUuXR7o436EgQjk3e33CU7rQCk8+hD1AQU2IcTOjVwAfuP
	 EQh9OiiCJfMDx3Crc7qyKkxqmchymHJ81MrQbkDjNcno9uZvM7EyGLA/TK/6z8NWtg
	 yErQ8y1fU37lAXXyO+PcahMIzTUIinjSuaX7Dr+Roah1+fFxlhENQFjmYTR2XR6LLj
	 VMq+C2uw9HsFGY/Cd92Y77LVUTAmnf0gmqTEpWLycoyIppeYBTv69mhIuhcJiZh5eK
	 pr1TYU/R4jyWiBTBV3oPIgb+57rNt/9Uyi1Vp6PgEUtecoTshHiIkjWImAljewuDRb
	 G+0pccCuIMh3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AE6CCA462
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210583368.4408.7899039543857771548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc43825a2190567e58986cbe20e4745b87ba82c3ba0e7554a8120871c7cfe4f1
Date: Thu, 15 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792105833
