Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4003D561
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741067934; cv=none; b=NpAGuxM52dUi7vhElRvT5ZdKsrXazxCn1/gcTWPavI+nze/Gy/IP7xqhGCdZlITA7HdrqM/uR2PAl3w2xD/SvORv39wxJ4YJAQkPsn71ikEBSD2qamTdtNPb2K2CIZzCUSoDDo3wvweyzNKD5XNFHXwIABJexkqFdZVNYOvYOYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741067934; c=relaxed/simple;
	bh=7dtTmr2UGjFHn2vpoe4nnm8A+9ejlC0YyhK9qX4JxgA=;
	h=To:Subject:From:Message-Id:Date; b=m2sHUzqTPbJSQr4YM5cx5FA1gv494v/sfWhcar6YLa/gsK31AF7aWby846Mg0qfeCfzW6Y26IFOIPVTYeQI+tdAGTnCRn/e5+yFhWVne4nwgURvUSwk/s2V9FhHwA+TsQmGZQ1LtNhpiIM8n24Tzoj/A10aDRNt9XMkPDsIRlNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A28SmOXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A28SmOXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE9C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741067933;
	bh=7dtTmr2UGjFHn2vpoe4nnm8A+9ejlC0YyhK9qX4JxgA=;
	h=To:Subject:From:Date:From;
	b=A28SmOXmeW3/feccd3E3kKk5efc9ODZwfsKub3j4pCwG62US/vCJB/nnVsZxoTIJA
	 lOmSZQ6RHGDrNzoTAlVvplH4Zm9Z7LNQDxfjDNdeoIFmFKYZOI6VUwA7S2pLYT3C6s
	 +wQYpsfKWuWKSjE2wQlF/ySuwk6Y9YwGscJ833e8KgSIsIkTYT/7PsRIZ8UEVHi5IC
	 /MDJhDQlHYGn2KtOT9xLR3e6MFbPztqJ5/DImQfbtE7z+ilP3G051BSquEPL8BuogW
	 FLBnIURfvfIO9DckcWbcG3IderorWuertVHX6N0ZPlJTbWv3hXglIo91LqL6gsm9V1
	 Nmpdt+t1qmqNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964E9C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174106793360.12941.11060765103496816909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801e9862141c4745173a671d8dcd6f77cc468aa85ec5439d055ed690d9eee61d
Date: Tue, 04 Mar 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741067933
