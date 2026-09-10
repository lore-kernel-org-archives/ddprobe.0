Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44ABD31F9A0
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789003234; cv=none; b=uivZD8E6qw2o+euGjDeO1+u5O0W0ekkk/SON2qEqA2V5S+tyMK1/bOfWrlFKSQdZSN7GaKqSHFyI2UvDJdSiQYU7N/mpNlVFiL7IE/DTH/mAY9OfyX2EyfXGcHbhIGROqD34xAP2avFcgt83PobqJz/HX+Ql8m0HmzG1bUJxFag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789003234; c=relaxed/simple;
	bh=XFKmbscDV/vtmipDtZz+HfPulE2v2WhB/Th/ueJhW7A=;
	h=To:Subject:From:Message-Id:Date; b=oZCCs26UimMWN8pkBUAA7MJ6ownny1cfsSpaNjTu0Y0p3Tc7UW1QnHEUtKN+E6OZO5vCfcVsats0ElPzyJ0M4xTgybVD4Y3xSRpUd8w4FW2BRd38gA/PowN2INZuWd/bVMRflhbRLp+2QiN7my86FXAa861R8C3aHPKaSDeECBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqusnyWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqusnyWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F40C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789003233;
	bh=XFKmbscDV/vtmipDtZz+HfPulE2v2WhB/Th/ueJhW7A=;
	h=To:Subject:From:Date:From;
	b=LqusnyWpZuHffaIgeKOFQN9SGEfjUuuv1/ULuUVA0BHdo2QJJZusCwQS0rNYXXei+
	 nboKLDf/Pg6GVL9CcJpL4UgpZDmsPu6VJsps3ngZ1mdNmiUYxJpXz9luAHniVh84EC
	 wGtYWKDuOSw+rgx5sK0h6dQ749YnrMOVj6vVRXz0RHNra6FEoNbxd8dmasc1PW2U39
	 1VJ9ijeRl+BR0/m2pyG5bXYafTNZT70gwjKeguOTFMmxAwbO+fiJibv1gUfAd/wh48
	 rUc6wh3J5tONoIYGVpHZcxZJ6mhYZBDkfVcZ/RS27kkIPeIjq/+3c+G5oVH4Wm6gAW
	 +njBU1uHcQWyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD798C79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900323370.15039.11829803457304862800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861bae076b70961c73b1a89b90e1d7c6c832e55de50a4b488c177b764ade0777
Date: Thu, 10 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789003233
