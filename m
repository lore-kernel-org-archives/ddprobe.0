Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0957D81E
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711244897; cv=none; b=ZuFgKLBs8EesOGfqsLQ56omg32ZwhhHtZnHdJ4nTLSDzebdeuWKg0diyPGprg55ir7UlyIPAxD9xkZXI+09iNja5oXlt3oEj6HMfMgAvoQzw6hLGN+z28woQWocme3MFI/RlxJ5LoVyCODEC1Y/X/5F7frmtUJ0iY9sR6JDK8Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711244897; c=relaxed/simple;
	bh=YF9q2PvHU6fB8ao7a4LqcVOnRyv73pQM6vE4ZLpiR1Q=;
	h=To:Subject:From:Message-Id:Date; b=MTWfdoq9k8vCOobcgNVNoPXX0AaZXmzjVx8Vf9Xjtjy1Tczxvtt4QvPcknYuC8denWi6lqnQCBILcNUTCoARiqFlZQy9J7+7MT1cstF9bYd5fiWRyP69ziT5rZo1jFJNfuhtR1Ptq77+Uw/QhIT9MA5RjLGU4Ybu0MiqGOyKbYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcoTa+P0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcoTa+P0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 873E2C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711244896;
	bh=YF9q2PvHU6fB8ao7a4LqcVOnRyv73pQM6vE4ZLpiR1Q=;
	h=To:Subject:From:Date:From;
	b=qcoTa+P0+LN4BbLkTpybOQZ3WCQy9NUB0y6RUOadtC/4rDMzbNBp72Cqf8uMizNe5
	 jSdAhxFTjCaYNKl32Gs4+kv66jMJcrdeqG8gHRW87Bvib4ctaggX4TfdY0vu71f2tg
	 OBQPgyDF34D8hU7NTIpmIf7VXmFyotU6ir2YJx35qqSwacfJWnN9G5vDhOeFbMs1V2
	 bdwSTo3QuYnXP9ri+gWhFl1DcRYPCZE3otu2myi2HKB/2DpdYx/ySDzZbKRJlCfsn7
	 ZGVzFvXG8g27/HpeCnOebXul1sZkpj/YDKmaQgARu6zr4l8AXuHEMtbmlYq9nKyrio
	 sLyJ8J8WlWjtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71E97C54E58
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171124489645.20453.9557143889706443522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf62f3535d515250782374e50e37f0760ba281825c7ebcb107e9f6f0a22724a7
Date: Sun, 24 Mar 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711244896
