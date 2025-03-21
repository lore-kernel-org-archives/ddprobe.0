Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF051F03D8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742548194; cv=none; b=uJnMqd0sF8MF/+8U8LS33ve8HdMNHD2scOKQV1izu8nIwLzigZ6tCerFDGmqZfK6gsesArTkicd5MnxCqcsIK/9DrLfM/v3SjAGycptkYfg7J1Cg7pBVOOjpLQuev5yznUgNRiuPY06gC1puBswXhPjzlsL4RrhZXa9WXL29Cr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742548194; c=relaxed/simple;
	bh=6LVtPfpkHjd6gDUVdZyHK7X/52nEBFJA6Y0IuUM04p8=;
	h=To:Subject:From:Message-Id:Date; b=ud6Q/5AF8d9q9OWMtGUcKg3pTWnEiku8pN4LWhVX+CaEr/SqlT3X6unc7Fa7dJovwhrv6yaM4FReUd4XEVHxmWMASoLKuB15vGaaAWVellPElx8WKrJ3WwVI83Khu20ElDV4RzTzxc/UMRdO8gaAGDq1Y4OwiL4VRL3qK0NLujM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLNNUV1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLNNUV1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82C1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742548193;
	bh=6LVtPfpkHjd6gDUVdZyHK7X/52nEBFJA6Y0IuUM04p8=;
	h=To:Subject:From:Date:From;
	b=KLNNUV1BXdU5mBjwvr9J0ga8gRI2coeZB7B/o2S9tZzhJm8Tmjf9xey8mwe6XYN6f
	 C2EtzXUI/gU437sGUqt+1aeh8D5TnXbwY+eSFk4obrLFIbCywJXuowJxbMc13gCquY
	 TvymnJav5Zrn6hQYZJcVA3wO/IeZmkXxuYs/q+q51NpMEYP5Y5V/REBJ1+4YiU0yrm
	 pXC/3gBS4AmpbZ7Sqm8SuVWvbAzuz5YWdgyFHWQTVZzpLzVpeuaIsNj/zQOoCJJDHY
	 0JcGXqmyRC3EOhlKxjG49htFkVIZh/eUWQSTklGVphrkYEtpHq5IXbZkuIU6Tx2mAu
	 FQGk2TBjHVrBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F933C35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254819364.8551.2459457816395958719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238de8196f34ef1cc4057bb2db98a7541b080f2f3c6dcf34df463efb4c29c504
Date: Fri, 21 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742548193
