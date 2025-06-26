Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CFB1D5CD7
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750941594; cv=none; b=pjPTO2Z2bfzpVj0bfgOsJXlSDi9s4i3q215y5k1sBlPInAKljsCjGSJXHztAVpc40Vbi1QsTjigSVF+uvc+uhRwHRbtnV5uNqalJX6LzH4tTToODkJTjy1CJCi/OmwXwyJct7tnpvRwvurp5/5DBT3tjeD1qkXmtzoSKptNRzgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750941594; c=relaxed/simple;
	bh=Cl38SInC8rfPVLFl+e2tY/BTrk12id3dL3n2870feAs=;
	h=To:Subject:From:Message-Id:Date; b=qoQIgm7w3pHkELr4aM6iRcBFjoNg7SrPwLic5b8T/299871xvY/6wKTX8nRvyAEDc0cJfIIgGy0kdVS9nPyHmZVW/LYq8GiYcfrN6Ux1EQDPq98eLB3/pDZ3lWzdp1bvy3pPJ7GDMPjooLmtg4AP0Q+9NBYb8XX9GWWHXRwtKzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqw1Mjml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqw1Mjml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF81C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750941593;
	bh=Cl38SInC8rfPVLFl+e2tY/BTrk12id3dL3n2870feAs=;
	h=To:Subject:From:Date:From;
	b=sqw1MjmlKHnWgLjA+6SU6w3KaYLTLyPC5dFKsF7TS6LTThkOtBQi46Ezq7+jprkzK
	 LF1qyNV5wyrdE6sZLlK6NITpNg3wmX+V6Kc7Zu9fEN34gfysC70ZW+yA3ctbpQ/zXX
	 syqBxRzSF/pO+1cgE6pWp69DB5NQjv/UCRgk/NtB9bw6fzqfcofu+NI7f/sXE30n2S
	 Rpf1EqCUa35x82FNfGqCJPRh+d4x6lEt1W+tFJFaiESyqN1G/vJ4kGMuxAp4p8Y/XA
	 YVtdC6iHaDuoiujOyhH8rCus2eKy9uoSsnGyS56iTrbqcwjE09g/T9Vk7kIv1CSb5p
	 utwAIdn8haRMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B9C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094159357.25741.18342619021344339575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccca45befd66b69cc185c170c9069058a4bab7c245da59f962f3ecbf7132b575
Date: Thu, 26 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750941593
