Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A32901F151C
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782057994; cv=none; b=rht81dRcOffCq/4jU1s+dsWUo/nK9IR0G/RGqb7N7VbPMidHIvlYexAoL4x1eq2rme+8TWviRUK8tL6TknRQVoNBO9tl+tRGXd97RFa3ZgKqXH9Rt2tmsW+4sTPWCHeFHFRpXoZA23x8IS/Zgl9wP+MWvYQJ7Nj2bJT4YyJ4tg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782057994; c=relaxed/simple;
	bh=tyaxc7KQamUdNBrDFfXbxB7uyMHfKo0aBfJ1Gt6cGck=;
	h=To:Subject:From:Message-Id:Date; b=GqB1kynkTKg2OsZuQYCrT4PBITRmLuhzLi4XL+H38RF128JDkiCcCw7w0QzRnqraAwvWHeyQiCt2Swmbp/7aR4EAbGrOvbfZ1GXQtGIhPM5xc4qBfHopSB2N3D9G3yLbztF41pv0Rd7Jk9B3zpJlRscbu+z8S0w2mTIBE0k/iDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QV09pPGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QV09pPGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D311FC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782057993;
	bh=tyaxc7KQamUdNBrDFfXbxB7uyMHfKo0aBfJ1Gt6cGck=;
	h=To:Subject:From:Date:From;
	b=QV09pPGIZFHOn54vjGAbSk9cTscUQj3Ykwdy763nlbfZI9i84CK8pTUOj6zpw0CYV
	 +YFgY2/4fFsBNcqWUjG9Bi8bywhsxLPvErjWPWnObsi96PY4js6NYbfunURBvYtUdD
	 LY5nxTNa/v+JIxFO1Gaf6E9b2N4GHg/rB0ufdLQMfJCbVi6DZ8kovwfWCehVv0nBik
	 rioZnWbHfEXVCXYNy3r9IDzhsjcWMKkiRYvkDeRJYaRMuiKR6ScEgnYEH4UZkwoRRY
	 E/Fo30JfPaLdm1Zjfug1YQJ4uPmfIWufxOFNSqM7A7tgwWTPj9fn0Y3brjMavo1Xsd
	 o5h6kvrzmE3/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF10CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205799368.432.9291356804168333095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec054f0a85ce484e07144d119539fa57d5e4ee21988562a12ac64b01cc05288
Date: Sun, 21 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782057993
