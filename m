Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350923596B
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751392794; cv=none; b=SUeZQjHdR2EzANng4Jp2HTYCvxKhkGdBPzdz0vJ9nAp8TcoeES83jYlL95QrH8BTCnq1WUJdQYzOuvt03reHti595AbG0RglGLgxvc/+NWmp1cTrZLHLdum2TNqTCXdgfE6EFgC+10LCE6Qgffzs7iCo9NfgXWLHAQF72Dn7RZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751392794; c=relaxed/simple;
	bh=+AaeA+df/7IFMaKIxsS+OpQrYBDQsyRzT/Ili9iB7rY=;
	h=To:Subject:From:Message-Id:Date; b=LWENPKhSK83DeJ5VmXtDmbepgOWGdhV7rDXpdop4nj1TJwwH3Oc7f/HcHBeb8Q8I05gB9ZxV3SMyUbM7txOXx+UfPWHFNzv/T2S4rjQR/zLlsiAVJHk2HiQCE8Q7zMlfPBnzmF+P6R5PQxRBfu/fSnmat4w1ALp5XTM4gQq2pBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQaaRe1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQaaRe1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D747C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751392793;
	bh=+AaeA+df/7IFMaKIxsS+OpQrYBDQsyRzT/Ili9iB7rY=;
	h=To:Subject:From:Date:From;
	b=UQaaRe1LccZa3J8RDF6qoTBLethMtlrRakMQ95Wz/mZk8H5VS1arKCmIwXAuL06ub
	 WwgdsxZ/vVvC/69EK3b1ThEDDbmlXnPj3ohEIMqWKk4nzkfIEYC3xY5o2NLgSfecee
	 eMHaG/YNWo94Zjb/PDhmlxNgaDbpzYOgzdv2KOfat8wgDhyCTWO/Akolh3pMxk5k20
	 cYR4GQUCS1psBa7Mlg8HAhzGkhikdJwQWmBMF8ZZu6iaZ09swsj4Bbn5M0xw1pcQKN
	 LgNxQJ3iDIkLs62A1FwkX/EUKgY1rkJNarryPJvpiDA8fLwtCO81EuBn80G1eBKwKT
	 TaDUVRbF0dPkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64AC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139279357.6055.15445254598280332006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3971e269e85b7034206a9ecaed8f3d0faa067104ea6617b93af2e2d3521785f
Date: Tue, 01 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751392793
