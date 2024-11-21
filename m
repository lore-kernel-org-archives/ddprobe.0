Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7A31D9598
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732223154; cv=none; b=p/IAsQ8kvo57J5ub7D4xRae85xKMxaEWAWnWiGTrX9Wq96ABpCCDwxul2IoCVHElq2MxytlNmz2VPYLv5fBkzQeZgcqIGRXp+JOmxhswXeNaWmFvMsbUCcq9LTyrbWLlOuBoWaSKU+XKUmCJNRUjxT9G4BO9Xy9bnFr2YQCFSw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732223154; c=relaxed/simple;
	bh=Y4di16Qtl3RRkDCQI9+SKtji3lKrBvjMmQqXMzQAsWc=;
	h=To:Subject:From:Message-Id:Date; b=IMZyDZ0pLHUmAxSlcJul418zV0isfnbWEXWeil5De6EavcFwWB2xuJufNMHA/x/CEMEeG+NaYJC//meUgkxfU1VCmiS9KilAIRf3EiIwiHUovw6h23lHcd8PDPu4hc0h5/gux4imt8uxG0Gq6BRegn6NmyLXm/f+5q9kRQPspkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI6ay9Yg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI6ay9Yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE309C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732223153;
	bh=Y4di16Qtl3RRkDCQI9+SKtji3lKrBvjMmQqXMzQAsWc=;
	h=To:Subject:From:Date:From;
	b=oI6ay9YgLZy+monP2gWyrY0X3OgEJKpZC7TNEvu8sUml6wdAUkNQOw0r7vBFuj5m0
	 mALaPQfBW3x74537Q5nLz9Vvj+wlvZLY2oe48kLYIxL4MOJZKxk0iTI+B0LJH8XzLq
	 uVEaD9EQvotfGPPfwGMjj9BmZNRxrsp9qwNjgNKf7vjlJeXOaBWKE5NPSzDNR5hQCf
	 Q4YkrjWuVQJOv16xdFSFzxY/Y1H4BupKcPzIlYrL6B/zohL8hDMZjpAj35sdBCaFbg
	 GKyJznLofaBtD6L5lMUfCw2qMBgA+VnaTbbBTyrVCKmbp00A1mdL0J16QxwBRQpZgM
	 zy3PTkNUYCY3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5DBE64012
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173222315363.22076.9370796013449474404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8198aecfe8d44b3714cec037ee33af962c041af03f655e28ef6589b70171b8d4
Date: Thu, 21 Nov 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732223153
