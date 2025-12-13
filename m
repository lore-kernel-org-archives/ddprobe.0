Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC66219E8
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765611774; cv=none; b=J0adNaZcZbHxl9ZE9Xd39RjLStADFlgvG/EPRqLoqat4jg8X850NDX/6a2BH6q/bxhrTViGQoGcqEc6w01I/Z7wgsmXXxfN/PNDBDmuDfWmqcFubbUsltlGTVavqZyG97Foqw7SGQcV4VUcB/B9vmr1YnCljHnMRphNyY+jaUnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765611774; c=relaxed/simple;
	bh=cNtcwfij+OqjAI9+tRIBFjlaze1ezmAa50Q/LJWqea4=;
	h=To:Subject:From:Message-Id:Date; b=ga+I5/kuwf4p9D48IHMNW/kCeqzsHVtsyV1jvfjyCDVH33Eo9cYfXjQ7awenE+fhTbRC9HNWBKhY4zH73kIfGaRJmhUB06VL/gYAIEygWbOpBurWOtcz/JAWb1OrhPYeRCCsv4mRu5DRdLuCls8K7o75wOZ56WHniTEnVIEKHVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nk6SpJcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nk6SpJcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A595CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765611773;
	bh=cNtcwfij+OqjAI9+tRIBFjlaze1ezmAa50Q/LJWqea4=;
	h=To:Subject:From:Date:From;
	b=Nk6SpJcv1vRIAoF8YlgCeiibNQlVsRdvzRvFz0ecpxFpry55a7Ncai4TvHCeUSUzR
	 /a8So6+m3bI6RN9u5pfHi1Pu8LDky6nIuxlkbQXbmk3d3oyVYdSTe223zSQOua5UY2
	 tSk4crZ5rZKhm9O2fI29wGOi5yeXUwOIHeiTQpJEtHVsMn0ws8qmWqvMu0l7vSvTDZ
	 K9q8jPuaBstpMOhRODCVlgV2Pb66wwS1gP05GXY6TGwiUSHyLZN4DuuLFFUxAeY8At
	 o1yC80KTTSkWViXObB9eQ5dWj8wOB9i5ydBJHlJFx5MX0FGM7cxkLf1jBnXsME2Psj
	 BVD/tEpoBwMPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90990D59F78
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561177358.19636.18190615714085380214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3903ea034ae746416dcb2c87ff4924ccd2c576254f1f87e11db776e9ff2557f2
Date: Sat, 13 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765611773
