Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FE63D0D9
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 12:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713096563; cv=none; b=J94/UhaKIwo7pX95BKRd3I6HGploKjZ2zv+VL+0buNnhHXEUJEE4SttM5Nzj2Dh+aFv/PzGrTxHdoGS8jOzLajsGQ3vYlHA1yVXg0V18CiOJNhADOhPcZkfjrD4wGRlvRTVR73gTd5a4TnUyfCTTnEl73RUqFplyFVBZutZMinQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713096563; c=relaxed/simple;
	bh=GSCmS/UvZQUqwg6EUT5M1BrOhVlNkrTIXxj/UIyUWpM=;
	h=To:Subject:From:Message-Id:Date; b=eWGR7rUjzmD3WlbZOnGJU4vrI0Fwc6kCDZG66I1ByVGrdDpK3klDK2qBNz9eKWiwzY3SOqsYuBiKGuMt8ETEnPR9mLtCs/ym2FVKjxFw5XRFKj43H/26C5u3pdCdEHX9rVBVnEQlxXTfe+3BN8MftJM3YyKg1JtT2nSlBqWHgXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzVCuu4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzVCuu4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74FAC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 12:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713096562;
	bh=GSCmS/UvZQUqwg6EUT5M1BrOhVlNkrTIXxj/UIyUWpM=;
	h=To:Subject:From:Date:From;
	b=SzVCuu4i00E0OefrLRSnjfzDh997TDe2U+91EAQQbduKqWqo5/eU9Eaa+iH++EsyW
	 BvgKI3Pbcr+zsPS8H7xqkK6pmh4GPrS/xkt1H6MTrwMa58tANt3DNU+9r85Zchovze
	 eCd7YBl5xjvMchyaKQSQuNDuAR7CVGgBuOwsBnUO5NJS9YGNKrrwQRegnf7iim59Nh
	 78hrrKUuTKjyDD05SDaDUSZe4xafc+Q+kZma7xF+/R3eNihmxgQ6x7CFilij9Yq0gt
	 Vxqj8IxKmtls2HCgGPCYbmJeiaSBb+DVClxXh1sZ+F3a61ELj8akwxj5vrETwtRrvL
	 haPQqNZhQANIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4328C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 12:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171309656279.30951.16985877232706258430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37db28307f9526404c6144da2ddb000b798eb3b8fef686f11017d085e2a45d4d
Date: Sun, 14 Apr 2024 12:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713096562
