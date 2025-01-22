Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3B7215F7E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737575754; cv=none; b=d7CkkeQssvkTpmqdCPGoaBndHwuJ4AyauiXW5vz7j0sNDhQKT8J/riZlOgmhmZgCXTx4UVLZPSZ63KH0mEri9sLyvzDQOgoecW5UqvkIaSCTHnNflHoN7qtsFLqi9ZaNDHrGBitqUbaELKrJ319a75TA9D9IoNtroeL/3cIiRrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737575754; c=relaxed/simple;
	bh=J6vZzBwvLgkFt17RRAXLtmXazjV3hfjYdGswVUxW0iM=;
	h=To:Subject:From:Message-Id:Date; b=dhHcH9W3Bjgg6030Rymeok5A8Si26tQQlvEgzR07FGltuq+ypRwPZkQu3aCKIqcLGTzyPRz3lAixPnyNnbuNT5DX3yb8FXjAM6F3lwjdzjfEOLuvdhjHR4HiD/8CarftIS3OsWsBgDXoLroNg0O6Ky4djaNwCCdZvNlFFOHym/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApPwCWST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApPwCWST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2F8C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737575753;
	bh=J6vZzBwvLgkFt17RRAXLtmXazjV3hfjYdGswVUxW0iM=;
	h=To:Subject:From:Date:From;
	b=ApPwCWSTz55a3IWMtrPpYoXA8wA31ortjxBTOefnsaWAxH6YTJOlKkHJneZKmnnVi
	 14gZHAFaKSu3CuW2yDimvE4ZaZumzBJ5lGCb/L7VKBakPf35GqPPQsiOQo9+2ZFd2/
	 kOOW7p3Q6twOdjYUuCm0HPj/S/OfTojZxWKL1QCQadSToTRL99putOfR1gv5LcU0gz
	 a6XG2p/A3cXHgfV8oB1PPM7LPGL2LHrIGG4NwGPiTZulqgGGA9037HgncNLipGGX2A
	 H/50J9U0iahaq8UF6evlgeVRbtutaAh82lwpGc6ILIKf4VDwFIUjn0aVyCFI5HmOvI
	 H2FwLUTihY2Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F97C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173757575358.31974.8913068765619664894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62549fa51efe6730a01b1819bf653ac1b5146fee6c75d855401f797fbea89cae
Date: Wed, 22 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737575753
