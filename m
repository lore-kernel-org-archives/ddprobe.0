Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEC0D51A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718847563; cv=none; b=uQYX/tweJlXiLLfGBIlHYX5TLu6Bgjmv2nKC3ge/gQ2ihNn4mqeirFQcxla8mvOvD840vrtdVSuA+rXZG2rT30ocImBvS2dESpw8yJul1MySmQvwiuNt/VfpxOr+ejeFDzBtP3O6Ci+e9sCvFUuCO09sAWN9JKQW32GJXpP0Rkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718847563; c=relaxed/simple;
	bh=G07TE11gwzSvx/3STHn8xAdINh95eP5a7/om+jqVEn0=;
	h=To:Subject:From:Message-Id:Date; b=uKZB9iYHvYx4M4xmzXbTK0u8znhSY/uku4T+K9UrMx2uI8rsDrh9p4EBKhBZm9/ZRzLUGF0uPwSQT1UtNdN+bJjYapvBeq73A0+ixTZBccdpeGdv5oHNbymYJRvAPufBBISoJPQQaAMarVYorVhSH1bpEMpV4Wc/+KBH898lgPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nq+M8QNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nq+M8QNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AFAC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718847562;
	bh=G07TE11gwzSvx/3STHn8xAdINh95eP5a7/om+jqVEn0=;
	h=To:Subject:From:Date:From;
	b=nq+M8QNN9YBhANtibfHGyHb0ZbZLuS9JGYPpw9p9Q1gXeVeCsvfUz/1TJMeDcFawJ
	 OWPCsXUT9kNp3117tHgd3X6/QiLGZNy6mljZJohf3KOYjLrTHmW4GVi8nq1p2vbJA1
	 9eD7opiakQhtkw8puJAwk1yijjVR+z+U7pCORHAEUngnTKsrn6XeZjsZMiH7+BKmFK
	 BZVRYoYZtTXSTQFGIgoz8MjxRWutGSEmPtjiZWU6B4/5wWWHw2l7zC9kFh+AO2rXFE
	 MWHWy4f/OYimmylGjPF8LrMNxKF6htU7Y0Jcij6c8LWduryQqzKHG2xzWom0lRxzBm
	 Tm7AzzrPmI+Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F0FC27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884756275.26112.7388896119319046669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49a1e21a0b06d701d26d006f8db10d01f14409eb9bb527cfd513746f2fd9ec1
Date: Thu, 20 Jun 2024 01:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718847562
