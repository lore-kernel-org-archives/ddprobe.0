Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D9431579B
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758613194; cv=none; b=EDpC6clWP7RatHAiADy1gZEw+NjRdr2WIq7ZP+hIDR1vQNf/uzez8zctM2TFh8ZfxQd8MvjxzO2mZ39XMrIzmJJvAxcIW7Z/lbd4EYTpJTIYNKT5hZkltlRCEKqDmnsipqZAvcLDO16NQ8n9yHi7aTGUWWOygF/4D0Q5GqPWiws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758613194; c=relaxed/simple;
	bh=b7US1/q8O/Pk2IWGUdO7nGl83XYgC24u9IEfbmLEqAM=;
	h=To:Subject:From:Message-Id:Date; b=dyRchqMl0RweoHon6DBxz3e+mmNGti3/vBkWusOXYlK0hFqCMl5xvmFujA6i7xGz6QFRJh+FJ1jSavaVK/jA/GRjnZOHm8cX++dbZrbBQNuZIciaJl2AQ38JPEEAi+nlLiIZ4piw8nBNZ9XE4sPQus24S4tc2Dr91KqESjK4eio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lygRzAHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lygRzAHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A650BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758613193;
	bh=b7US1/q8O/Pk2IWGUdO7nGl83XYgC24u9IEfbmLEqAM=;
	h=To:Subject:From:Date:From;
	b=lygRzAHFBXdHB27D3cgpqIDpT5h2kYGWEZAyP92R/v4kGsG70YtWmb9DFIXt7yOXj
	 MFbdNlarao/UyWkHGeZXILiq24Euc11MqdszHk7HlXTB0QMbVrtTTp2PIzYt/+HlbV
	 87YRSba61ovscJvaaczxnyF8ejUK6ntz0a41BI7DHhrrQBpa0lp+y+l7/CzaIlVSD+
	 fkK18ZPRKKvXy7uR86Nzdkr1ETis4+LjeMdQn2DF9rbyq4uPGnf3LE1eZXt96NQsw7
	 kvtL5X3xOaXVEgbmlh7aUFjtM20E7ycfINC0x+nH3knr8sHvKDLgd78G39b80Gmzsz
	 STu9HEmpVFftQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009FCAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861319358.21561.9529132943847313087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edcdd3be2cebaff751393eca313a9942dcb86b5f83aaf957ba17bdd9e53a4c6a
Date: Tue, 23 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758613193
