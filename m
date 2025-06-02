Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30573223DFC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748894395; cv=none; b=Sa1CGQbEteIVmVwKCw9cW27oqK9jbyYVZpjoEt6mitkjAxoTUX4E8+DxLbNcgwLYPETIOfVfyHxabM5qTjAJ6IbbcMa0We57OYEN7EqYmXgk9E+RrnESf2I3t5oPtn4stv7Rbbf19khOvLr6QOtZJq+rvhChmOI7sTDQCXoukvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748894395; c=relaxed/simple;
	bh=mNG973dveS++SUKYvDOFw51pHwFw4+g/fgZYbEwYFlg=;
	h=To:Subject:From:Message-Id:Date; b=QWiT5/RNq6/6cIOqGwAq8ldeh07dkx/QiZhZl9DBV+awMsKPxH6NnYAu+ue5nv41nJPXwcxjwrSWSbEHEZdSniKjRZguVT28vzAekF5dStjwHQE6/wawHOgx+yllSZBxwgQDjyHPY1qb/5CmICBH4Yp5WkG9aRZsLKwmN8mugSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTipZDyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTipZDyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5988C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748894393;
	bh=mNG973dveS++SUKYvDOFw51pHwFw4+g/fgZYbEwYFlg=;
	h=To:Subject:From:Date:From;
	b=dTipZDyDvOJG4TVv7IvlQk/rfuq1/VGm9Y1eJr7Rq3m+KvTuVcY83Qjwu/K2evSn0
	 x0FZppqKA4rJA6EQCybJ2sng0tuMa/k8FY15AgjcT/NnJhwZ2jvz2T+txfH+1Qg0HU
	 v8FSOk3nI7efJrrCJ4NskpNiy/WGjzxGFPe0b8DdYiLIsQs8tkoQwCfjq5J+9sTZKl
	 HDsQrFUBE9tZCMtY9A8P/M8QahfQpfSpw0XPDb4CdOT1T5TwYTMZ/zV+UAbIG7I6bA
	 3Q22JH9XfDRQwbmGN+hP1nUxa8lE9atQijp2+dTbeXtMfmGVyLvNl4yzaFIMpZ7AWO
	 NPvok7gJz5VQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950A3C5B555
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889439360.27734.11352653454658528419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4461eaf008d4f5dd651adee8d5d094ca9e13160ef4c0b784ea88ed33abe8abbe
Date: Mon, 02 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748894393
