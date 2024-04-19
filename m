Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD5E2EAE9
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713529823; cv=none; b=Oje/elQAuoIVeX2nb+I8rFJhIyki2qSql/6jLVQ1Xr42ahJhCETXDWGf4IOhB0PRf8pmgq3is/i34UG479xpXU52DREbgXBb/AAuMwfard0UTOLELYCFv6gkJ3cigO2VgYbUSODwgoMWZKZEV/sE8cVguWPyvOQj9W/g/qH53eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713529823; c=relaxed/simple;
	bh=tCnMic7IQAyEndkA0PWMPJ5Rzo9nWn1kr1GJo6fn+lg=;
	h=To:Subject:From:Message-Id:Date; b=hH6BYqnpPu8MGI4CKdnRPDO+sMTVPswAldp/K5EdZT2EPKKaawAbGFTGwatiJDxpeVOJfLWa79zpzfuOuIzEUAYz2IBpFU96tSteBehhr7aeAvAxXrInRvkDGJ8u1X9SVAg92bQ4H/QIM3tZkpyg5NzY7+mmiVcKoSYc6q0M9Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDt3b71W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDt3b71W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E012CC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713529822;
	bh=tCnMic7IQAyEndkA0PWMPJ5Rzo9nWn1kr1GJo6fn+lg=;
	h=To:Subject:From:Date:From;
	b=LDt3b71WzkM/LwKzQkTezt5sdNog6HLjieK2t5scUcPAzCjhq9gh6hK2X6fFhJZLC
	 JF8FLwFfgAM5oNfOZKZB8SM9X9IJh40QnB4lLRlFpTsCaZ9nlwfhJMRxlGzQtJLkXK
	 9dG/3v6TuyfNdHU2JVzCY/xDx0LyPzCklgaQqoEmGqOWJC8oXes3wZLU5RGTQqDqWT
	 SSpxrQ3rkwRLBuWwXa6JSmS7AqJshAkluhlpwyfL91SBl+GZLLr2Xb9t7TFmeZQ8km
	 +zxCJkjA5hqiwtf8M1df3Me2k0Lk/t9XMGeOdlRU4Ry9qEzHJR7674mElBHLD6D1Lb
	 XDILaLNGzxBMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC748C04FF6
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352982282.7045.5339798100048917538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add51ac20c5820332617f14a5454ceac41edeae6ff77933bfa9f33a86c0813c2
Date: Fri, 19 Apr 2024 12:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713529822
