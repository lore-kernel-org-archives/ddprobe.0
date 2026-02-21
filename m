Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337B51EA7F4
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771710294; cv=none; b=gx1S7jSgEc3Y7XpilYQRBpRg1uldHilYca98gR+g3Pwi9bYKXTYrW1hP7dzWoZsFXO43Vbc9UbLcRxJkfBj2dhtxejXfdPS6HArdz9UH2lPIxM8vZW9fu6Q9/qLvdq0D8e3uqU8z/DPu3hAOMauLIJgDD1C+x1YR71Gtv2eG5OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771710294; c=relaxed/simple;
	bh=sviJWG+1Y/tPOETeQJrO88DpjU1nodxst4r3q8p3BVA=;
	h=To:Subject:From:Message-Id:Date; b=t+ce/HdqPEt1THK9pbEsUxL5Z+pwrjUeHN9IKrDaRyQBxtjoa/TM/GYeCikHgq7eGKwwXizpCeNBbjlwV+2OdXorlEA5iUl1PpavIbQxK/7lQaLfwxU2vpgH22tMAEsWZgiXeuJNBtq0un0QE9a6GpQ1+rHgnRxgxY3sUu08nUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbZ6F/cv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbZ6F/cv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B6EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771710293;
	bh=sviJWG+1Y/tPOETeQJrO88DpjU1nodxst4r3q8p3BVA=;
	h=To:Subject:From:Date:From;
	b=mbZ6F/cvPZ3RXIbFuxFg+35VNwxVYGMoQAXjPJx7A9KLttQtMflH9qOYNNdkd57qa
	 frs4MPYT1jlmrjLUWe/BKy47ZdhQ0wqyEiGB3p43giG7xCoeYiiRIDiZWNvtsip9k8
	 Lx6PzpwD/tmyWHsJkXAuui+elIFzb6AkG0YsqqFP7HOllcB8tUnA99n+FCMLHMahsz
	 fY5G3QT1KkkMYkJyd4IGne3Jq/W/HSXScYofQCEk7U5hBhZcebyMUWb/Oi360897Jk
	 Y/Fpjilj0RRvFB0+SCH3gzi2I5DGlAjX6/fach3cyari4U0g6skllU2W5H9T9NjGu8
	 +WhkkymJz8oiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94492C624A1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171029358.918.8904407049081632527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5909475ac8c4a1990ed1edc7667df1d0a8b955682aa9cdb6b4f250b1ac9a663
Date: Sat, 21 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771710293
