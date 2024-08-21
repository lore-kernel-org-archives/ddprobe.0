Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6B91E4A6
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724245554; cv=none; b=Yax9iVsqX5aH3QrS8SHbCbOOolHqWSpf4t/ofuR5Y0IYqm+qOmDMi0YpORfreRjtClFAmCB4b08NJJuaEkDhWexFz7+B7dxsd7oKOL2oOtsyxmwuqZxqC1OLqgQ/dR2pauRPdjFbsiB/8ZZ6McsUf0D6OEi2aIyfO80ad2BsQag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724245554; c=relaxed/simple;
	bh=Vej9p7TfVc26Rz5llSkhqk82myJT5/cxQBeNGlhnTZY=;
	h=To:Subject:From:Message-Id:Date; b=WcTJyk6h5a1wxcKTluQg5FD6UuYw/T3bC5pfkUwQGz0RSq0ZqloRX3RJ8soEY6G60YcGSE+Avjcj5m+q92Nmu2oFtQWj3W86jq0E3SoeTAqWxxbhSH06NUvKbRzlW3d5sYTE+n/hNm6ZqHC9HTe/BiCkVRD29tXkx29PhnSO/X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDtk64ty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDtk64ty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3310C4AF12
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724245553;
	bh=Vej9p7TfVc26Rz5llSkhqk82myJT5/cxQBeNGlhnTZY=;
	h=To:Subject:From:Date:From;
	b=CDtk64tyjDt8f9liBdEI9NzMTXlOtELMgbQMHhFKDV2fyXkj4tLARV8PjVePecuLN
	 VD8enoNTUG82FGaup9JS9VTvnxaDogRPugWQoBa3oSaW0InPTegzolXxhe0AWurLf5
	 4P11fRxcwKmtOK61u1GK3PBZVEek7nvOQKleaAmcuKezCTLW+2hJ+6t/cK5RHK7HBo
	 OnCB1racsV2fFSBCP9DWMuQSRB0E/i//FRLKTPVk7ujAzwFNWCB/qYVWcHoc5yozPj
	 XO+hqxj5ZYapncp9dDS66rAZYZ/4l+O8/GMCXaC1JZYWWFveJRzTAv9RNIGDKeOMoS
	 n+qWPYDvqP8ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6E1C54722
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172424555369.7855.13664407703175578466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b38c8001e07fa540961984ba910dbb717ecac61560305421f2d5dbfb5975a44
Date: Wed, 21 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724245553
