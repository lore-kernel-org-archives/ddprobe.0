Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB571D3656
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729897554; cv=none; b=DAjrHCWG+Gmqq5uLNItJtW6H+NRXu5PMIkgHgJmjX5g7Vjqz81r34WP7Tdu3a9pYtEOZlqA6af+09FJIsCEjD7fJ/yLi2hHcWQ/Pl1X+J4MqzJk6mAw4XpfFAg4o5L5SlA8UBbxmq2zFVk40NXAHCAQ5ZroLBgoQE0Ty8IzBE3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729897554; c=relaxed/simple;
	bh=GVo3pB+wEhWDc1d7k8g57/NtnRQC06JSWeyq6VbLmHE=;
	h=To:Subject:From:Message-Id:Date; b=WP3pyPkqp9nqpar5PKB8ZWOPyPaPSHHzMbFmUtv8Hufa8Js/Ytf/vDpeJ9yek++S+8EEKDUki/dlu7pY4aEIApossS8xVJbGKM/v1kO9BLKC9fWUkcFkRDaLme++Tij1axUElvsfYk3zNQ9HUTFaDm/InMEJNrgkAKuPLte+GQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TioN3MAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TioN3MAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BF7C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729897553;
	bh=GVo3pB+wEhWDc1d7k8g57/NtnRQC06JSWeyq6VbLmHE=;
	h=To:Subject:From:Date:From;
	b=TioN3MAQ1yh5zJmmQgrwl4kAyACSIEtlh28HP0hOGlt2uUbAwZtkr7HZdXMc38Pou
	 sx0UlbR1e3k9viaQ1oNsLVuChRqOGQ4gMjNMPWJR4wV5fTMio44yif5R9YJpNp480Q
	 UYL6zQef8KJKwQ547p503QRamJbgwecKd00ZrT2DAxwLj5X3oGGzQoDSa+Plu7TWn8
	 xS3gmg3H3hddVV+kHmSHNaJlVO/gfqONSo5F7n4QDIV3dbZlbqZfB1zDT3bzafgn5w
	 W6qNIFzesCOagElZs63ZmfTDxmUV2Yx44ngQUeMZUQkQCMTXSen29ncGiblQvHrLMS
	 Ah1Ux9fnj2OBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4758D149F6
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172989755370.22127.15983612160367842745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf08d05e0971b4b975175d2274cc8c72f5d0f52de49cda286dffd3944691248
Date: Fri, 25 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729897553
