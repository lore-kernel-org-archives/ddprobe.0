Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DAA2D73BE
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757533195; cv=none; b=Gl8IwXJaU4WO2DoO1lyvrg89ZRx1CXxk/IFeAnB/aMH0hniQIETuIy0s7YgTPbN/8zzZij21/k5umfDmM6W4C1Qs/qf635wDH3wOwUBGe0f1m20YoImLhLLAuxAPHmMgJARBsfVXyOrODQgPaKlurByW7iMc6fwdG/H9Ffry/+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757533195; c=relaxed/simple;
	bh=4pYK57kEe1u3RVtGfrdlA1CWQDi1r/jhmVd4wygqc8I=;
	h=To:Subject:From:Message-Id:Date; b=mAIFh9NrapcPIp+lkNmycGWO1+2F5NGkHwF0oaPeaXOv7CoRLnFD4FqY0mnHrbz0ZnQEE4tOjANUtvG0ASq6QimhA8kycEisvdXuJEMMU2CLWzjaMmO9/hPjQoJu8ZDjgIuHpkMu7tT7TyziMeoU4wMqTYkGEY0NdmpmAPFH+xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CII5JD5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CII5JD5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5B4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757533193;
	bh=4pYK57kEe1u3RVtGfrdlA1CWQDi1r/jhmVd4wygqc8I=;
	h=To:Subject:From:Date:From;
	b=CII5JD5puCHqwtQTpaYnhyLrP9WwhDbDgDidFdVbkfOKAKudazDvYLetEqE06hZu/
	 zUtNiV9u5fo5EofDNZJhXfBnXA+vZiRxt1T6biyzvjZ13jCTLzmrYxoipOYReYAk1h
	 x83g8l/FQnav3nESWJr2Yil97LxCjQlLfHNbnp5TKRiIj+xgMl+BiI8KnX/haEi3vq
	 FwG5Wdd98581HNix2BFMx+q87skOwGeA0lmonzGiMTYW5rNIZrgwGUty0CKJQKj0hn
	 h2G0Ek92bAAmduZyUurYRWyk4vpLQUPZBAaj+Ism7fUFbm9g5uPAwLALGjCIvgggv0
	 974tZqP/yGfiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90539CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753319358.2221.13261329466238872479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c832c35e0177f7977d7ae7e30aed6f8fe4adde3a4e51eda3c67860a2d0e070
Date: Wed, 10 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757533193
