Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B93E366559
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781717194; cv=none; b=WkD3j4mtnYulnr+YlAjIz20geYV7G81S/4T8jIocIjMFTFDw1DgI/Ozwf7zzc7erUGxUW/ssz8kIi9SbG61mYDTJf3LRKYiw4QFUHlhtzM1Z9TgOrk/pbEqD1dpdlMDgmK8vRvr7oRrkswne9tATEITQzrxuO2mRLZpzoF9Nq58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781717194; c=relaxed/simple;
	bh=3XCoUTGHluKOPfUcxI1R12PfzxQWb5GSKYpwdB50iK8=;
	h=To:Subject:From:Message-Id:Date; b=OmyRi2xMuh9bo7NPQ5fimsng/j196Aqk8gFyC7KCAlJogw+9HH0oyanoG1DIv6fJYcKO3Mdf3UDACJ2W9vjG1t1bT+zICflTqWAVkGbRLvJn9aYf3UCGgx3WbaeQENa5lcm+GoQZy/0FRchh8lYWvIeJOzFYtMuuh9mdk9RvlCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lid1DdKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lid1DdKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91EFC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781717193;
	bh=3XCoUTGHluKOPfUcxI1R12PfzxQWb5GSKYpwdB50iK8=;
	h=To:Subject:From:Date:From;
	b=lid1DdKyTo/A1Kiq3+6yn6LnkRhYKRvByR02XnWt4XzNyHrUVJFF7FXp7wdvGxG2D
	 dM/h2gFbqqHG8qZQ1MI+qtxkBXYkVyAPeYd54ilZGevthHNz3ne9Jx0ZDPO3u0t4lf
	 EVkrVvjh8tYxITuVLGf5PiHeOtfFNenmO2Q1K4JusYO6uPnPyxDVa6TXt6NXdvJoXG
	 e3Ds+u0IFj8YNlz5RkpggMjoyEVpWtMQfjcuRPHwwRcORHHXaPi5ysg6hIaFmCGwSI
	 AEDsKl8yZFrrBVSII3svVhxQmBDXxt6SZdXdVXPEQNdVdanj5B7XdtO+PpZ7z5sSZZ
	 CIUmXLQJ1leVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0A6CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171719375.30231.9537522592619216784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b274cd2df616e844a2c3f27a88a77485e6e7c69a314297a5e59e8189eced966f
Date: Wed, 17 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781717193
