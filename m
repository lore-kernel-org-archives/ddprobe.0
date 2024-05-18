Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479DA6AD7
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716052343; cv=none; b=cyYofR0a0EA3214lKn8rahBn7dJSlm1th1Rep2YIHtC0gDHV3LHH5/CeuOhffGvi0tn94qvt7b/eTEV5hHh/rec2BoUt5gOHryR0MSj2alKQkenqpp8MpX+Z3ID9qiUEcq5dQ16MCF0RCzw+Z2zwn7j6UjJ1ZTICEw5xg7+rk90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716052343; c=relaxed/simple;
	bh=MLaZ3m/e5syhtsf4cjh5wLY9eAjAqSEogACJqrllC0I=;
	h=To:Subject:From:Message-Id:Date; b=Fdk+ghZ4MZ8zmGFH00vGs332VU69DqYbjd7cO0J65mkfvAyQ5dQcuweU2S3l+bfaoUiCmGBcid+qZLhrVSLGYNGrFTNDYPlcFaQTjzhmimukR2CXLmfS9fgU74/v2T5+VayNufMaTYsA16PE7O+RTGx8FYGO8hQd4EQCmyrjRMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tudoMi2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tudoMi2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D651FC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716052342;
	bh=MLaZ3m/e5syhtsf4cjh5wLY9eAjAqSEogACJqrllC0I=;
	h=To:Subject:From:Date:From;
	b=tudoMi2xlV+v9o5Hd1ig1QoX4SASzdF7Jog1vloXPJvp1QKCvuxqKKSqB9I1v36EB
	 YihoyFk6xdG4c/Z9clOjoLiTXXyFi1sSzeyInRwvivefdtvKpHudYGPrzwcr+Ko5k7
	 QCIvptT6w4ANVcNnSdjQrdbO6VdAhMvb+Yu5neOPp8+Ihvh3Ou7xQIj9/D9mX40UPe
	 TOJAJOs2iAa3ODyhdUBctrSh5c34yiTj9wBmOJ82jAU+qoFOKyEcvHVf3oh150jpRY
	 XEzk52eq/rc9gunJNeZO61BJo1YY+c+DIctKCC/gqi6GKX3W0TiCGWEJWjueJDVY2V
	 kWn4kLt4YFKLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DF3C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171605234276.22962.8499415398963962049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc08a8b15c65716d145449aab5239e9caebf08ce8e324fb5246b1cb2d7f43c5
Date: Sat, 18 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716052342
