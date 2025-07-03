Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5BD289E0B
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751565594; cv=none; b=GtyKq1YsBQHTH5FTK490knck+cH/3kGQn0ed468ifCevA6jJWssqQEVtsGO/bbtrbGWEmf2EYoBEKuj5CAoGiU66OtvSX05VkWzmFSdDS9CSKrpRyUcaTrLMgAFSZuD/zNCDrL8N2Y6sj7KiNq9jMJH2/gx0lSB1jN4VRVsOrHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751565594; c=relaxed/simple;
	bh=Mlj6Sx/MLgbJcuw9xYqXs1XM9klVq1bCebxK2p8Kpz4=;
	h=To:Subject:From:Message-Id:Date; b=Ob3EgRb31YcLt1r79DYkmp+eG16N3+9NASm40b2AT0bNJ9oAvhM5WfbGWhu/Jtq7CvxuwNivLUEza5FxxGPdQA98hq/Oi+GdlZpeZ8HQa/7OjwyLj+G9AmSr0ZL96dN9Eqi9TziUdisqJYj6QZh+9SGNLkc21xKuYMh9eJ5Fyos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pqpeh6Dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pqpeh6Dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D567C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751565593;
	bh=Mlj6Sx/MLgbJcuw9xYqXs1XM9klVq1bCebxK2p8Kpz4=;
	h=To:Subject:From:Date:From;
	b=Pqpeh6DwiaSwzfBGI1NlvsxKQhBilTwlhGqgToeL1tausw4El/5B36zTTg5n2NMG0
	 6Tn3uWCoITHe8ihpOkvcfN04Ereny7uU+5NvdcsA3k4y7zf2a/7RncNkSUpwmazwAk
	 71DM/9NQ7yPe2HBX8fAgcRgXjKQaMI9W5ojGJmJglZYqc9+4n6p17GxDSMZpxFXY8X
	 lACaoym5ao4B2Kn/+hjFixquZNYURXP7Ud5xTsgZGmLEn9jfyNDQ4glj7bXNf5rGgV
	 0ciEo0joq4gXP0KUSV5zH5Eey60u+m4WEoihcwAJSTRjcYE4hT3fUdoVoVBjPVyFab
	 Vi2TjZk90Op0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E790C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156559357.27341.7083464545023027912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab33e5b85df5bb12bb906bffa55f7090c1434168b8b3fe0719e061620be85592
Date: Thu, 03 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751565593
