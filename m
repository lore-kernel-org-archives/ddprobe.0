Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EBA3644A4
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772751294; cv=none; b=CoVXx18eqPFfuqPGWf5j+LQzwm52qvMoU1a2OZRWBAzn9+B5NLO5P1sT615zbBVELvrlwG229RGnTgnUAzNmiCGMupOaDMEelzkgrTQXR5/ByYnkNmsUJtshHYmQq7lgM6CBpeY0XR9ClZ33l32U++2ZE1yvmfXdAxvYxYNsc5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772751294; c=relaxed/simple;
	bh=hPGucdu9D9vcncNqQvh+q9g3Vst9h1YsaBed8fTnWnk=;
	h=To:Subject:From:Message-Id:Date; b=BDhopO8giAMySffDzEdYhIZ1QogsYicczYSIQHzq4TwNDYZVh6pX6hIF64qICvfkYVYI1PG6/wtArDGX5RJpDLgkjGdefvk2u191+tN6xT0Sc/YbLBB3n9K+k7S/LwO01G3gJCtedE+fLST4X5h7JD75BQ6nUKkwR+KHE/m0T38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMmrK1u/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMmrK1u/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDCAC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772751293;
	bh=hPGucdu9D9vcncNqQvh+q9g3Vst9h1YsaBed8fTnWnk=;
	h=To:Subject:From:Date:From;
	b=GMmrK1u/hM3AIUaajXwp72pR3AwixE23megHrdidPPs9oDia9gCs5Xw/B+vkYVRlB
	 KDDRyAuE0FtB5MlvGizPs48Bm0r6xkMNsnlBemczV1gskmMYRUplI4oyTP+ZT2KKCu
	 FKoRcItV2EOTsAR5Rect4TJPD9Zol/YS/5slCH8wHJznpNaBTmlACSSXYhqF14d0iY
	 YfdAqH7Q6ZM/OMg4CYrcQDw+m2to2URU6A8/z7jzvz6UpWoV6nb2g22kiLV32l+W0A
	 Dgz7QW25C0FEN1CduIqpFaf5Gf96J0AQ1nutqfF/7HWFuy/XOLo8iY0lNRb7+iEsbS
	 7BwlBNnUrAOZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B5CF513E6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275129358.2379.12809113223572081208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6e53cb77226c7659ecc80df91cfdd1141f60d08a8f946360d13d03efca549a
Date: Thu, 05 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772751293
