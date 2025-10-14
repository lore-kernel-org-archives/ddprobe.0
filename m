Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112AD289811
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760472594; cv=none; b=TWNM30+mCNzwRn0silbGpewiKmLns+xYAgQ6nsXAR3bq9Fa3f7TGcJEkYNCA1rmimTsq/cxTIJl+MQ+TQxCwYEmCXF7wdWahJXdp2/gb7Iv5LvJBCZfLaLbINNAHowo05i0J80Ri3Wbep6T8p9AL2WqHMVsR0WTS5ooKqjaECdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760472594; c=relaxed/simple;
	bh=XCtpit12cjd3LE4d2lusAxuOfRtwItwZWwQxiqHdssY=;
	h=To:Subject:From:Message-Id:Date; b=WajGNMeqoYLwfPGInZodtfvanlP8sTdwItJi/v/8S3Q4EDvd6NQeIL5/FJfFyvUIqfeOvPdHqAFfQc4r2Wmil0EQ50rSa21SP84qHLu3NqScgxEQ2/5ho7dvYjWWNmHCG1m3WWFNP7M7sgSWspIKZMZVAxQx1HEPMFms9Yoxzls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/Qdo2Fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/Qdo2Fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0864C4CEFE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760472593;
	bh=XCtpit12cjd3LE4d2lusAxuOfRtwItwZWwQxiqHdssY=;
	h=To:Subject:From:Date:From;
	b=B/Qdo2Fs+Ehtgzb+xM2S9Og+N1ykzrN6GrejIvLy/n/LINlhKotV1evoHhle+KMRK
	 TeVbsaIoHiRJUgevr1pglRlGQSvN/s4isqCt9HPlZ2ECIV/2XGDRzhHZU1c9DfT216
	 hnnGGfOKcyB6TlN+AZPhdln+VFoC7lb1KedVIHsXf42FPOgsRIcvZ5pZjUGNENBX0u
	 9uUkjefE3HLXLyuGShfDVD9fdAOinpjmen6DIAWnEyPqSXby/0EE6cwXIAqBT+1o77
	 KPjc1Xt1hvirX/wuuqrmQz6EXjEGdQft7OgJgwYiqNqGkzPkyGEd2+gRla8zur3g3/
	 XodEyZuFEbu6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9086BCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047259358.12886.5552219609387850435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c76c6e90e3363fa2850c7a562052a3afd624ad16c8d5a9a3a856d0528eaca3
Date: Tue, 14 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760472593
