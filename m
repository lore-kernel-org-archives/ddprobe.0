Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E775329E5C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769420034; cv=none; b=Xw/AUcJ+pmt8Ddyhgrqv6Vv4lksEf62E+wK3Vsp2tOcJQoTTrM/U3RfGqtc82YoZ+fgRmSVI0ZzLleCtMw/eDhbDzDvM7B7dYtOflnR0CJhPIep0M39xocnB1omYcgArhip+UQZGMFzIr3wKMyrgLlgw/7gDjSgbcoW7T42r1GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769420034; c=relaxed/simple;
	bh=7HXlh9CZwipuS+Ru+BU4dxrJ7yZDwBcXNliGRXO9K6o=;
	h=To:Subject:From:Message-Id:Date; b=NRf/iJsGeXLvVYza6K9mCyR8swdZxM3JeqbFm+LCWEF5le9+5dygyh8H78zopGCy7aTFwgwtQCuUl+leE5SEC0uLV5jR1rVZUpp4wAXL62emXUqhUwbVAwdqoxRvtgPPCjuOVc1FECndHdJkzS0OU1udooNfovILsi8GSiB7N2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vf9wIFVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vf9wIFVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC12CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769420033;
	bh=7HXlh9CZwipuS+Ru+BU4dxrJ7yZDwBcXNliGRXO9K6o=;
	h=To:Subject:From:Date:From;
	b=Vf9wIFVLoWIExv73a0OnrCqdqI3LHSPFOSWp0ti4nuFiE1iVirjZ1KetPgfEPnaJu
	 0Rq8DKaOD44keXlzY3HDdiBeiA0YPpHg2yYd240l9X6g94h+zJ6FjIDNRhEjCQ7cv2
	 WUFU6H0YwN9ZDdhWbF0R6xn8B4LMjAGVnQ/nKQwomhGd5XX6tihEl7NzvQI9+NjxW/
	 +ls4nFpWbl0nEMdoCWYQF8dv2frB4Y7azPlLdIPLxApJ85hmQ6KNm65dHHye8czKLe
	 mityPvGo6U8wqraM2r2quEWdUrUVabMagoSkRHMX9WL5EmFiewwdF1kaQ9uZ+5uwO+
	 8XCuSgullpi9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5DEC88E7F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942003362.21193.17406026900011448409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d40f815eb7a7b450c3b376ea23403c82f7e3552e1e43c0808dab70adbe12376f
Date: Mon, 26 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769420033
