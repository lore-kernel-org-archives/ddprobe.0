Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F14E17C216
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 12:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718109503; cv=none; b=pxbc5XGjpfT9bROTJ1WtzKfG9t8EhIRMSPnZ3rMUNd6NmmSo0Ot+AdjUsVOF0LdjFtaiDobmL2FIIknBTn3ifkvOzmQTS9pYOPn4ewdBaH1wdVSHjJlsBPOpE9c7fNveUHQgzzxRv0j8939xhAQxNbZXJBjsa3ui18TIiGgbiWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718109503; c=relaxed/simple;
	bh=Ms7fwiab43Iqaf3Emj8bCejfrgxZCp77B/aQL3tr/6s=;
	h=To:Subject:From:Message-Id:Date; b=c93LnkC71YZ4EJTFmHRZDedk/HsQZ9uYuwfzzITBKprhS8P8OqZ9nKE+f2b5FLQ01JcVR5Rcs6yeV5+TfEz3amGMwneMAZ8jsCW4aTq1tTDtfhHDOTGJ+m8tPmShv7BMpAPuxp1dadR5Q8Rk0daXGXJNQugGsFbFQKziX1mqJ0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb2JRqjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb2JRqjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0AF3C32789
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 12:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718109502;
	bh=Ms7fwiab43Iqaf3Emj8bCejfrgxZCp77B/aQL3tr/6s=;
	h=To:Subject:From:Date:From;
	b=Gb2JRqjVOdo7Gw0qYfMjeoJJUJdd4iR60hRcXMDl824OmXrz+iPu2YXerZWdL2l4o
	 KcdH0aywbHPPZM2ap3e8xssOIGZ2rwyFfm2ICv2XINtst/5g2CHHqVuhfcue3ZF4ji
	 IFiM8+9pdwWs9j7RmqU/B6qawCRSotweHijZZvB5UF706y7Zf8Bkh/EdgGf76SHUg7
	 3GPyK34jTUx0sf276dFLWbvrhp5+KNNTRWYiomcYgjY9en9Rq3wXjY0K0rq+cbMsfj
	 qzngR7MT4n83I4k3GXjCzDVjivR6GE8X/ZhapSLgO0WaepINeQ8RkNsk/EThvz9Bxd
	 VDqJ6NmPVjfAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF7AC27C5E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 12:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171810950282.1335.16411292432510421757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4f81aa86bfe74b9c7f2fdd0b6d63851f882f4c6b14081a3c209a5810a034c7
Date: Tue, 11 Jun 2024 12:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718109502
