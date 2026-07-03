Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E683B961A
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783075114; cv=none; b=vCLiOM2t555AOr5J32IyfSd1FN9xNXqb9JWwwKIojzs+VqJjNhP7qR3ybzUlwBu4PkcJi3CUFYb7UkV9xZ6PrLi2AhtzLH8HTVlafK54IDyzZgKLj21lERY7DcGwt3j9FblFYF2yTsPLCiEI/eNZpobWZMyEpZOP20S3Bp+yReo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783075114; c=relaxed/simple;
	bh=SxbR4cFxUEV23hosR/iOg9ITvmt68QmkdKLldid5JQc=;
	h=To:Subject:From:Message-Id:Date; b=EVM7Xl6bjarETofwDq0p+RpolYJqhyc81wJ4WbJgtdEb27H+RBtr3PKn011DxhNT18IhiJQdPwHXf7DiS47kJmdmAgmp16PtssaUlc71blP44z2FAXKGKfhVoIao4drNzpR19Qob3Uxr6QVMB+UM/DksdVoI+HJQcBKO7kjye1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doX2sLmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doX2sLmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB9DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783075113;
	bh=SxbR4cFxUEV23hosR/iOg9ITvmt68QmkdKLldid5JQc=;
	h=To:Subject:From:Date:From;
	b=doX2sLmhXzTSfgOb8Oz5phVTZ2YXb0/cLzzZPNfXyNqEFtviWB+k2KA28iqAE5Pxv
	 nJXZ/46ablWDInMI8gr4V8ASzZ7UbZ705JZvVLixuKotB0izznQSP3TjJm+yE7Crok
	 ccXJTeAbpPPXTwknhujv4JuhVx/KmKv9ZEsBGcuKMcvwZMle+vyoBZppZc/cVTvqmz
	 9qc3s0KTtr6ftrwbub+0DW8fxrv6UjQ3tneLgeNAl4FFc/O/HvJEC6udktBUtzvGAp
	 wOSbSUTBKF9dyXDXJSV684kHe8zqTAMMHYwhIfsykl5HhjTllZxzQFo3aCsZNx0SKf
	 vSfyiMHJTk/FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96FDC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307511368.6004.10466286893716955479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a273b0916e61f029a9383c786bc8fa21f72bcd2a9cf664e8d98b85ce2d0ccb67
Date: Fri, 03 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783075113
