Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDD32500CC
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732560954; cv=none; b=bbiEDfu+46ufW0LHq3bwVmJpwmmOpa2vAWMdJcWdvZw2FVOMURwRmSMcJlPPMIg/K3OLa31cT/Pz3Hkh2qdmh3tTTvghNfmYnYzpvY/QyuAlj4XCzJ3Q9R0LDcJlbYWhvDSPYpHVTK2c1VwZLrW2gam6xADC3oUGksm7cAKehKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732560954; c=relaxed/simple;
	bh=Q+/PsDOBbLF7Fa6m5yk2neaCmzngYr9T5+b6Htza/10=;
	h=To:Subject:From:Message-Id:Date; b=DrXqTNTb3oFLulOYC6EviPP+H0+XyMS0+RtEQ3OtrGbWtpu64XBlz2D6SIdUOApLxHk2NQ+SjGNQs5ZS+0F/Y/W8gpuD9Za+X8iRtSYH7LFEeSTHdCJ2w9bH+UVd2HHEgZ496x3VZ85HLGEfAlwH3qFBWhQyLSkDG306+LGPJgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuxV6X5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuxV6X5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A54C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732560953;
	bh=Q+/PsDOBbLF7Fa6m5yk2neaCmzngYr9T5+b6Htza/10=;
	h=To:Subject:From:Date:From;
	b=XuxV6X5yBWSBhR0RU/my94mGUqXvEEWtAa2uM7BuxjS7Oxxc6H7lVOcX8U2HJytZz
	 XwqFLIM+N2nNocO0/kBjdcFQYk2s+Usi1HhqgmR4/DQIdR3UVe31R8xRhWCZpjWFjN
	 zowM4iJJ62PWQUXmOt88TEyY/RGquh00U/GUdCEQlLd2oeY6AlVstvv7GBkECYr/RN
	 FJtX0A04TSqU2ucbAVyt8NqOmC6a+QBIEuRtXpdbE+WkHo5Ymw21EcUxXNbw1OXeiQ
	 HAatEBXgBtZtJUKrxG/wuafukiqfZRMld5rSeygxoNRzn5/MTq8zDre8M9cQuvzfz9
	 Jjvg1LXIiVQgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963FED3B7D1
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173256095360.22782.6047674993455037365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba3314062a9225f3d7834be6cfcad485e7ce2b53618660fe3f6d2b8a4d87897
Date: Mon, 25 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732560953
