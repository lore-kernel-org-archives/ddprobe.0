Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9FC2A1BA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757905794; cv=none; b=b45oCfGfFNT+DqcSUNi/EMInHM3wrVjLEBnEwkbkAILiU+naH8mkn9YH0d+1L8d5hf3sxph3eOWl+Xz1XB3Jn1CBK8DTvaMq/t47QKFsM+TRCS25IsFfCN7TVZqAJglf/XK28kiqPuIasJR9tBA+d+84qaR/6HVRLjwnFitGM0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757905794; c=relaxed/simple;
	bh=2JCGquMq1HmfTgH9fLPvhlHHxJIyZXGbqYATvQllRfk=;
	h=To:Subject:From:Message-Id:Date; b=ob9yO8+oLvD9PS5CSvuMEjTf0eh4YFasDN/6/yf0I0avq+R2WOurGmVPUVPQNZISvWLIhGarZqyf6HreBIHXtqN+mBmZj0dET1f6CY2eE+a7Zda2M7uEKBDx1c/8VFn6Oo3kFLBsDdYQ3RTyzXLWpyZl0rmZ3CZapw8A2UMnmBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqeQk/Yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqeQk/Yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A019EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757905793;
	bh=2JCGquMq1HmfTgH9fLPvhlHHxJIyZXGbqYATvQllRfk=;
	h=To:Subject:From:Date:From;
	b=HqeQk/YzttODbdw7N0slFDrrd466ZVLuCDEsBgXtepHJLpE91Hnv6kggoQHq7uG+h
	 xf9vtYNaZeyc6xpQMrNA2m/drkKqy7oiFLKP33bRYu5yaX4BC94rLiAniTOd2PrlSv
	 2rNDJMEPNdKgJwfneyiD/hiyxKjfM43EwjaVCU2O5o8MYSh3IpOprABDqQdQp4S7UQ
	 S4aRGNiThtK2ffrRjxeljJuE5Rxj3q3R76fOUh24Qq0lTsNg2RBgBiJVn/AiwKFAyO
	 p5o9hoPehfTdg4KbGDhehCzkHStR4nQdTGaSCN2mtCU4gbg0CjxR8IHy1KhHAZuYbo
	 z7SnN/4HjGbsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91988CA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790579357.13343.16911280517427832782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12972caf6ec1fd5d656f637d99f1194e891f9feb968e824d6b51c5325d87141
Date: Mon, 15 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757905793
