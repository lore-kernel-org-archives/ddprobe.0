Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AEB175A62
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789918234; cv=none; b=ZRGCKBHDnv+LIP4zN9Dl+BsjARtTbLzvc/nmagAFZhkFSDSL22kf5tqz5xPFD1z9Bmi1S9aaWplmAeFddynyo0LyqtVccNE3ME7P+mh28baibFqR17Zii2AKSpqCu9DzaXOVt52Kyml30vfOVZsRgNPGzKbBpqlhSF3SUWO5LjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789918234; c=relaxed/simple;
	bh=Iyq0XM8cQpuDo9/BMKRNDfvzJ+kiblF/oIQAChkB4cg=;
	h=To:Subject:From:Message-Id:Date; b=ic3GdTfUosmF364EW+ULFs7/BTbw4NgM3qlRMRXxP8HypKUa9fri2GXWw45eUuE8xdgWfqMmuHeswNys2bAT0PevTPGINVJzLi8Xbx1+9RW9bPI6xrIQwQDtEMIKxHyDs47mOAfagQv0ZLSMZGL0JCKJZwOIa4Ofhrsw/LK247s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCN/damQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCN/damQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5CCC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789918233;
	bh=Iyq0XM8cQpuDo9/BMKRNDfvzJ+kiblF/oIQAChkB4cg=;
	h=To:Subject:From:Date:From;
	b=MCN/damQTl5VUa1rLaPpe6fbjTUevPvJnG4ClpWXlJUiwvHdQSRLhZ9umLqqW7AKS
	 hX92xZlPZ+zBAohY3Nt/wMWVUfJzATU0HtwcImFLRjbXHAG5nGCJML7Ze3wXvEfHTP
	 rntH0msSQtz5nyBCm+3hWI/B+LjO/pP7pX2fsPpo7YCdyv7JnIVqlO0qmUwdU7Suqx
	 uxvqq/po1B5+aiQqnQSpWcNoiUc9ZwWAc+b7zjMyQz8TtlR4+CYcxRFCMwAQr4FQVs
	 GR2fVLjfifVyJc6l08/svwSYEj55ueAvdEiAb727S9s71XzUih38IyZFrjeQILCes7
	 bguDHCRmR1zDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1278C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991823369.31128.14245725071505121399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98080be4ac8e032340fadf5da7fe063d01d8457a42472bb920eb978afeb57b6f
Date: Sun, 20 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789918233
