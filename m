Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337C623F383
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740829734; cv=none; b=rK1iEkDOYORbg/Vqqz/11UV/hX/jyy/jEgusqg7VMVKYsPUg4eUEmERWnC5uIBG4v2okDNMjGbmBGgxBTFXGHU+ekYSnwtO63wcNj2Cr6K73NAmkAa8nnbjsEqiCea4nPLHIwEnmWQj/uPxed0OaZUGJNIzP5DOXgrWP54ajYVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740829734; c=relaxed/simple;
	bh=wjQKodfcNfA8G5cgaVZc/YwVACWT2L0bbvEUjG+6mQU=;
	h=To:Subject:From:Message-Id:Date; b=p4yrsNFH6ypp0nzp9pOtyywgivuHmGZdPtCGWWk3sy+MzaNP5xlSv6uEapTX+fZK/j+BidKdiGbQ/pmaJlt5n8VohtXGjx+U+RDManF2WFXgXCgi3L+irH/rJyXTFYb4FfX+y172buA4iWKXdaJCgTTmOqafkrdkrGeNkzOXZ0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEyUnhEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEyUnhEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D29C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740829733;
	bh=wjQKodfcNfA8G5cgaVZc/YwVACWT2L0bbvEUjG+6mQU=;
	h=To:Subject:From:Date:From;
	b=AEyUnhEjQAvc6Yaons/f22H4OVvDLnKxbKCq6pHWtAOHcgkIa6qGrAqx+FbuntOVk
	 DlIpiSMUY0U4/hgjSqY4Hgas5BdMvaR/S23cUvrtxdTTWg4os0UBQSu90OkNkJbaYt
	 JRmGgWMjy8JDOrTvjAelfO35EfWpgCdMl5mqCpz6LKJj5f6JfU73xqCSnCRFAe+0yT
	 RwwVcCBeWu7Ji9DrJTS39L/szzMgRbfBUVgdJNvITvDYSk80RaV8g7D9VoX/wuQ2ZB
	 qvuBKg+tcBjBIA0cSPlCfDqtWDkymNF9F6LwijhICzXL9FZLinFwfoQ8Jt+G2r0q4J
	 Qc/kg7bfVqHvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA4C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174082973358.3322.16433856464910980378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e19357983a92bde9dbf41c32fc97a649f1a7b818f329021796642d240f023b1
Date: Sat, 01 Mar 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740829733
