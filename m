Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5723725779
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 18:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720895423; cv=none; b=WjRD8bLdvGpoI3PtNv3ZfJYVjKAEQqyBv4JTMuGNhr9IV+ieZpgCUpZQOMFudFVkNqVa8O5TrRIi+XX9pPmK78DXoETFoNUGG49JHKw++irIWi7wyMIqawjDaF+kQ2MA8fMxmq+tbjD4w7PATLvouxp8SWVB0NBhuy1jUs7afyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720895423; c=relaxed/simple;
	bh=4DrAIqTM8jAr8H0mv2VnjRLgf3XYQ/3GVBtEnkKp5NI=;
	h=To:Subject:From:Message-Id:Date; b=PeTgz+ThowHQk4h1L+RwRWcZl7ZxklLIpWXbZ9RDgYs6Xr9Gz3dAIpgCf74C7jYi0INTB/8XP53uIoqFJeDh/nE6YZn3lMBlACN2oV07BIMgi/80ngTZ+72uAddPyvhX/zEsujnhiLFrwDPcYRlXdHKgB5YPZr+tZ8JxW0tqgDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Isb9VJqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Isb9VJqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23ECC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 18:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720895422;
	bh=4DrAIqTM8jAr8H0mv2VnjRLgf3XYQ/3GVBtEnkKp5NI=;
	h=To:Subject:From:Date:From;
	b=Isb9VJqjB3dWSSTM5/ZDB4X69Sw1gSYXuRsZNBu6EGZl4NeZUdzosip7JRwXw8qJw
	 LB8V6wRQY94MU9ejkbX0slp7h0br45xOxmmBCaht7XKcSnW4G0Kom/gY/mA/iwU62d
	 44N13p1Lf18b9SmnAbPSYLFu0CfbYCX4eE0D+ufJj4NpAPKVwlKERNv4I0U/r4A/JX
	 5I09MrfFbWEbDakxR4U9qy4DEeAwEGWTUxkuwXJdP8/mUnRZ86vmhhV96oSVowNgIS
	 YYPax3IIhEjEXeBJhKEX5cuERXls1Xo3runWh9CqbR7f67630I+9SuEVMxKW+zzWHs
	 gjgu6cyvWPUqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE118C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 18:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172089542277.22741.6806081741422518842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e370fbaf0ec1e82e915a2c9fffef4c405209f8c3c29cc2779d6e32f04fc8c5b
Date: Sat, 13 Jul 2024 18:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720895422
