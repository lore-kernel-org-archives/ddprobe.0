Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1132EA149
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750175993; cv=none; b=lnV5McZNpYU2YyyqAisPd3V3wtGxw1doMMXmMn+O6YH/F+afgg8n/eLFDRim9PbfbTMqAlN7mDT0hQJR4dkpl8C8828cBplUE+V1s/EEtYyk7IPWJ7efWh9ytL9hjLA20WMS+z8niE6F+JmwY6APrExd+dU6mkAV6vwKEYr5E6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750175993; c=relaxed/simple;
	bh=+diUaO+J+jMsIc24lkw8coAzQNjNO+8M2yt+JjAPj6U=;
	h=To:Subject:From:Message-Id:Date; b=aDgkRq5HeW8odZKv8wg3eNzvmFj7SA6ShLtWzIan6PkkdTvytpxV73d9dtYQlErrTRRb3jip5KBsyTkD6jCKJ2FhHYph4MGjPw/bEblKVSSwIi8XRKRIPnwXDXN+Mze6mBb3+l0EWu//Cx+6DF0XG/uMVu5KGFAGf8olRXhOPGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPnYGoRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPnYGoRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44D6C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750175993;
	bh=+diUaO+J+jMsIc24lkw8coAzQNjNO+8M2yt+JjAPj6U=;
	h=To:Subject:From:Date:From;
	b=PPnYGoRhMR6b9KFLvdZi1Khffm4VfQ2vXg+BCQfWD7DV/3b2R1Tn4ZzOK7kNhz1Zw
	 3+FVJI96ts+ReVCZ9pxsM3npeF8TRjdnnZM/IPDcYIqsBDLuAn5n46NOqNTdRP8NpN
	 eZXs6SzsI6rVqwvFfy+QTELKpvoEZwuBA92AqHe4dlABuYd0yg13wLjscuXZRnB+0g
	 XWFx0IReWzZ7V4lHD0iSgDPeZZrf93q7eGvKFWgakh9r4xcrWNl0IqtD+GQgFTBc3Q
	 LXPrM0+bMEm9hFOqJ3r2cS7xWpgOpmQ+AK6I0q0Sejq96THmeHWluMoo25LElC9XqV
	 j6AYWjOtZbLAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93418C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017599359.27393.5881574525444757587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6adcb90436284b76fc09316bbd39e19e7c044a361fd04bec9fd38ebf69b571
Date: Tue, 17 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750175993
