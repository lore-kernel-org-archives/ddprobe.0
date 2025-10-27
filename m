Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2529E72625
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761548994; cv=none; b=KiM9o3ODoDHqg21Vh5YqrMzwtU4MaK0vAXBi3YnstxmIP1dmiCqmTMtq4cyqeIWGCnd6dTytmNCsPfytUkKP0m0RameweUffiSGewiRlWwlKNNrL4DQqCPMLBGLpjYwkbslzwPF1yHzSvj/CvxfU7InkZMsEwCWs3FX+v5YJpQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761548994; c=relaxed/simple;
	bh=gztjRBnq2PCJeCT5esACQd3bvh/caToT0g2A91xlb9c=;
	h=To:Subject:From:Message-Id:Date; b=iDTsEYHXj/IIjzUUL3fOoysXef4fniKOnhvgCKON595kTZ+BuhvxmgXZk496El74e9L35bfesPhLrtL9Fk37qBUu+EEGV1L5RM5zLElYPOXLN5Z0BKXAdzfU0ANktEZ8fklqzThLHDNs+T8N3E0K2V3L2w3z0B19TfYElvuTk+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLjqMGyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLjqMGyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C6FC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761548993;
	bh=gztjRBnq2PCJeCT5esACQd3bvh/caToT0g2A91xlb9c=;
	h=To:Subject:From:Date:From;
	b=mLjqMGyp4zbjYFsvcPNYXfz4cV8v2SpfB9RfnUnWuFxEEpFMObccxIzivWD+2YfO2
	 eAogXJy7gNJdhOcoWmal91ULf9F4z9N68L5RlNBhPvB0hKBuJHchcisec2nFT6bX2R
	 l/9qgqmPYN9uTlHjCLqe4hbKnSRUIBUnzVuJUU6EdwFZh3QH4lWwOYlUur2cNNxd24
	 Wbs/ZRqCszVdud32Bo/S6FWBIQUf9GZNN34APxbsUu2x95sZI0iW46yG8wgp3iTEzO
	 CI0HPudpKaC2KnZhUCi/dsKXQFqwZyYS1VPMPzFN5G1kI7sjOPmxT03Izs2W7hc+pY
	 erak2wfhoGG6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F48BCCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154899357.19669.10239380772536100948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462c4db56856817e95cecffcffbc48c35c405a9fd84e6fdf78bdee3f1b65d7ea
Date: Mon, 27 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761548993
