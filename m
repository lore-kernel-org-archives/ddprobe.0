Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA4929B0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741487934; cv=none; b=HEUUvgYaaG39ajWe3z66oMYYJLKfEQE+vK/BSMH5Jt0+TloNNsrwucFOEaioR2JgIaI+bTHgpZ1ad5/y8BIAkd9YQ5+FaSaHJUfLPz9VMDA12QQ8mC85lKg8YUbr7XPP+lV0P0KngMrmw/J6aDpszlAXN6C7YDzqmTHuJy7MMPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741487934; c=relaxed/simple;
	bh=8CMnSBoy3JV2RaH+Azg83QhR7fdQd2SOm8840nIumYw=;
	h=To:Subject:From:Message-Id:Date; b=TerM3djw55g6vNt9/isCqTwWznZ/gMISorsTOCFAXYEXK1EvUfIY0BVPMIJA0VDoOZYKIKB9cAH9a/N96JBFe6I3qQQULX1A8izlUHl6/gERAmHz1A49KYAFpUJm1wQWMvSXmx405BnPS8b78guyVHrmvsOvddXP4YOJayKyZ9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQpimU22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQpimU22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BC1C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741487933;
	bh=8CMnSBoy3JV2RaH+Azg83QhR7fdQd2SOm8840nIumYw=;
	h=To:Subject:From:Date:From;
	b=RQpimU22wWwZzlE8GwCIZCmEUMocZI5t2xfXVZW4BnbEQM3OFuV2gxLqKmlK2/NjV
	 uPuBwTQWo/6rqROAz+v9YonMxCZ/QeT9Rj9HF5FHCKbhPOZWg6lL6BPhRYgBuUj8DQ
	 Mnazwnj9cj1wvtrIREUtLmVfmHFWUtrg4qwV1j0JDHVRU1jRSQ6caOarKPrRcvelo2
	 YfMn7iPlJ+y7h5buxzl4CyfAfjzCUj4x2hB9yBzCSqV4koB97u+r1sMkIYoV9GcrQp
	 qJDJjHnDkB/6hnS86E325/bCZVBUMTo95ehFGWJG57um05bl7bWrLc9SSzPV7/5Yvz
	 0RCXrsh7RVuow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96661C282EC
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174148793360.17809.13611578902807574096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cdbe36cd146d57d3d27ad46aaf8466f3a36979b0645e2663215b573167f723
Date: Sun, 09 Mar 2025 02:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741487933
