Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B0E3DD530
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774345493; cv=none; b=TlsmAm4yDR1t8r1FONV/4hllFMzB0NYLJOARZF89oNTOTvCe68wjPG0qu5lh2dWsOlEgOcoPavk1GCU3KkWcEOzs9guRe/PU/ObT8/z2pf8abhmK/denuJkNyYHRseLc53LHyd4qrZEWpZ7TdsuovVUSvlEzZZqDLxM7NN5FT08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774345493; c=relaxed/simple;
	bh=RutPS8FXbGQQVfxsEs1q6EhHO2cNUy0vz3NS9lg0kC4=;
	h=To:Subject:From:Message-Id:Date; b=qEzBshaSqSzwKvVw5T/eIn1tWD7jw80/w1uHyAFRnj3mYHMV20KzLc2C38376fx4NpCsyZmZJSW3CO3faPV2rV4W3o+Qo3N1xzPIG1f3CJwQK5kfvRH3TCik8f6nMDFCPZiPZ6NcwMnDs4aA4+T5Zm1D7x7D9QT6EsnrAoyVsOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjbJRGBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjbJRGBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ADBC2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774345493;
	bh=RutPS8FXbGQQVfxsEs1q6EhHO2cNUy0vz3NS9lg0kC4=;
	h=To:Subject:From:Date:From;
	b=UjbJRGBcAuoNlcgQiuvA+bJ+HcXqtEa8RS67URltz7UJcGXHHZhRghVHMR93mMmdE
	 0HJ2qb/VCVY3jumrsOmymjL1ROuDPRJVkgjzbqgXTFm/SpMhubJtXSocDd5k059tgt
	 FMpilpIYWZfSvxhhexoDQDCECtISY1+tZHgIfHnpzu0sMku5B9+t8VZCzcVwSrBOe5
	 HhToHhUUV7TtOMuSGTBDNI/gIIDoZdSQj3Z1WV+q5FuN0tCAQ6cZ7K/tBwEGbPMv6L
	 MzJgWTcYB10kgkXgIrTAktxAsTzQDKCrSqolEMSCvH1w+nnng1n1N2CQ/ZfHVsyWiJ
	 8/O/+JGPXzjrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9502FE9A74E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434549359.6356.7751642892889862956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f3befddb1dced5ca04b58c49832b16c0031bd25ce163b8d920de7c38efc48b
Date: Tue, 24 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774345493
