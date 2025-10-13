Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179564C79
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760357394; cv=none; b=Ir9qrD5M1NZfoDzHswJhRBkC2VPj/keRTmJhmbYYXJEfEsS472lu8fjE3YMIu9Nf5kNDFsjckGBf7jlOm5a89zonfYYq+OuCTzR1egWLOIbGoLRlQmgb6zSWT5aSisWhiL8b/wOQ+60+ZQMPCQQlu+UcoshVee12N+n5Z7swIUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760357394; c=relaxed/simple;
	bh=otdqqR3h17aSxDuIqNCwklAFoFVpxHMkYV7bkC6/kNk=;
	h=To:Subject:From:Message-Id:Date; b=RED35FvS57kVRgvnFLlaz79VE/J/4S/E83l1yi0wKK7+5sgZBCM0kSfAwqUEA5P+MVFZiFJjs30MBhPBNfCSp1NLpHG++Mmd9c/KR/tna7AAqIqj4ytM6glRiEefWRDVtIsCoXPX7PwxhGtCwXSZHWYJ5m7XRFJIEBaLFnD0ULU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqM0q6JK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqM0q6JK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A060FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760357393;
	bh=otdqqR3h17aSxDuIqNCwklAFoFVpxHMkYV7bkC6/kNk=;
	h=To:Subject:From:Date:From;
	b=TqM0q6JKPm9GK6O98hDCVXFbsF3w+g11H2dzQbZc88SyFOIa9iCiALg8gqiMNG/Ru
	 sK2Y13nHT37wFHjqc3qcSf8vnCRIEL5eJhMHWqjHdU3pw8IqHkUviw1AWvsiQoIXBG
	 OECvNOBOy1ufhODtcfgZLdONSR6A6EnE8D1r4x8WMpVcQqvi5qpvBiPD1wlOFjIhyY
	 XQgq7n2s8rAN2tw6YfOu0abe/1uQTTDmC7NMpUxdyEI73dvYZwt5XLiAadhJjQbnlv
	 KBsmN5dtVzIEgvs1W3yMyKNC0yCQl1Scax2duSWD+MmvpjTk8XHcqdp9wSaxfG0UDV
	 7Gx3/9I700i7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91095CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035739358.18824.9254813679667457762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cef08cddfef76bf64ccfdf1a9167d46c103cd1062b6c1221e654e64673f3cbe
Date: Mon, 13 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760357393
