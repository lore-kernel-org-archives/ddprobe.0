Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C186182BC
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747773594; cv=none; b=Qk8ULRK8qicEmZ5ywR0IfaFR9Zn9M3VNlhd88iHKAyqwhaJAqiCqfnhyPQoX38E18wbuJtammFcLa8olJ6IF47DY3H3dce4IvLmQ0sJufBm+YuZ1t/CZN2MSvvGXP0IMrmEgHYcuX9TTZ8Vn5XbJ+lzGXFqylhhkQ0m3NwmD1Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747773594; c=relaxed/simple;
	bh=N1JWxAWWOI2W3Xqu5e5wX1PsFmwuHMc4g1S1kUvnK5M=;
	h=To:Subject:From:Message-Id:Date; b=YaE4FPcRJR7+O37+BknrOhSaNU5tx9cD0XCwf7hndpOXr3otaZKBh9gxoiPo5Yh9dYQ/TG+oPRU0kqTXhaIMUxKP97U/yMGIQUOBaRs6V42Yfj45+74taobFRQZntvjTHs9oyfKyr2OLS62je+4VQ/+U3H2hUMEw1zgLwX0Msj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjeB1ev4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjeB1ev4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10C2C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747773593;
	bh=N1JWxAWWOI2W3Xqu5e5wX1PsFmwuHMc4g1S1kUvnK5M=;
	h=To:Subject:From:Date:From;
	b=NjeB1ev4mseHLgdECIq2Do43RYGLT4AJnsqWqs+BBe2U72K6lSt2q/O1OG5Frh9cT
	 O9Ih7PeEo9IzBOQ9pBriA7gGQ3ZKTngCjo7BzQcAnmAdsXM+3DOur3EJJV/jRmeUzl
	 GMwAl1KmVf+q+smizJOhqzt2Bb6ptxu0trhNPmDMWiJoKixfEcLOpeCFf0dfm1jj/Y
	 6Fyb7lqlMQfjaZVEhK8cctgbP46ORjPXP4gr6e7YXm4QUatY1TBH5kZBmo+7ELPGXC
	 Viby8Wjye9ZWrDkEJVh+GsBWqxww39CwZN9gTqQzFWj48r5nVGmKOfqXh5H8kV+apd
	 wmgA3cko4h/lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2C3C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777359357.17887.29243125150326598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a2d4027b08bc5e66e3f9bbf58a6570fe10b0654f8b9a2b25c89c6363bf17f9
Date: Tue, 20 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747773593
