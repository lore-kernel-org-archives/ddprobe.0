Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9A015A864
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783301914; cv=none; b=JW+20iFdEcu6cPZRr/8Z0WEXqa+cw51AMBr4JcMlW+6QPXQpqpyOYJO5VWF6yCFQbLUiRbB3Vpd2O9E48md88TMJqaHoqaIIG9A17cbbydpzrtPa+jMsfyoTDwMDb8u/65i5GH/Hon6voeWKmV6U2m22odsHpEWuWAfkFC022qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783301914; c=relaxed/simple;
	bh=mgMD0eLbb4PBi5upkBq6T6dj/Qn30PD3CEjpyUqjRMg=;
	h=To:Subject:From:Message-Id:Date; b=g6rdrMTy8a/sHg9vSut278vOf1xYGcprKDQXORBW3gmaQYhVmPXxktrTfQrSDAo6vAPawsTDDie7lcjUbAER/gZM+J9GzaYS/1YBx/X2QpkmaGCJ3eQod+WztRIneZk14965brcdBYq8hc7g4x6l4A8AssMRRbgpLu2mGdf6UbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aeq/iUsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aeq/iUsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9554C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783301913;
	bh=mgMD0eLbb4PBi5upkBq6T6dj/Qn30PD3CEjpyUqjRMg=;
	h=To:Subject:From:Date:From;
	b=Aeq/iUsN/cJ0c1Q+G400G6LvhOaAjNQo0IMg1PSCtSkxwErnvvnCZX6dZS/gkeJWH
	 ZmBkH77M2PJW6O8SIcvVcH0WPA8MMb6BjapQg2FoJZnxiSJiOMRCWlQLU0jHmdXSKn
	 9ko07s0YYx34XrN24UdwjRc5Odjvah2/VIdeafVcg02lZ6H7uKqwI9UBCr7dz2ChSX
	 WN6OnlxMipoBsdKSOFnPB4lYANpzWxWwfIZLFzEUjrwEUOT0jMjL3HWU0OZ68lP1/D
	 J8ro8QyB1wwF5Xy6yTm2YAqFhPxNGYL+gD2EsRNootaXumZdT1qg/d4yTN1TASQbPO
	 8B3F+J9nT8djg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A839BC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330191368.21964.18427581372236667803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3540121ac6ef69b23efd45021b536e61f9eb13c444bc51c744e3650b886f9bf
Date: Mon, 06 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783301913
