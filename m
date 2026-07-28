Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349DB44BC9F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785271234; cv=none; b=FPJNNNORisl6Sy0k6CN/qXZDu7lyW9e9ujtzNjrX9SHnFzKW5opQxup4nVOZLEToBeSt96QphfORbf5qXBJP+hVhsaFgiNsicsUBzt7UMx4zWenQK4FUGI49dFy9ODvZMAZtgDq5wfbY3aHPmjCJAbqAgQolvgiLBNGXZv5n1AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785271234; c=relaxed/simple;
	bh=by9pVeQxvc5iU57uQol8umyvAPBkFZTdwl8+hlHwNS4=;
	h=To:Subject:From:Message-Id:Date; b=oQY1h33dOYs8eGYwvGwX0hO2UcD0D6jOb4bm6b3igj6eWFgk7tXft5sWljgMfbUeP1pWL19T8iWeD17P2Mub7WTgskTmCD6g2zG2UyRgDJaGboii+m2O6kDhsdQpzY3E7O+G/6ZEbNKBsSRGoxufkROMxS/2EYhO4ahUyo9F/tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4N2otrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4N2otrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01A2C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785271233;
	bh=by9pVeQxvc5iU57uQol8umyvAPBkFZTdwl8+hlHwNS4=;
	h=To:Subject:From:Date:From;
	b=J4N2otrJNaK02GxHNKaKqEIKv1feuu/Q+DUpLoEuZfaWNNWnGMeq1D4q8N64smkX6
	 7rEsrGKAZdyF/6GwYczHFpNsdpGmVNMm+L86wCnZ5PBRBIcn3ORWtwDShGUfBM7HcT
	 xuGTK6mPuVi/fElOHBzdYWgWhqWb3mNLoQMUoNvOv1r+gcFAFaj/GWylwPc6cZy3Wd
	 V6vpVMJrFb7pEbe9dDJ0fF+YpHMaHb5gYvtGpiGMIH6TMQTTbjHg0DfmOchloiNIq9
	 vvNzUv/g8fRbt74Rj5Mcv9+ENnq6GvlZPpX8TguhTD90CPq5O28p6yKhmr7BOw+B46
	 gYeX6QZDyGl0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9799C54F51
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527123368.24335.10186306922064635658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a42123239800d932f738a25eaa42b51356ba63a44030e163ac854c34207319
Date: Tue, 28 Jul 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785271233
