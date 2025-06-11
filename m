Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1271B22068E
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749664195; cv=none; b=GeiLIZQ8lAQa0nshH8zCNhxB02MUsUhsUOGKbhLOr3Z8qNen8c5qp/P2gWkZYahDia4oMJFHNceUbC78EeYKtgOSSUtDF+Gs+l6dIxuYto6Nh6XbzqSac0ukO1UAavfU/Bhc/7NMFcQnpOYyyYOzBET3uaO5qCWCn9GhBgno5RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749664195; c=relaxed/simple;
	bh=XZm+yMHcg7l3wV3XKgWLVZ7qnFtjFroofRxcQ3+CYwk=;
	h=To:Subject:From:Message-Id:Date; b=mnHimL5XS8u87mkkungpWfQwvXG09VapA3v8xawx9AeHy47D+5baMVCBPsT7myaDppcJ9VgIRk5XQ72LRP1h5qnT5HcLXRtDdvxDu5vOZB9fTHd3/LX/lOoJ3ofzPDp+wkHaHMBlRu0904sficMcmiQX/gGiQfTj3HvAO8LSzSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrUVjVLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrUVjVLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B05C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749664193;
	bh=XZm+yMHcg7l3wV3XKgWLVZ7qnFtjFroofRxcQ3+CYwk=;
	h=To:Subject:From:Date:From;
	b=YrUVjVLwYwxmh8kLI7hKOes8nEFjFDi7WqcUZZpT5WCIl8VLnDvzYRolaOgfOyPVH
	 KwWcRPy7OjtpmNPHzVUzGB6NYj+PI6nGp/P9d9PTazV46SrAkpdbg1j7z8Vn4HXfc1
	 UG5j4EeDOXvudLjRS53qEGpv5D8IQ2chfPqI9EIdTMia7rDxNBpUMKyKp2tAk0elwV
	 tA7WMFkP+MKWxJzF6qXD/c0nAJCDFhsEWgdTk3YRlNV+NOf+eRITF/cTVVHQnUK13t
	 ul/07IBviRiu/KKwhtxoZghsnjfQqImLX1/H6OS39vMkNzqcOxB2EfDhj1f54zvYa/
	 IKApBZjZphFGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F918C71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966419357.1183.16779451074431577637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a9073dece709d40596b7f06dc5cc39ece87c1ffdbb446609338a4798bccef3
Date: Wed, 11 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749664193
