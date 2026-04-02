Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104CD13A3F7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775156734; cv=none; b=tbxyI1U3EO3MPvGjZDnptdtBZWG6n5VHQWv5n155RxbUrPOjvXTyWLkQjidnpF2d1mitG/IteIxCMRx5cEa6QqdV7t+M+N4GSKVc5t/StW7VOH+/ZXO1732baFZl9vXDRbKdCGtN5eD4Cbnb+Oi8cjdIxXcGes+5GKkMuvFiuUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775156734; c=relaxed/simple;
	bh=LuSAfKI4Nd9GFJP4n4x8l0A7II7kcWVg+2KGavmdOxI=;
	h=To:Subject:From:Message-Id:Date; b=fvt4yK1MxGOBn6neyG3YHlWXu/aTKkeokNpWh/TBJLLJmUDa3DEyUHX/+HgfML4wt6Tq5Iy3IFIMaYoL/UoarthMiu+rHaDsYvjR0O+HsnpoCGTq3GNDGQq1UhZ6a1Oyxnl4WPdtuhpLQ1f4ymmL74eUNuZyAmKml7CwsId71Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueoKH5ij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueoKH5ij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03ABC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775156733;
	bh=LuSAfKI4Nd9GFJP4n4x8l0A7II7kcWVg+2KGavmdOxI=;
	h=To:Subject:From:Date:From;
	b=ueoKH5ijJEn2xgKs0TSK9z+wLkwSc8p5FoA/VYlL6InNcNbxY5QeR6naeqXuog40K
	 b45p1hl0QtJGdGfM/RGlARqK5az3a7bng/12CcFxNW9GgxhU931W4sY92HXu2Ngt4y
	 /ZHDHs3J/4qrbX0iYgQsg0NYGI0Ku/uT+t4nRpxanrOwJVN7OrsUvCWO4aHU4AwWxR
	 z9WZstPdEaIygmiBsFih9dYftHkEylCO9sw2y3+TRM8/ngtN6MdXN52LzVUgt4IakV
	 MwYjdFc0ZFgEhTFXcVxzB+8OA5OGvDxM3xefUfrJuZ9Bi4Od2vG7QdzX8O0a4GKe3H
	 CzFKOoD3svK3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8D0D6AAFD
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515673370.7705.15047145280663520561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52563ea99b4f500942c9473bf53afacb2ea43b3b6055850fc70446c81f1c26a3
Date: Thu, 02 Apr 2026 19:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775156733
