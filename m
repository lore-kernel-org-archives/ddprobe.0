Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44846156245
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718176103; cv=none; b=XacAnBdT8Ihsu/ca1u66yyy+W8LxEox6RRXfC4UGcP+IrbU3slCv2U07xHWWqDGHzTlwU8DUhs2+Lg/6j+nT/tgIBTSiCI1X9IUolwNMDHuJwdQF4Ty9uRwWxBJnWkqRwZIKSGlKcBaVt0EmIfX0TfP6YGVO5rsuf8bKohDUJWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718176103; c=relaxed/simple;
	bh=NmIFSIZzs2+i++z0R+Vb8VSlnZJOf6NUJZsbfomHLjQ=;
	h=To:Subject:From:Message-Id:Date; b=uP4K/wD2q1KvtiVZ8hcX8A05jMqwWz0p7Uz+sYnie05CoM2y2A6dstC6AtsChk9NlKVRRzTA6cHFtD2c3RoWGIu6qq3N8snLX8wpK1DYJxbVlhtOu/7Abqca+2JZNfLpXrRdVvcNKhWFvyIDS3JoPe+IleFHS8oU6/TxPjy4ues=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXvafAXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXvafAXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3499C3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718176102;
	bh=NmIFSIZzs2+i++z0R+Vb8VSlnZJOf6NUJZsbfomHLjQ=;
	h=To:Subject:From:Date:From;
	b=mXvafAXAYiMmaZQkvK+23TQxrHMls2nMMvWqIxlKhk6yu59/SJLyL/y+iAI7cKbAc
	 vSJfvOpyE0FL9ucdhhEnlvcnc248YLt1elB2JyiReQqi29ITvUYCnLbUMEnVwvOsRX
	 lb3GqiwgTIl+cv7RzitgI/qnLtyfGskQd+UlKFlgqz/qk7ETbm2+xe86ytH/MyKq17
	 26/0uESzkdamKCF801//X5JuhaJxYnYc+vlQffw8StcekXnfmi4/kZAHUWQFqyHXaW
	 7/nAYgk8kyynSRtPHq1M+ezdubMoTJWr1NAA+utoFrEZz1TmKeceqMF63kv/dnFiO6
	 PrhKGxryE/mXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1615C27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817610278.32587.5335823552894233874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af751b10d2d80645a0aced1b80dddeac6f8408ba11bf7e470dc0fd5bfa7fa5e3
Date: Wed, 12 Jun 2024 07:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718176102
