Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447303264DA
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780832074; cv=none; b=mnAN3Q0WcpT0vG75JgmjbgtJOIYAxISN9sh4t0TJ3VYKngWqVnb8vcvIb2R1NAtU2YPQ8PpxvO/Fy+mkzsA4VoVLx9FJwTXnQYaQsLidLdnf+yfulVqr7ZQBwhvCFwy5WuIjxMbRl4ooDhB3b2j1UoiFPC/ayuxmhZ6gVxQeEkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780832074; c=relaxed/simple;
	bh=4MkSY8APohL+tBHaLq8msTNBDVvRUmD/oJbOWezHHMI=;
	h=To:Subject:From:Message-Id:Date; b=ajGdTPxoDSKRsDc7Nlnq0QTjLM6DjisSy7sC+Pfc+gEIp0vD5aex4HLZAJMPp9W1ZCF5kz+SGKjsJd27RJsNqfNRpixhJjZd9rk3fehcGseTW0Pf631MpVZoBEQlgkEUGHCX6nYSBKoNl4J53hLzXQppUf9/xu5LSDE5gyOibNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+Vrk0gN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+Vrk0gN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C973FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780832073;
	bh=4MkSY8APohL+tBHaLq8msTNBDVvRUmD/oJbOWezHHMI=;
	h=To:Subject:From:Date:From;
	b=B+Vrk0gNs9uBYl3Czdm6apoDRd0NkxJWCmv1zjyMRAHiU8oJXpm389WWo/SVpoP+u
	 gNUgrV9Ozi/kkhkKva3t8Sw/cop2pZJRk5uD31gDwswADBr+FZ/tKOYh/WuV8Aev/Q
	 vGoTZgUu3KWQu9DIp8MW6Te3g8xcbq29Vm3Qy6NUcdkdhwu1cTRN5zObBCL1ewlxtx
	 EQZth0GJ635FgUrTvrttTOTnsGyqWt5NFLNWcc9fG7NatZjwow0suIQi9fJ1sPwFv5
	 GCnn3UxEq9q1ZkfH9k7HzOQDGmc2GDxVIcMtVpd5AFiGCgxhok760DTBdZBUPSsXAn
	 AvCdTp2W7Sfgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC997CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083207368.5330.173977925736835157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe18fb89597904050f4ce5e0e52d6e6631aa703f6739c41a0ceae9c865cd679
Date: Sun, 07 Jun 2026 11:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780832073
