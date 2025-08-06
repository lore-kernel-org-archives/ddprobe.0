Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EF1246BCD
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754468994; cv=none; b=TJEl29n7FYb6DnC+9CUGE6hJOcPyeB1QMNPylUWW+3mRoSNA5q/R5MJYXUe8cIFy8oot8AWeA0pcKCeH4XHBiLGFuoLr4rr/vILEzYMWweVAsOg63rCcYOVeRNDo4WKxyV+cEtQ0wF/79fCN2wVS1bQPip952yMKP3s91ZPZNSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754468994; c=relaxed/simple;
	bh=wF57g55YEi/NUAvMKFrO/1kwQ1M0VvruaEXBMXHNCeo=;
	h=To:Subject:From:Message-Id:Date; b=NGSI6pJbj9WJuhaWIA/oyoRnxEQV5cwbdpdJX/+h6Ylq7k3Luwr4NosDc7v8m1CgUQ7CuF1dHa3EFZwdxm1XMLtlH08qbO2H7q2Uf0IemcU3Gx1DKWIdKNpKNph/xvY7u5jV4u5u+evK2q+7ljl7f5SpQLI8tfS1F7+RWKStTLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ps58kjbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ps58kjbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53EDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754468993;
	bh=wF57g55YEi/NUAvMKFrO/1kwQ1M0VvruaEXBMXHNCeo=;
	h=To:Subject:From:Date:From;
	b=Ps58kjbUkQN2CRA6RbQ61qgKrsoBWS7T1Ta8rlYGZEg7uf5Ztb/CQhl1kBFxSe2xC
	 sFlVvYfvRxmBj14xFB52lO3IlUDmcnxp3QUR0e/4afIIQVCQ9hivgLte0CqtGhLzEW
	 Znd0JfBhkhckJqzVJobY/onVuhRtOueQZJz8m4EgeGBK61xMPd974QLKoZWUKlU54k
	 J6BlkmpkrDdvcb/SdPs1g9jS4P2hEWwDvW9Q1VTKOf66HW/0alNNy867rugzq4vfse
	 1LzhSO9rctRlzAtAD9Hw0r+aMsUZh+xsJsfrrWc42XNXN+/waYrQ28mRQtWo2jW7Ke
	 OBpDFkrgPud4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9511FC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446899360.16373.2862330727163324579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41f8a363cc28b1f724b1d8f00f15173f1ce2d21d79b68c0900e1f07c52ce2c6
Date: Wed, 06 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754468993
