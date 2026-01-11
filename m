Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147A823D2A3
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768169034; cv=none; b=oNRujuelwEnKmWFmiJc025R6HcMRdO9fFOYRu1NZKTSq/Xv7bBeofKNMtAOdWz80ZmOG5cqD/VR2CbLfSKJhgGCrfnC9MLUUho/3vU7EC/GM5NiXyRT0dAvX7hZ51wFoR34hdEfchTSmRgwIY3CJvfEqlzl3A+D+xt7Y3UMSSeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768169034; c=relaxed/simple;
	bh=pwReQTcZWddQfDeNs90B14G7i9YTnOP9/CQYG8uP64s=;
	h=To:Subject:From:Message-Id:Date; b=DfQgtV/Bf1cTIU84nLNIsgE2M9yisNJsrQwKh5h9nNb7SV5HzjKoWqxCFNXtFpbORb7tb6mO4dXVsMwI7r8q5yNAy6Zua4ACrAWAQXY0oMeDukVfIBudTGt+QZkEAc5kRIHSQlKKV3BrPGwBRYHTiUfGp3IFEW76OxwU9Qvz6yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWuspZd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWuspZd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0F3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768169033;
	bh=pwReQTcZWddQfDeNs90B14G7i9YTnOP9/CQYG8uP64s=;
	h=To:Subject:From:Date:From;
	b=WWuspZd8tl2nSHM5CNzI4GiwZyrqnTjbQiv4xiH+65iFPTm3bcYpTAhKHFO4r8ySz
	 yp7cSoxo8w1lrNKWgBGbA3jbnH1AIusyTPzdguq674GQXtUI0YqPMogBcEUFivLW3+
	 tNTOsEdIUB4Xrm2YKnHkH66vqj0JNf334goTgi+tl3xJmy6YICPch5FTJhfz4ELeAm
	 NvwVvaUnJ/k/XgPre/klAZsh//gTZqAC6TSEOEZzHAJYiUB3O3BeAhodot+ldzhFPK
	 Ahc7cr1lvm4VDq58gGBZjzrVaftfrtU+S2bUFgAAixOPuMS9Y/0wpmp8Qs79f+3zMn
	 3oR84k5ooyRHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9777DD25031
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816903358.3650.18436078379679133510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2296f7439b4838ebb2b153db40af65a42fd79ce4c28ace2689f1b0cc5975ca
Date: Sun, 11 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768169033
