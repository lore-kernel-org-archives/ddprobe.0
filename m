Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F3B329E57
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771885494; cv=none; b=Ml2Thwlt9zDCyLbYhnpSTA2VgKFfR2+k4rObjD6mdMWNUEe35WXQs4oq5wd675QYgabAxHtXyvZwApCGtPwkWtHvLWS5fnG2+QsSIg/oiRBuhuqxotOPnegx2npuQZF1i/9I89B4r2tZIXAHo2b27OHspLb2d7UU3+q9BDLY3ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771885494; c=relaxed/simple;
	bh=vjep4/GI96+C3UziZIXxCyBjAPpn3Lol06Y0ytgARcY=;
	h=To:Subject:From:Message-Id:Date; b=uXGG7JhdOMzMSG5tddirohgHfQR5YdGAiCYbL3eC3TL6bjbRkQVeiE4zWYA28TzAntKmtq6Npvherum94C4sdnFltx+cF07Oapd2Fu9PCu0MRvlhJOB0/a0VsZBHwmHW0kVFLU0c9prYhShJ3vBIseCL914leN8fpbJqvYATZKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hi8YwMd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hi8YwMd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64A2C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771885493;
	bh=vjep4/GI96+C3UziZIXxCyBjAPpn3Lol06Y0ytgARcY=;
	h=To:Subject:From:Date:From;
	b=hi8YwMd08sTTPbSeY03bTSxTyAy5PAFyAEhJV3BVR4kCltvfinBYjrRHDK7/D1FnC
	 piE0B70wIqh+lDrOl/QxBCbEKIDba4wkS3ZvnReJ7D+TnW/7nHkR50CZ769obkM/HL
	 wx/CEj6+dqnMdKS1WApp3+MRh3U+1bIJzYA+tSW5VNrQHLO/5hl04ucKPf34NOya3P
	 VzklJt84gj4Ohmxl3NGGdeSp3VqX0E7uZXtMLyvduyy+5QQafx8zN79zyvA8/OmXAu
	 aA9ECGK0LeldQojPmldFTaPeF1odefIt05mkTMfhnPEXr5ajZ428M3YW6w3Bzi/Ndz
	 cZoi6IY3F6R9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9189EEEC2A2
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188549358.6837.1382210226822454988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c1fd1c22d6f341fa93c45d1d9b4cf18784d5c2eaeaa1756f8ec4eaf9edcfb2
Date: Mon, 23 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771885493
