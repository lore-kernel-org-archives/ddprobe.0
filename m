Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4B2347C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775007294; cv=none; b=mk4D0ftbKj4XTFdgTHZIGswmbDexqdIFd5FtoQM43NF1vtcHh31/4/UDKOzAJxCoZ5BLp+xBJw+HoBJPh98AZKy0fJG6C8+g8QzRatf5jHkImjjO931P78HSCeaET0+9BKIaW3vNfT9vw+k4FpqbzOfClmNx8kug26L+ri/a6Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775007294; c=relaxed/simple;
	bh=kUuYbjvhzGgxmWvw3QoTEifEugRnJH5H3hZrPkQbF3Y=;
	h=To:Subject:From:Message-Id:Date; b=SwtCM4m0f5eQ3vfcptF3dzsea3t7gdYfhf0w6nj0DaKPBOqLSB47n3LlDEPCNXcjpsgAbVfg1sZxsdajHikDPzX9cOiwokXHvyR0FiMMLP/s3DtSUgiQjkZxIr1haOJf5KN0Ylu7VdMrQaOXwmRH83/iotT4s/dNT1LqDnuwH0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSeVtmr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSeVtmr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA41DC19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775007293;
	bh=kUuYbjvhzGgxmWvw3QoTEifEugRnJH5H3hZrPkQbF3Y=;
	h=To:Subject:From:Date:From;
	b=MSeVtmr7acCV0JMUmW41XuDDiyLaCgJFZQ2LRkXdrPLdsscjczgSV97AxstaOjZEq
	 gC9IwFJzO4bw4UkeSDAXz2xS6Yzw4z7VXNqlliBWf8gmsEW3eCOU/RvxSnrY5Z3GxS
	 WgZT6fcMKFYTwr21ADPaUO+MnwqZksJkKNH4j8T8w4czHq1W/+hUxsQUmCAa49NCls
	 7GxACVzBgHbA3Hv9QtmRSPsUKMBoFWOsb1Dugf5ZIReA+0fcTir0N6GHYhHRIpemmw
	 Krf8uNCC5Herxp3CkMDlTVlXx4sCGTAsX8tK7eEgpBrAr2rqpwpb7GuWO6MC/8rwjd
	 EQsUBLFyt6G7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A698410F9315
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500729364.24615.12482354899033845772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a364c70509a739befe4f59850063ae533421c10c5ac52e9ddf5c85bc41497e9
Date: Wed, 01 Apr 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775007293
