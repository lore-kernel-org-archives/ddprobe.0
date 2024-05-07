Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8C918732F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715121143; cv=none; b=ZEpyzah/VdA/46ymZTALi60W33T8eudxQ35EpcpJu3W+RYzKWNak2DURVL6rfCfscAuPcSFzQv8Jam6i+uDznwWC3QI8Um7hMGKfioYVifAghxmGoWPmwOoB0A6fooPYT02JLyYaFtpBZ7VEr1dN604/rqLhcY8NoIvS9UMD+Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715121143; c=relaxed/simple;
	bh=p96bwum8wex7qTKXvT1hUxAMujtvESMkgRXV8DEIS0E=;
	h=To:Subject:From:Message-Id:Date; b=Rj2MLTfqFwDVNlIMBy6RJpmD0oX22shyG0NEtHZWWThYaaEXK3jMlMnFDF/Apa6mdrQU18mluXQ+JgF6PvIwHhiSmCY1gHGnM2dNL3X14JRG/IfTmW8sBkEfPAlGbn3QVTTEwc/LnfzaMr5Uzv0DJOkGMU3yuD8qEXI7Abwldy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckr8ZSoE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckr8ZSoE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EED55C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715121143;
	bh=p96bwum8wex7qTKXvT1hUxAMujtvESMkgRXV8DEIS0E=;
	h=To:Subject:From:Date:From;
	b=ckr8ZSoE2XK5Me4+eXUkieD8Mhz1ZpqL6fS2OKNSW/krp1Vcl76WJwRGVg2ZNbKq6
	 endqgQlr2x513C3H42UtDaQQegyIvoqudPEmx7NPaA9qJKl/IWlEYRwSX4LPbHHMon
	 6nXn3yvsFmeBsyyYtidRgGW/BUPp3WL2LzKXLbqN1MtZKIwSaiOZwAm2om23zwM824
	 AfOZtusmDFRRSCAGiAQ5ik4TUvpybXq/KeFS/z4CBkszZ7MlAjhqrvMLkSw9b7lj9O
	 6dbh1IDhLNyqC+G6vU/C8VyJRMu1I7mLn4EZPHuF9/QzePKjntS1O16LUhn8gY5OfH
	 kNxGU9J/UKcvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7CEEC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171512114283.11019.11688027957652562620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0dee016eea9e2a2513b8898888600b0c8a6b2b17ffb0ffccd827e44ebf905b7
Date: Tue, 07 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715121142
