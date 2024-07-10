Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB7118FDAB
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720625183; cv=none; b=hLgSLFBD5fHxbdIMU7pBwpCNk7A0IN4A/450aFmgwe5eCiP9knA6DatW5fclnkzPBnClAC6/GRYr8dWmz8JKyuN/kPaPnAnaKsyh43ESx2ikuoIVgzx0U/IDC5vRvKL2tgWW5DU5sRENIIQrW6FIMFMnJF1GFsJfizEB/SRJsns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720625183; c=relaxed/simple;
	bh=RLyAboDa+9lf/hFI7qmwOac2PxRiu+D/qchBUkfuMWg=;
	h=To:Subject:From:Message-Id:Date; b=pCLTc20kubPaNKGtQB5gzzzfNqjlmBmSvVnphJxBdw1M6MPXudLYLd7QNbT8BMIZRyDhpy26fz1SWEzUjxZ1P4PQdchWV09sUeP7nsJ0W8cyU5ePf/EZVNID7Ic00i4L+4P7pd3CT8X9Qg9PNpdkJHLuDbdOhtg1ZepKNcnpF2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X62GKA1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X62GKA1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC550C4AF07
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720625182;
	bh=RLyAboDa+9lf/hFI7qmwOac2PxRiu+D/qchBUkfuMWg=;
	h=To:Subject:From:Date:From;
	b=X62GKA1Ikt876X1vDGANkdSCqgyhMIpax1uBdmpcTuWgy7C02WzKndVP516xW6x96
	 MqeFDfFCAKUt6R4wF81PPTvz8iM40Thp/s+Rf/3CX6mxAjQCQt+Ncs4IJCmzZTymX9
	 tDRNUoRV/Mkah0DPhYo+oGoQmvkbXX5/o8Nyrj2XRs6JGsSKmSp+jloBn8T+nn7mIq
	 gdqCYa+oKWz/wFErLifJz//tyDzHMfLcpOginU9ZqL6nkkyfAYzstdZb16q85QC52s
	 2b3hOASeK0Fsj3jlCIwxYWxIf4b6Q2M6d+jDMjyOXlCf7XBuP7bF35ND0AOBEmA7CF
	 M8nXbjCjrcQpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AF6C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062518279.1762.11715552238858233236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54224a1d37595e991a606a03728a0252200396952cc4ee87b02c60beda8847d
Date: Wed, 10 Jul 2024 15:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720625182
