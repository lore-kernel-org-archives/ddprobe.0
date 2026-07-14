Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBC7423E8F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784071114; cv=none; b=E75CQlUpZZKGF9NCrR60EHFFxQ8ytt9AqsH3A+heJCfGgcpf8i4DzYw5TfWekvMyyXogcnUd4XARKUrDfwGrO2hyvr+FKDxBjp/UjUXJALvLzl5pj8nn6VJlbvYcWpdjf3s2QV415ILZjBib3vJBU/waIYDr4Vr+hnOHCe1zplE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784071114; c=relaxed/simple;
	bh=6/O6iZT50At1tX93NI78fvFYHCdfFjEpT4ER0CoooTc=;
	h=To:Subject:From:Message-Id:Date; b=ZhBc8gHKQf6aL79uT9O5h3hDp6/NuvumL/z5NGpnRjLln4jHFQ2ZOMMCd3PxevG2+hJAd65wg2204087wQIEespEZUbHJwGcBlXztgyEtKxXTnqITmmy44/cIoCukLnvqbscUVYx61vJIhYpc6YDJBsOYJCAgJaTiINB2fAXgOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDqhad6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDqhad6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34A4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784071113;
	bh=6/O6iZT50At1tX93NI78fvFYHCdfFjEpT4ER0CoooTc=;
	h=To:Subject:From:Date:From;
	b=GDqhad6ttH9N9XLv1+fVDZy2TZUtvEuxtApzjzr2BmdFW9UPxy1uuagpwWA87qUHc
	 Q+jviaVU4JYGAoP/HmIeJvPJ4P39CtFBbJqRGYPMLVihOutANhoY1vHvkTk3qoA2EL
	 aZx96vWtlZMMUWIoVbxFPMJMt34MnIWLjTpFSBShUYQZE5DkPoWCyB9L7LKYm+7SdT
	 2X9wDizeS71Lh41UyTOgwWMPSlc5MM56Kh5hJrvxdoIOWnaYhu2kh2lwiR/hu0d9tw
	 UFDlxgCETXNU/CLVciTvw6X5QTExEwx/Skg5IfdNtjFJ6j1+ivG/tUStJfGh0U50Y3
	 ojA9fjYNZi9Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDF1C44507
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407111369.7043.18028026343677992044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfce514a643044e7e9ea475f0b029c8364f6c316c4400f2497cb48173c886e7
Date: Tue, 14 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784071113
