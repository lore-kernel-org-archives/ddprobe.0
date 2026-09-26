Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5029422A4EE
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790455834; cv=none; b=Y8FX3T4FAIHHzmw+uhA3JBKVNUVq3ddF6jt6THdIO037POMmu0CKhhv9L9PG4B6PuY554uboT9wkRiqX5DUJ+IxSXpvaQgdjs2frRx+ZOnQ62wD4ceXpy0ND9tRFrYzZqkddqv+hR7oujZQCXNP8/XvjOHN+vbNgCpqdAWu/uIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790455834; c=relaxed/simple;
	bh=lj9hZJqCCczdFqgjy+i6Esd0D5pFL1crFtuBfiyYd8A=;
	h=To:Subject:From:Message-Id:Date; b=iGolYhxzb7N+8OwKZTUXEVn1dD5fQEm3z0tv9sCPEr6t2ZxMln999XPZVcOQQJ7HAoXTlaN9uM01NZzQoJfLPXMYB62GnoVYJ/hOiPT8wWWT4ij21NoGJSybHeOCVpQ9gh9PLWjwP13gt8Rlpw3j5OaIaUY68HrjFDtibI09CsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz1Ig8aO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz1Ig8aO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59B9C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790455833;
	bh=lj9hZJqCCczdFqgjy+i6Esd0D5pFL1crFtuBfiyYd8A=;
	h=To:Subject:From:Date:From;
	b=Qz1Ig8aOdrRkv27qSVh+V+68JzpxaMGj2dYVnWJXt5WdGHyRQn3SrqhX/aSqodC+x
	 OrLdAyxb5RQPrGE+VNFPgYcBUo8Xs7jtHASlk6ZMwe0EShiirRfmFI1LJE5UWh4pgU
	 JzL15i8eo0IVP6HbjlBI0DLs0J4nAsDhA+8S2lWEON3tgKh/YoYV5gqaex+XgvS730
	 mVth3kAIHLYjFwverxS/1CuQ96LX+bfGQoKgdEln1Omti9Bt1O9KjQ5fmRRHW6mQeO
	 otryNbXs6Ymo5T4wHLBgRmW570VF1A9kzkPQ7rZJkOh+FXkFE5Sfzg941Z5smfHdIC
	 SWPbNtnBE+1Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA3BC9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045583370.17867.10415204543816998949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561a7144ce31bf8f14207b9c1c630d89daccb75dcd144a5ddcb45c7cfee60e7a
Date: Sat, 26 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790455833
