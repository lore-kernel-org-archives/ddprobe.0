Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175F1155322
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754507395; cv=none; b=YlxckuwQLrmtL+NTENbvv4jZRGzAojywbQcxRVdKhKymLFVnHW84FBXiki/+00PcbMUqU47GHfrHmVeyCP1vteiUjKStm+fQBasJQwySWtxvW6x7NYRJjjlidnoJOxAZiybiDRiGggqmJzDNjMQyPlB8ysCfvf9XKl4jmXccKKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754507395; c=relaxed/simple;
	bh=XO2o3ZfK7C6yoZK+5IKT6b09Nnkqt0mdR+KD0Dk7bGg=;
	h=To:Subject:From:Message-Id:Date; b=LX2YwvhTF1PI6vKfGyV12x+VhUOa+LdlVJBGiqzNd4WvsAgDvp1NkJvxs3fOu96fn9ff/s7QRyO83O9qX8fXTBsrWQetyl+IOARwWX5THwztV5jgT0FrOVcMC9bRZyhit/vu2a0DWY9A3EqkILKyZlTx7aanRQ/znPeHbBXuB68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPiDZW+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPiDZW+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06D8C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754507393;
	bh=XO2o3ZfK7C6yoZK+5IKT6b09Nnkqt0mdR+KD0Dk7bGg=;
	h=To:Subject:From:Date:From;
	b=ZPiDZW+EkbKvszT+gCcCWs6aNVkVp8gvHCNRmssE/H4P+icfWnKOnPk1WlKXuh1in
	 f4cIWohDOodtEVuM3g8/B4k+CVFcXwCYO4C0/SFyB4pXXoE4Q8xDGH0bSjEF/tNiun
	 Uj9Gspa3j4p8ebv2bglifS8SZ7NdOvnqs9A4rdpbvjwljbbLpTYd6fISpBMXlhoMqa
	 usijF/Oc43UIYnBxdF0C+knWRm5Jzi2a7hKfxarzsJ9QJfpi+n2ezqpNQukf/981Kj
	 2R4w3ndGex9Z0N8DPWExRnHbmEGVoAWSx/lxDCg//670U7/4OEHRWjO7cCy4UjgIoz
	 MP2VQPrC2Mx7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CCC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450739357.7583.11734744876984833966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2681799c99a4e364b4906f3687b37aa181ca28d2af6427b1f5b7f8c54e133343
Date: Wed, 06 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754507393
