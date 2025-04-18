Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1F343AA9
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745018394; cv=none; b=NZX/WBxFPucct7bzekLoqlC9giBZuh4uwHyJ1f6tBnEvTS7sTlt7ySrmKg41A0no5NIAGI6M0fufL0LlnyWzdDZwNhuZFq2PMxd9CksRyeC8Ae83qaidJLBWaTM/7JvcunXnau7HjyerhyIe4VLsPDSBt0OrOAI89qKVLUUcNgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745018394; c=relaxed/simple;
	bh=HNsVcCyWp62bl6NkblkXPYsKlCrHm730Ldl/k+ouGo0=;
	h=To:Subject:From:Message-Id:Date; b=uMDAYnybNCr87BRdrUimt4ZhzXOyfTx/WmOP428Za9QSLs31nL/5nThViZdmqs5s6mM3HuZQP3YCfaBVdPsVLLlkw+mAqqUMKEn+qVfK8NlFHRs5ee4UVPPtDja7sqGfyW7Oby/PgJt7bdzH435/vYwz+Aa3x6c+eXnoYLQqHx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvmFYTRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvmFYTRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC869C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745018393;
	bh=HNsVcCyWp62bl6NkblkXPYsKlCrHm730Ldl/k+ouGo0=;
	h=To:Subject:From:Date:From;
	b=cvmFYTRuclReivYf4qBewaAoGRf6QztPDPSp7ujKv08YzREHL9isYhZRUEbgMUs3I
	 D763qfKGBJeymiPOtVh8OQkQY0iwb0seMkWrf1UGSRGHxL4T3Op1ba3cMRoR8K3JhY
	 2ZRPBxfLo7RacQ4h8uJ0BNemRgBg24SHBqSGMWxeI5s5YjO9i7lygRQZJdGG8UEspB
	 9IWD8ezb25ZNJhjiUtQKYA0IfAyxB5JlHisdLWXCSc314O2F/Jei/VioF++/krjZmP
	 XOmTOmOuez0lawr6aU8AVFFpjEmc3BcYbJCHmZSFcbRfHBb9Q1wUC56FnP5DjnVvvD
	 n9v1Rlv1abbSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C9EC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501839360.29895.5572374097005921847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa94a5a2e18a24f96cc6e6448c62099d7c3560329c526f4a781a7da0100c02a
Date: Fri, 18 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745018393
