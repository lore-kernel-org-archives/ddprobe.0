Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247AD2F4A1F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757928595; cv=none; b=C8VUnZmv3xuaDE9eLOjlh8gGD1fVsRxiO+soDt9f26WQNU78C+ApaiZQurn1K4owEu89PMhrdRrZCNRbDW3WVBW6nyi4xFNNqdzhZg5jUXRiSY+Y/I+Qo4rh9eIH3d8KbImuatpfJOWbTETVh3jPSZqaJU3idl5cXXWu9DLxr+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757928595; c=relaxed/simple;
	bh=188bE80YwnLwJxgjlgSUMNTMPbdWUxZBuqKRjC+yBVQ=;
	h=To:Subject:From:Message-Id:Date; b=ULDaWyW3+KWji2hoaxYxbeYiWsJmOL9PzvIqq9ZdL32H7UM0GqjnxqsiL3jNFS5uox9sDKUP0vPCo9FWUawwUXDJV71NyOrs5z+Dc6nZwXhpiNq9iguFTidk52MHw7bE7r82MXsi1Qcdwmzqu68MJWwCfCzqj+EsdcRxU6XR+qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMi5oq+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMi5oq+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51B7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757928593;
	bh=188bE80YwnLwJxgjlgSUMNTMPbdWUxZBuqKRjC+yBVQ=;
	h=To:Subject:From:Date:From;
	b=JMi5oq+IFtHhuOscle/m7/u5D4HjZKj3vY2NS10IvBtiCo88hHO7eP1HWvD8dsEdj
	 YP8CiIKRR4y2WjJZgetqz2GmfbdJ5SXfvqXXtPbyzuCj41MCHNyy0dpAXAQAJ+XyC8
	 ibCydEvL0qno0kynWVzeezVfDRNLGszzmZEhu5qAX8M7nx1Nk3nyAT240/z8eYDBRo
	 jKDT6XWZqAlZ/fuR29eN5HQGxUyc8SNVE0Y3yPG8G8aiBUGIa68gEHHg6sPxI74oj0
	 mf+SPcBLPSdAwetX/99MXjmAg5RdrXhh6AwWJ37PMiy/k+1wYomMTn2ErnT6tmR0gB
	 dwwEjAtCrtpGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9274ECAC598
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792859359.12705.6422141363122419420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1dbffa32ed4a76f21ba3ce35c07fbb1342b3e4202d93533ec6e136a1ed0841
Date: Mon, 15 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757928593
