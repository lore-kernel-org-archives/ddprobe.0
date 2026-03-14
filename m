Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A1B1B81D3
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773466494; cv=none; b=RIM7iaRiicM3EdPiheRESYLYPmwVvjYR7UexxvzXSiUTS7qwV8hh7ALxiJKwHM8Cgn8X4FahmG34OCGW3wlplv3KUEUnEIWRFwPxfyuZtWSLJ1IDdTbdVhF014qjqn38j927FHLCdNlk0YXEy84GqP1jmwCXa4GidhckQrJBpjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773466494; c=relaxed/simple;
	bh=TSERY1lToi9e6xjfMUJABj6iADNO0wuwAcbX5Y749k4=;
	h=To:Subject:From:Message-Id:Date; b=Npve8KbJBqBQtT+KdBVz/+5oOKddEYCJg8hWINRpodeX9LY9k+S4j4idXP3lmbZpkImAnqdHv2J2umWKmZgGC6bEBOE9gRmCtDV9rlxOp6bRGuOQvM3OfYr8H6E80IYeg5W9hKGOyJpLXa3gkjqmw/Xwi/DtwnrOdVJek66ZLkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMP/xxyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMP/xxyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70DCC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773466493;
	bh=TSERY1lToi9e6xjfMUJABj6iADNO0wuwAcbX5Y749k4=;
	h=To:Subject:From:Date:From;
	b=pMP/xxyiw7Mc3pfs14jUvlf3AL6JQKCvSz9M0l0IakvNzSE0mGNwM2ZlsGFLDHozo
	 TH/mYdFoTpEn2EVwB8wMFHcDzwFqZ9tMNZlaQBgT1cRtUEkf4OaZgT8cbop2aG+mwb
	 QG9DrK8FxOVnDYS0ColF6nM+UB7z/g7ViNZSmANhGo3lvaA1JxPmu65XX2wg0Lo3Jb
	 xK4LZQvhBIY7Nc3cgPk7+mrmlsyjJUXs9yf27FIo8MgDRmdFArA//2CK9STt7qg2JJ
	 du3mfekpMt3oWM7MNbb3L0y7SDZhaVf35J/yMzBeNO9aLC2NXUg7XSeeAOq41JkkOz
	 8xBwJIKeTwqvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A83107BCEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346649357.6156.2685724205582372343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ecd209a9a9f2171a7f042b1a6df0457e0e072ae7f668dbd214dd374fdee161
Date: Sat, 14 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773466493
