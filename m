Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9401F9ECB
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771008294; cv=none; b=RQLPb1XWBxyfTbJ2ocycaeFMgDUppPbgFdAyhSgwX6s2VeRLeA+ewK66y0L09r9ztAMHGP+fRWzgbDijQnCCClLF+ZghgCNgeDBHYIQGJsUyxfsL9K0Ivo+RtqHfZTmgccLcpBXHnw+kC7q7DVaQlz3kEebE97YCxHq8hIKN474=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771008294; c=relaxed/simple;
	bh=Veck3+TLrI/+vys2ThU7Vkowx3i6mZaP3w98lj4+8cc=;
	h=To:Subject:From:Message-Id:Date; b=XPtbCC4okBvet47t8VciCTwAMd7cnfatoWVLOlWL4QA8bn2juiQtfNMS9pJsUmF6Iq23jzFBNcr6ozTX19Np1/V4a4dIouB3qeDDc9H41YEKC4XPO1spjm/X1VAF50Cj1al7zbdcHpY0wMFI+8sjz5gIAB9yC+88N28b/szwcME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SK4GV4wU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SK4GV4wU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA300C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771008293;
	bh=Veck3+TLrI/+vys2ThU7Vkowx3i6mZaP3w98lj4+8cc=;
	h=To:Subject:From:Date:From;
	b=SK4GV4wUkiaZqPGTKmH3nVPxOwwdUJR0W4Bp5G8uORTujjaCWPuNgrDo+gi2hMlYC
	 obcrogKlHG7pLtImYHSgW0KbIpgpRTblsiZa2cX5D7/P9qFWGY2FHn8T9WditjC+7w
	 yyZNIIZ5EGmXckoUAbUf8rmz11bwc7Y+42eyQilPxKjI2JUvhg9JU49AEpv2JHwx2g
	 N13D9i19waChqcTdsBjDN9gwYQwoLTXunDVT8kJO0aF+SOg0U5r5giLYOpJju5KsPf
	 TO9ugSoPzalQ0YIE7uw90ciDEh99zEEltob3Abmyi45Sk2RoxgeQ5J7XKWGU3Twqc8
	 akRFbJwymfZww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A3BEF99C5
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100829359.12594.11863335263849303237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531dc923b8788833a5df9ec27bc81b8a4e92b509e0ac46293ea3b5feddbbdcf1
Date: Fri, 13 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771008293
