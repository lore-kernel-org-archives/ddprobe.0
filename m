Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B48627AC57
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787806234; cv=none; b=myV5s901TSKbg37jcxhkN31YA6jCt/jYFaJA7yMak+SbNOk32u8Wn/rxMtR2WClxhwICKiixXu4stfkGtIHHNbsIse36ZJkn9/pITLbVa99hu6gXZiuv+rDhmhRpd9d15fILVWYhPJN1wBTVxkmtnOMDpxWh15D1xqyJJrxsNyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787806234; c=relaxed/simple;
	bh=CW1jZKys9Vl9e94VWJurYqmnkMJvlpy6eYsdBnUxt30=;
	h=To:Subject:From:Message-Id:Date; b=s25m+KE6xhugljXlxPHYKwRoFJ41u5Mh2V/6UK2VOc2qHPot7nYn9fabbjLAysySbyyCwCNZ6Vv+3wn/dhbUBKdK2FNJeLYYZI+ju12Rm9b9AlzIU0BH9xBugCi7b0yZuhBXzANv/qlqPvDH0CAKZsYPNu0f3e0sn1+/XW0q2PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxR+lyus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxR+lyus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1491C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787806233;
	bh=CW1jZKys9Vl9e94VWJurYqmnkMJvlpy6eYsdBnUxt30=;
	h=To:Subject:From:Date:From;
	b=BxR+lyusPbq7z+twTouH336FPHklCAlsthR8byb4SZ9a9Jvem6tqlccExwnfj3fWL
	 YtFFncVrNYr88AyLlj9D6orDEeIVkG91zycMLO6jaJ49uLLaCgix8FS4iBQ4xfSN0u
	 m05F90uoZdoJ898bXhn/pmPh8frCT+4x/z0CBiFcXNR1VtiAO34/0FSdpcJUWoiNGa
	 zPvSKMBd26X+kfg4a3YStP5xkVcm8WK63lHYvj86Q02vtKnnHnnhIHpLzQ/JlhT6Uj
	 P/JEV1K4MtZSo++0KzY28UIFmQ5Mh7yThA22cBiJzqptvQvbjPNIvDN2/QYOjP9X5H
	 sXpe93tL3qsfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEC0C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780623368.21129.13521755187083101643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec9e5161f499592d5589bf5f39c938a58db394efb59a1eedafeb2618dd86d94
Date: Thu, 27 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787806233
