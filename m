Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B29123AD
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746578394; cv=none; b=CO5eu6ZfUWJ1zPERMM07VeQjrIvwx2u/iu/b9dnDKArPlZJ9CUdc2OTKBosOlDkca39r2MYeFHKPLj6rw00NGlbKYBTuuUkMjCZnBloo46GD5EjmHcZHsQCh8Rby8FXB4ttECcCVituLGEuHuF4rD6ou+imkPdGBD6A28hie4WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746578394; c=relaxed/simple;
	bh=m3NOKsAN/QTr8bO4nOjoL1RtinJJnc13maqWkQ+6I8g=;
	h=To:Subject:From:Message-Id:Date; b=Py+gFUasHyTCa88MzmEzqGj6Af9+PVFA0yApt50OAmhqA9sKXuz/D02nOAy7kkYdkTIPk1NOciyjoivHmrubhoag4opi2RyHohdmGezSle8r6Uy2L2Kt9ZMP/TZEhK1mEtWfYbxlpJaHZWN9KIBGAQWFafA/DcRId31GzIO1BbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEBThIFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEBThIFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AF1C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746578393;
	bh=m3NOKsAN/QTr8bO4nOjoL1RtinJJnc13maqWkQ+6I8g=;
	h=To:Subject:From:Date:From;
	b=NEBThIFFptP32qBFJbbdD2wjxi/846IxL2LfqZt/aGCHxxzRrM2roOQlj7jkYxkDK
	 TmKpNxbQg+F9pstV4lNlZimlduR5GB1WAgHPOzrFNqHt7H3ztpeX3wuYoiheIGNbHQ
	 mTSVn7LkBKpgWNJcwNJ3wvmJ/hZAdca1wG6twPGHECsl+lWZ9yc6UN5URxet6BpVzD
	 J7Xpcx6lv23M/3j9Uvs97ZpsTts1L1tpL5ZqxWzCpqGPOOe2nRn+TT8Hf/Caqr9ozS
	 ITlDUUEewEqK9C9hXVfQDxuqJAOb4CIipaOKZvbwmh2yxz8swp6QDIpW+REnYRIjyq
	 czuaZZktTqkvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E439C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657839357.15355.9354359178804831293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab3e8825e6d8962dda302729944b46acbb53ffe943fabf051015fc14ff2eb2b
Date: Wed, 07 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746578393
