Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAAF221D8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733745354; cv=none; b=f7o2Xx3txYTWeyiBaMpWK62kwJ79Xy7v0FuIv2843rMvwiKvqrIyZSu6DR9aHZYT4JEzjhB3Tsd7bmqTZIkSgV+yem1agI9rfZXp+y162PBXr9ysa/ShaLiFkZ2ifg2vFbhxJt9yKyv2rAnhzt8WNYOwcV9KLz1bkOuD3CA04gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733745354; c=relaxed/simple;
	bh=AivQEUjh07gjQvVNxgbty92zCGWFo8qbUK2rR2VRqHI=;
	h=To:Subject:From:Message-Id:Date; b=kELcibQGtJOixPqiSkH1kGXW7vT/abLP1/WLAtlqdZJxgx/cvkCpoc6etXl0TL7UfCtue5wEAg4Iou4UKZzG8mxkvf/X26FLWSjHZtrO8Hg0UloGmrin/h0Ag5j60uvIZFKxq9IMeZTp6aJEdQJrSC6z4r159CSQMt9ZkyMXLl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfM1eV3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfM1eV3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA56C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733745353;
	bh=AivQEUjh07gjQvVNxgbty92zCGWFo8qbUK2rR2VRqHI=;
	h=To:Subject:From:Date:From;
	b=UfM1eV3WcimL9lb+Es4W1lLm4He3S36SCzmB/o5FPKVPL/XETR6mAhtfRhrZhkNE6
	 5/GwuCWaSVLl6rd8IKP4YBv6T08/A5uERJ5ACUcLHrwcySKHpxhlubHg5lsPyEihve
	 6Bw3yQ/iDzFhxVLhwwoIJJ7r2MzSKrIMZ3pAlvswzVoyT3QwAFcIBc5pa2ykkNqZrk
	 FHc4jZ3gRNCeQ+KoWrqP83k5ImsvNAYTMnx5kXRmtzPPw2feh2UEGzKPyW+Hj0BZI4
	 Kuhf4Q8eh+HuCqD9AA0oUhoIaHkLavTv0MNXhdeaWbQt33OLVOwIhzbwjgymj2477W
	 1fdW77uN5yV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A5EE7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173374535364.29718.3179565822354359295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 395a1fd30565e597ec322bca420bcec82e29a8d25696cc6614b3f19ffde5e485
Date: Mon, 09 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733745353
