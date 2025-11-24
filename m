Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA788634F
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764016374; cv=none; b=QpR33+QQCYYBFOpeNNjYkScXLygG17vAm8hnpAuCerAURukJdB2wPLHUfYOWKkbfXUfytHnEelq2xh+HJJFNVq9Gwvmih2iG0eL4akCcEdz9PGqKK1658micHKrplFXhxfL+FzLZmFjxF8KKjluhiST6GqKobbiBeLB9He8wBzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764016374; c=relaxed/simple;
	bh=BstAo4c4VwAtMB/gL4HBExaAK8yFx7QSUaxJPAvr3pY=;
	h=To:Subject:From:Message-Id:Date; b=aczXXtCfNZ3ciA0U+j75sx0bkLgFC9V8rOvU/zdFQhmmPDJvd/dBaKuInGgyujQM6pS86tNJsfBRensHxTsODz6+JR/W6UsIaM2JzHiJ4ezvw5Bta8aEo4PXostWVQX3GQQhFg/AhuGBkcnW+J+oxuSQZs04u/jpoyYU6Tdu/Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNgX4Piz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNgX4Piz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC261C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764016373;
	bh=BstAo4c4VwAtMB/gL4HBExaAK8yFx7QSUaxJPAvr3pY=;
	h=To:Subject:From:Date:From;
	b=XNgX4Piz5IH9GW/19lj4b+Q31i0Hw3VB6xhHYs6pBv5U5AU4kajrGwscPgswwouJB
	 iizYqfnAXwEa14gi5gUajf1/5Q7i1aAhmdGcy/vm4Bii6JIt8tu0bgR5A3Xecbxs1f
	 cHAu01WcKYPrkpvBUM2I51CA2Ed1VztmuMk6PwdN+oq+a9JzHxetmMRs4a8j8eto8u
	 jdLxRCHbrBNm29h+7OLDylY8AL0FZqA2jfjIFQzvoSHXatHT7J76UWftehwhzc+4rB
	 EdABPeA7dPyk7AIrxN57C0yH0dk5Z1ppH6HsxoU2OUNoJTUL1QrD5yKGW/D0SjWT4c
	 NKesq3hpM1Dvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975D9CFD355
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401637360.24077.12818837279338594866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1341226abd6558cc37360eb7284ecc9b7d7a329eb30b106e6b30bd2f9d8efd9a
Date: Mon, 24 Nov 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764016373
