Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F372F22
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747259393; cv=none; b=ZiRrmKro6wcauSQXdmitTGmIIbZ6qVM9lYcmLjwU1ezziJzzBjU3QMqio81Kkn3//nBLuLDb0ou/ygniFqfkJo6lNnF67AchcEoloXtkRWtaQXNm3vUWTLeR/ED9MyEWKvpEmIG/xxoxGkpB9/d77lu+VcugtFjGlDKB59VJmTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747259393; c=relaxed/simple;
	bh=Ue4w3jfYZD311Kxr5redsv9Fa/S0o9aQGr1KiIhy3A0=;
	h=To:Subject:From:Message-Id:Date; b=nCdjXRDVTGl2+jBpLA16y7+qTfyQMRZhR173BV28BRsJPUhfVgsV43rSf444JRJOsN9f8Ls9ZZgTjfJ3JM5AHvo8b8yUh/rJZFg5rO0X1UFTtCWL3CqjspCldtFaQoZq/adeZnr7OiMqEOn/d9/YuDI3joE2DCEqS4mvPFPDuOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T36H96rv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T36H96rv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7431C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747259393;
	bh=Ue4w3jfYZD311Kxr5redsv9Fa/S0o9aQGr1KiIhy3A0=;
	h=To:Subject:From:Date:From;
	b=T36H96rvnPM8Y3Sj8FhuyTEp7LiulZP5IxoNbkVcp4hiavz95yt5X40UHzoZvWpXc
	 ZNVGu3zjBIwjvffPo0ejKeajHBtoQO/Bhf3VtgOhZKLM7YR9nAl4CKqzPvVukSVObt
	 njv9k5/V7QkJA5WqQrTRTeI5H3gEy56reH92MviV6vIBhCK1Ed0QOHrHN8DelRUggB
	 ONBnpDVa1XhwyrcuDc2OKlqCoNcEpNpr02E03aVt3nv4buSoS5rssQGOHcnbmDJqRb
	 JqADEuYQNKLngcLbstDPMVJVHPT+CbyzddsdzC3+gbBhE832kjNlI7DBgy6lJ7YnDi
	 d5zQys8NfUTvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FDC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725939358.5742.15953675256869304021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a754be4f46c1c72b105bda88266355f43327c3ce3d45bfad6b7b37d9c72f7b
Date: Wed, 14 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747259393
