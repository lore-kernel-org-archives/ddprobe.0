Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A262535DC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733000754; cv=none; b=AZgofBHoGSF6AGYWyC6+nZyuJWoZUvJpDE1DRHCTLMHgZnlOq6uDDQP1neMWCStGiK6/VtPbQsYmC+wmaxWAKtgYrf3ZWtiLRAREmqmBviohxPxgYqckSjmeZqxO1RE5MMkhpbmCwwEPr7r6N98vk6KCN5e5cW2xhYAAkp33gm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733000754; c=relaxed/simple;
	bh=a9Fo1coUZB5gPLZqQiHH0DcBfMG2CusREu3wsVo6aKc=;
	h=To:Subject:From:Message-Id:Date; b=W7/1xXls88+rbDmygBcHQX732B0EAI/1ZGoO9cMu9aZdhKE7DXd0aXaWAGwT1ugXuYU7FzD/8o3iCeqZEHbM396HrKWOye1cEUZmrqtNbI9LPJZYiQtgoBXgYJtW557eaKD74uPWhEM0tJk3p50QzS0vX3fZlJF1YLRaSCltGmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKV7Pn6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKV7Pn6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0144C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733000753;
	bh=a9Fo1coUZB5gPLZqQiHH0DcBfMG2CusREu3wsVo6aKc=;
	h=To:Subject:From:Date:From;
	b=LKV7Pn6iJss4mk1YrhjV+dmW+HrtJlBo7H740BOHuHOQkDxVUUUo3dA/GZe5DIywW
	 kVEPq11vCA7z49J59mh1sxDss2Fg7lV+malQ5ykZlVnB4Sf4wZ8fgSFd23PC/Vx6vG
	 gzAWBkTBtcjzdKlJOWZ4HXYIIfV4XYhKyuGjyQDRBCTJUTWwZO/QPO7Dr/vJJmF399
	 /ba3YhOFUusg9HzsABxFDURyix7FMKxMZZgWIlKjK+MyfJb4jq4hTClAymFr2W8Pto
	 3gBadgY0ByZlg/ao8AkgBmCXRINKPV89fMm+IYYkW13BKfW7RYq13ETPEzXKyWDvOk
	 clQLhFexIBwKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B4BD7360D
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173300075358.12006.17472310993501371586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78292d4dfc3595111539439d8483463d7ec19449cdbe106e377110e89c617582
Date: Sat, 30 Nov 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733000753
