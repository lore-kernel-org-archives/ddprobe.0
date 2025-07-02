Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D2423184F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751463594; cv=none; b=afk3hja46ax+Ml54q/VCP/eMnpVj+nHfIoe2T6QBtK2KvyTgsXXzhNNfkQMdalwJXkcZ4ctf4xDx9RnKW9BKIDCtQb9ZrNRL6mIZjFCFeAMjcyFJY8YMSmakhCfX/qK+B5Kg2muIMa0g6jGa2cFg73OJ+353k5NjPk75x31Cjb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751463594; c=relaxed/simple;
	bh=dLmM36axF+2fty4AyLGifvtS18dddrMU68SbM0nuqEo=;
	h=To:Subject:From:Message-Id:Date; b=kSQejmL//gfhvHo1S3Bf4oQamupdrPmf/LnsvCKQfJ4qAESc35a1JHTcMrkOXpGjm5yM0u+jaZWZ1qKLJNW9AAyK1RhvEloicOvYGMhKMXgqNdg38EAo88+z2thgSiYm8aanUgB66LLmBaaCFPsl82aaBQSfJ2JIUii48q/+TVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdpP85kV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdpP85kV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04A1C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751463593;
	bh=dLmM36axF+2fty4AyLGifvtS18dddrMU68SbM0nuqEo=;
	h=To:Subject:From:Date:From;
	b=mdpP85kVTtt9v35HSDLtVQMtXKLxOWwpWgslF+rJXyIqqln9ssOuYWU3fsSggIBX9
	 zwBE0C5RFyrONnFgZyu9jyhXz4C6qJwFjmJl3lskGwQZwWyEHbAHsykM9gc9qFxeMT
	 CS4CJCqLJXc4zsp4MBOUpuEfYQ222NKxtoGnI98lvfIC9HTmIyDMZ0E1OgjPL+zrJ4
	 zxLBAY7c9RyBCF0/bmQEshQ0TpbNRj/iVOVYvP5AgrO0FVy4HosAVK5ew/ROdN7qAo
	 KtzHoW6fYT3Tt47R+oCI3hZG7MTzT94FycUfbZgn+oUAVD5w339G2ZCgun81WOdlXI
	 ngo2ank51/TzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F8C83F04
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146359358.32535.3918022458392893374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2073e44aa75f247917232989c93d18ee5b410e92fba99fd493e8cfb01897108d
Date: Wed, 02 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751463593
