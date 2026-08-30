Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AFF222580
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788133834; cv=none; b=eyiEAzmD1LZVeIw43CHZUneWdqXDEW6CLipq2xUzE9/Olov7ZkAvzd/GFJxuCWDNPjJioJt5cMk4vKFih2kXkyxon/NIqFPTW+6Orxe0sR/YDzfZ3s7EfUsVU5x8j6oGFi4WgPBym5zHYUrCw0VBiUPVkbIe9v+ypAxtV8Ik6Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788133834; c=relaxed/simple;
	bh=3a9bJA1kAroyOUmCnUGyY+FVRNnTTu5qte6mHWvzv9I=;
	h=To:Subject:From:Message-Id:Date; b=gbnzEVZ9ll2c3Hx7nYOFU9UTNlH1N5qJ134zk/lAzrOORWS4oVrNlet5pz5LfIvDpTgz5nk5HQgnhGZonF02OJSnLeUNJl2r4il0FS5P1B8tYP6+su7b87hbbmYBesvRkwx7km2KcmKqwGGo7RV8PonTC8xOdYspWHqKF6vISqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNS+7OA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNS+7OA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE64AC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788133833;
	bh=3a9bJA1kAroyOUmCnUGyY+FVRNnTTu5qte6mHWvzv9I=;
	h=To:Subject:From:Date:From;
	b=WNS+7OA7MiaG0f6jzXgQSSJYLgw49xuUzUtBAmXp2CM3RJrRBayirVPJRA6XgS5V7
	 6ADdG7l9Q1NRDQO0OCAsyukgoAAww3FbKKx76NOM2EyDC6OVI+71RF6zjn1ODJmD6K
	 nUHHuQGruyTMIzU3KtngUzhxKEs0uptR4pi99V7b+tBV88WmcIcwBQ+7HPkIp3yfrP
	 MbKLMLRql0feLR4/P3MBX25yxe9aRSimhwsXXFC/OR13a7ue7FWnfLQOhOstI/tBhX
	 j0ny5KvcjGiLLwxH3eMidNhqZShtigVuACBLhU3B35H2jve5YnD06iX9ISzA7rQN+s
	 Kg/DVtvETLS/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC74C61DE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813383369.26774.17907174853673809471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888c94cefdb894b1ae2294d0d839be2471189c744ebc89b1f780c65d57fb19a6
Date: Sun, 30 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788133833
