Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318F71B85DA
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727145954; cv=none; b=bmisMI5bNvzmn6LY/MM3WcGtkV46/ffXc6gpKlM+PlJ7yBhitb41F9TvtJ4mWBrK35/NotDbYSNvCJTtd4WsSYH9+q06kAJKq5hWV2R6S/dhTvKdjgPlwNwBn0TyHjVKsh5HK3ZOH4mS36JnuPALIGs/cYemf1GjMHJW2UqH0UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727145954; c=relaxed/simple;
	bh=d/nT56KOGe7apmUX4ZaN9c2aXWgHo720MC9GPSf3vYQ=;
	h=To:Subject:From:Message-Id:Date; b=nRVEeoJTsAhazxgLfhBmKDu6kcaj04vH1dvdp2HVP12b3XTQ5vUItQkVWqxcjANhjDnZsXhZOUG6f14WbypSoaK3QcNHPWXNzZ+ZPcTZ0X2J5LSmooxNEBDFWbBSd4ENL1kte497NPLReUkYxQMKQFlUOy/LMb4av1/1pnOHLy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/R/IhmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/R/IhmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C199CC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727145953;
	bh=d/nT56KOGe7apmUX4ZaN9c2aXWgHo720MC9GPSf3vYQ=;
	h=To:Subject:From:Date:From;
	b=f/R/IhmMjo1RqQirmp+ujf3ceTMYm13Zs9RnslGaZaLNnzkiRoGqlwts1sKK8xEbn
	 uZufOtDMwUQHDEX1ZcaA3AC8ukSiJMW4JvGg3c9ENZANadVNulPy83u3pZyQIP74Zl
	 QxsT8eaGMEIXujRp5ATEjLOmIZUVQVkKh9MFa1n/zRZ2W/3QBf1euPS/FAZDwp5xVY
	 PDyQCY8fVTCkDPOklJoAg4HQsMhojq5/g9biis3HBrE1f8B0GYVoD8o47FLCCcwco4
	 gdUysiMyz6ztWeyxZvFrJDp9uulV63VV5JYIwywkdmlZ3Fa0oK0by1UdiyOeLKbJQ6
	 3k7VJJjbriCfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5863CF9C72
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172714595364.925.15499259716200117501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c74ab669905990cef09d57a15a54d10870766595c9dcf42a88d7cdbefe4e756
Date: Tue, 24 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727145953
