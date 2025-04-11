Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310AC29CB3D
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744409394; cv=none; b=riA5IH/BuaMkj1dWJh2msO/rcQ0mZFftQQ9WVSoFXVlt3PAI7on6JbYpYij4wzO8us5Gg0LmDm6YLnQLxdbASTlaS5BL/JMEHKis65daVoqeeV9E10n5rpRd+43C1GBQAAdr6v60B9k2T6T6W96o4Idf9Wvq473rw+wobCV0v0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744409394; c=relaxed/simple;
	bh=Wxmdi6DsUjCoijMDcs4Hupbfy8TvtnpFmfxnnrlxu+Q=;
	h=To:Subject:From:Message-Id:Date; b=WlgPzxsZbrIYVxa0hIBG0aXMYa7/4sljCmHuhipOWPX9Xl8scc73ApUtGGVDFrZJppnNH3fiTX245g/WQb4UqsRWBWchFKWohNvdQQF9HMd4PA9hsBZjJYwvM2aBd69jHQP9tbL7+qBiO24efzMujAN0TzobSGOs+6ikZKJcrCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IO7Yy2bG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IO7Yy2bG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A336EC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744409393;
	bh=Wxmdi6DsUjCoijMDcs4Hupbfy8TvtnpFmfxnnrlxu+Q=;
	h=To:Subject:From:Date:From;
	b=IO7Yy2bGSP5EiR9WSyTwj/9RMMieOiCqE4t/hQ8lhLJ/hlSu9rSuRQ53rouBfjads
	 BZDrqdXKPOdvrHsqgcRaCDaMcRJZk+BODvZhuuq3oxO5uoryEL2w1fdU7MjrYgvum9
	 h9oJev1nAe37GmWG0YNXNI7G5kUuxeQyeEi1ErvvaXqFPJaU7Eg/YUk8MK+MnQCbQp
	 XJBCKbjsNXcWBtE58c/67P8zWGnW8nV27HKx+GbdoT/Mh8BRro2KyVCO2RfH8OWuy8
	 IUfRivu3nwppqmawxMs/oPZsdNsZrdCjgBOLg+GpeuSOXPf8aehrk8J4v96r1dx2zz
	 6XGQIZpsOKCUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94318C369AF
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440939359.4541.5046168621873614689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c8ea2723a934e5440cc49edb72c52c71736bed5eba86ef27f14c4f2b87b408
Date: Fri, 11 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744409393
