Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0391D2EBBA4
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773048894; cv=none; b=IQdSQM2XswogzrG/xF8oNtWNwVXrcNyOtBas9hVL29HoUi/fvbEbg59//rXMJwyQjbp1fVTK+5ckmnC9BW9Sx1ZE43bCtVCzvV7ZVFToWy/qfHGCg5ctdK2yLpZypMBr6X1cL3kf0ow+1h8dj+J8JdxTd+rElB1d1nqmkAJ38qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773048894; c=relaxed/simple;
	bh=3dOZvM8sfU/WtAkX1A4EsQgltVMs8dwLSgMYWqchvas=;
	h=To:Subject:From:Message-Id:Date; b=dAcP7bx55WYgeJAcxT/+KIwRQ8tKERaPHd5vsBvnq5Jxm0YWAoxTaNqlJmwE8OtS/dsi5HJO/QF1LbOaLWIVTLWCveHb0valwqVmlqD/R8yeJpPnJbhkllF13E+41FY7K4j4+9flWg7BPlzI2894sQobu3+VLC/K9HqR0aWRDb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTRCfAui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTRCfAui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DACDC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773048893;
	bh=3dOZvM8sfU/WtAkX1A4EsQgltVMs8dwLSgMYWqchvas=;
	h=To:Subject:From:Date:From;
	b=iTRCfAuikb0C9KGGI7H6roLOxteaXX9aJ5ArGgad7xsfHYZgMshLCYhKXPg7iD99U
	 MoamqBvQrdUOvMaqQRJu4BwOy8P36WHmR5yptrubO3iDHwfe9KYdrjI2sBK6ht1zvH
	 5L6lVhIMggD5PE+Plrd2YZWSd74CKKUJPCk1CI/jxa2pamLzJSWCfVscOVUVBtFL/q
	 ysDvTPjwDOkeFjcByk1r17Zpvt755bEMxWNdvmwQ4N8eWAhmLQBSqvGBbAaynV2/Qg
	 GsUk82EL0/tDMTOsHMAhQGD8e4XJlM390kKbRxPnnuWrnAPYVRQUR7WKTmXLK26rtl
	 nXEbgLl86I5aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C7EFCD63
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304889357.2774.8600347359521475504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544cd6a98a1fe8032e7c96b311ab886cc476a847f8e90aad3548432382de9d06
Date: Mon, 09 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773048893
