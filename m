Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374B62D600
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724855154; cv=none; b=khFiV5NdW4K7wHQojmdoAYE4dhnKH+rB0N9R4jO0o7GWZfSxRZH+M4f4veg16RTjXIn25HMuutDlLVSa7Mk9W2wqcOSQG0jSb5rl556woG8v9369/Lh3YEhr4UXFFemmROR1EZnfgfrtGV4kX4uFkONkZ/v7gfcCLYw8ld3MwXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724855154; c=relaxed/simple;
	bh=cKRvRdWXrHzp9djSnT1eTNu0ewi7RTP4CTd6v9SPhRc=;
	h=To:Subject:From:Message-Id:Date; b=druxRVhvk6C5CTsWu76qVyPWY9bmJSwQboh+kk+ureruOzwebDsc/Xckbr4B46jn0SQOskko78fg1DAswVQvg1BBXnzyvth4h3Ogai3vWCSf5x6uzQR2NBPsnfNRrpKt3bW8cwjiAgNdiwKQ38EvM+IABn9S4VNn6fKa6pm6Q9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUjCOJby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUjCOJby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46E5C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724855153;
	bh=cKRvRdWXrHzp9djSnT1eTNu0ewi7RTP4CTd6v9SPhRc=;
	h=To:Subject:From:Date:From;
	b=KUjCOJbyhYpK6+fnaqJeUMPOPI7+9PJN5WOPXEtwqno6psW23rwWbviEqyf3UMg4d
	 o57jegEnzslzuXCnOIuD2gUn/KVZXjWhtak/Xq3RBos0t2anECECBaOM4DwuaFgGCk
	 u09jXIU+rVi6iht1rEAD2pw13a50naurFUkCbhAVoj5XvM/V4AH9w3KnXyyyOhctFP
	 K6w1Uss+Ckfir4tyBeGDqNb/du1ZRlV+4tsRNuE7yn+3vK2Wsw+kXHbsPMArSOlmaS
	 8HH5Fkh1cAIHbIVajjbpzEwJWOJ2bu7AoOCnitQcDlGD93Iv6i7fbB9L298qyDRyVC
	 fq9d+dM7NsdVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CF9C5AE5A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172485515361.2771.12316466551259412545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde4ddc9252e7626eaab0fad782353b4aafa79963a64e47f65ce29db5703e04e
Date: Wed, 28 Aug 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724855153
