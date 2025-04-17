Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3963B433A4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744893595; cv=none; b=Tzi8N7wEoc9pd0+oFPuNdphoXx1KyriLgSN4bgalBzzZ2qxETmpghVV4cdLso7ykZB6chJjg8JxDCe6bLeTePmh15Nnf/AkUxt3FJ6/BxpyabXj9u5hmXjSqY4Ca06ME+Vs1k3pAhBswLM/wn46zVhvantWsKOKz0XJYe92aow0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744893595; c=relaxed/simple;
	bh=8nXyMTA5UKcxocS3S8+DIN9QiKZlkrwgZCUN+VzJm2M=;
	h=To:Subject:From:Message-Id:Date; b=Z7uo6sYpUO0GQld3GhRBCWJZFd8w/1mZLFQ4BmhK9gytVLzgUx6fbLoUpGaO82bBC0US29Vkn/9ETIt2HWkZ7loRhkAouO7dxyRyE3j1Kgnp3aYhYeoAx4xtTDUc8MIjt2OfbIDa3MCYIHDjTnbq/l1IogOr4zH0oEZc5ul3s4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W12yyYY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W12yyYY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6950C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744893593;
	bh=8nXyMTA5UKcxocS3S8+DIN9QiKZlkrwgZCUN+VzJm2M=;
	h=To:Subject:From:Date:From;
	b=W12yyYY2Pe7uqaoa00SN3qrrRk6Iwi/2XgxCBM/Jcx9EGksRMRE47KamJDYtLEL5P
	 9yocLAAamuawxV1Daryjd4UrN3+EPF52AW1w3lNTm1CubYJS5ryp17a0q7mh7Pwose
	 TT5LckQs1n7C/zEkXuBBJ0RvVZiE6XaZhRZIDncoemP36118sC1gTL2nR/aIdNBKMw
	 6qT4mgPFezWJJVW7enC9+KSUm47feB6SzIANOD0nuDPoq3CDMveLdZaPK8S4Co6t2Q
	 Njq6SFmuTg4lC8tXvZdS+FY+P7Skon8n3Oq8HRyLurAVWgHY7ePKYuRI4iCglSpGuS
	 u7nrDYWPVOruw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B35C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489359359.18114.9465344605533139044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c159ac88738bdba63ef9086ed04b315f16bf1b0478baae6704051924828385c5
Date: Thu, 17 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744893593
