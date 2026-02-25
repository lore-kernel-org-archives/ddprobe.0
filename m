Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E0A3D3332
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772036094; cv=none; b=GaftpGEz4uo67SGcr240rJfrJQAUH6xnV+c9kSbLvfAVjM+3ETKyWcMTeYq2wrZNtUZJGZ/6BkGGlh5dj6BvbKNNpg+geq2UehxxFDLqexJSS1TuSbc3FzqS/rK5H/+6x6ijd2W8LIB08OlELIE7ogtBa1w+VqJ3eWXtKA5ZHP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772036094; c=relaxed/simple;
	bh=3pHMgZRSSOAQYU2FYYBgcndfRdKqZ+ncy0UM+oCyh0c=;
	h=To:Subject:From:Message-Id:Date; b=NbQ36aOA5o2pjRT1jExhDrMirdkVbUjYeSbreuIpmtrj4IT/uUhkuWBBH16caYka2J90aE8EqqcAqt6LJjWx5Hqtf1NejRIubU+bwuYpw890ZgPqnxr7roOZI7rjpPU2TIZJUehv9P6iPIwNmqFf3EIlwmvCr97M9W3P2Q9tdwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZE1jLFkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZE1jLFkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21CEC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772036093;
	bh=3pHMgZRSSOAQYU2FYYBgcndfRdKqZ+ncy0UM+oCyh0c=;
	h=To:Subject:From:Date:From;
	b=ZE1jLFkdxxDDgYkY6qPSTTl3xPGJlKsYyDefbDKdHdJ1WeOuE/QbkRbnQymetii/E
	 a65ySAD6tQazggfHL5dwSO0wgcZ5YEDsMOd55SZiJ3sE5QgoNZdClDw6tDMctOGDau
	 MOfduS8eENBe9ITw3olgG9pMTewaZEqK++3lWyXtjapTMZT2Cwbhmpx3BTt9LWk8/X
	 RNB4/KABEy6rsR2avoQhVODjDeCFw84LCmB6VtOhtoD5RHWfo9pFn6RDBMIMbcN4lY
	 zq2bjYXZi0mV2aAfmccZFkMnYjK0zBDoTUnoC9pwSWVboVoT6v+scyJfdWvK+tCoHL
	 G7eH/fV//LIOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C84FD3773
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203609359.20617.10375871905014858046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665b0a8e867ba072db716d08771aeeb80bc86d340ab696c1eddf30da2ad08db2
Date: Wed, 25 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772036093
