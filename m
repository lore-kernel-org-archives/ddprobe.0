Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295702110
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753120195; cv=none; b=pHVENonoqeryPji2n/KW2CQCWQDPINwUFJ5xDPI8lxfGzxO0lpsP8e6xO60Eqnp0hEw/8Z9UmnCIpi7yqi1rFiwU+LKmg5oTur2NTslRXrRCz3ObXo1Q4aM0PXu6Yjy3YIXMbvKxcDWap3LTcRVbILrp5ZMavou5EdjWpxLtCoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753120195; c=relaxed/simple;
	bh=EyQ9HnOFnCVwM8UOJ0cMnSh6DbpRmHsvJGCQnL6sB6c=;
	h=To:Subject:From:Message-Id:Date; b=U/vYU+tvfHfHRDwyJMofyebr4lgJDprNkI2oMKaNt3yltG8zvRLzy2DuRkvq4VY+/3BbFCHNvtYCkVaFQxd+44YeRQIMK5P5UOThGfA6nvj1sq3vN3RfBzpVcoLRSJp1J+w7NglzhS8j6yvuCxqdh0gGvlmAN0ejcRe5mPxn8C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGMeQc3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGMeQc3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2759C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753120193;
	bh=EyQ9HnOFnCVwM8UOJ0cMnSh6DbpRmHsvJGCQnL6sB6c=;
	h=To:Subject:From:Date:From;
	b=ZGMeQc3J6K4pvESKkLskWqLDAeduowYLBHQQVIU/PUXG6s7hlMIFepm9vASgKvICS
	 lFPorfd5fd/8yYI2UMWy3VpnEJGidH48zeJmbEOx2XurZy+6sjbjRifSutPm7OW0p4
	 ZU/YzInfPId1FqdbJ727LpsdwX0smgjIG2FvxQtXhHloURkobUMcIo5B0sMxIpydAf
	 4krUOLNQCuaEFvY8h0Qolf45vKMaZjW2X4Zoyw6LblApMmaM7/0QR7ZgezMbaV2mTa
	 Fxv+R0nxtI2ynK456dsGHUvkcBy3e44CQyC/hu03BQwHA76jeyuole1SuwnfubTMgm
	 X7Q+eVCizRV5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F851C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312019357.12178.12196941126840453497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f683ff85a7d917990dcaf9a78fd4048701d53edbf333ec8469869b3c408d768
Date: Mon, 21 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753120193
