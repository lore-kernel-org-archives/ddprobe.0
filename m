Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB49200BAD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731498954; cv=none; b=r7XlRTfKjrQAcb4nkW5028MmRiGUKojbJUbCx37rnGZbvdO1+JdY6pXXa54ZTc22rLQ6oLFjudGFsERhU4iJeIftwSE4w9rMmc7y6HtahjUBf7VpHXFdoMAbAv+f/BY+LFlosrJhoUUC9IIB+pyWW+kz/PYuBA4I39Wy5jUnHcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731498954; c=relaxed/simple;
	bh=ksZZd+2Z9BZEDs+BuxupdaUPZF3FqU+rfLWQagPEenk=;
	h=To:Subject:From:Message-Id:Date; b=bpan72xfGh9D6PLpSpwUJWa8Szn0+KIzrxoNFelamyatsBHQ12rPzaGJnxb2wErGO2pl5/Xda8BmLYKu7ZMWaqMh6+JcW8YfKl+J1euDJI8yTf0Qag30oy2bbFyFtyWZTpyM+MtoxuO5qwxFti1usE1PjUM5+dl64avtYKr0iNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToJqpQoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToJqpQoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05F9C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731498953;
	bh=ksZZd+2Z9BZEDs+BuxupdaUPZF3FqU+rfLWQagPEenk=;
	h=To:Subject:From:Date:From;
	b=ToJqpQoqHXUqDcpDiHYvHKyq2Vw5AGSd1uDweWBwi4nOArdWtS+m2XACACQ5y/1ZP
	 yD1ZWzI7lco1C+PinRlThql2owLHYarN2mQctsWDenecJhoguqvStVUcY5UFVsWJhE
	 t+59+6YA8TNx0XKCeVhQiXP0VG+rjx5g5gBVTMNnzMe0Hi1BBW5wwzAidzpr13MyEw
	 O67A/YKIIJ3q3PXubZYHKV8qm6TG6jDzRJ8npyeOPfrX3VWSJn48usQ7wY6sISChou
	 I83YB1ZmPINPOExqKmRM1tVi+QnikUZBoM45m9B5AG+sCxmXRtBrW0E90fo0/wAmZf
	 tHT8X4L7LDa2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E00D41C39
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173149895367.18556.1156244583071161684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b58a7ef707746f9054e29ed27ea4183969a281f059aeaf39ba6757ce207520
Date: Wed, 13 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731498953
