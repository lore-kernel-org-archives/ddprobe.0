Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527EF3AA1BF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785979834; cv=none; b=e4op+3rwQIzVhfQL2HLxnZ+Uj0xCUipSyY9cSQgDpO1ky4m8YgyHOle6wg1nieNYiFsmH9G5xQWDkNnOU6nH7kpv/zovtQjyGJllK0nXIw5T4b7rxwtIKnnyT8q7P1L3TuylV801C5s6x9TJEnlduKwhz2VjAh4n+4Uj07TLVKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785979834; c=relaxed/simple;
	bh=F4s088LlMe+H0DII7NyA3CzfKxJ5Nbe6+wgjdeZbT3o=;
	h=To:Subject:From:Message-Id:Date; b=FVNPJ3SDkCUhhpZ2SZEjoYqy5kqamFFrRYaVjCEfyXeIQMNhD2BF7CYRR+UDT/CODrkGQViy5pJA0iMsvb8SDJpWpeXjxyOjqkhIoTWlPreDNHiKrF68+JuAqysSU0bSjJXiqbadsb4Xe9K81j9Yg93hIZgwfiIyeyOj34fIO8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpuGx8tM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpuGx8tM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFF3C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785979833;
	bh=F4s088LlMe+H0DII7NyA3CzfKxJ5Nbe6+wgjdeZbT3o=;
	h=To:Subject:From:Date:From;
	b=jpuGx8tMfhIiiatvH3Pfk/4gtmiI1EJHrgO6BrOzi1aoag8yZijOk9zWK+RscWOXH
	 MKohC7Y69pgCJ6I6MVQs8lKk12sLEbvT782xHHSB+X/UanB5uQIM1hOVSxgVTnZNhE
	 8BmCd3S+oOgrX8Vye1zM6GqQHoy6FVsN+ExDk+bt8f7GG5j8IuF73DXeyBnjaUqldE
	 2LhLXnxyGe3xCFuofRiUBvn2OFUb9VFhLyoCkEUxUf3tpOMm1yR1vRpsDd8qlMq7S1
	 cUwWs1tBN2WAp+A9v9nICzDWggi6CB4Jx6MXWzI6BWLAP/NUlN8qSR7faVPO5DfjAy
	 Fz/Vi/LdUiCng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBFEC55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597983369.18662.3609865816459207795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f0fc3281f56eb0ab7a12a29023dd643b7dc3ec27c33264dc236893f1c61aa6
Date: Thu, 06 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785979833
