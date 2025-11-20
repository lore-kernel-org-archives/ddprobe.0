Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7C433A013
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763643714; cv=none; b=qTe6yhzKR671sQQ4OYd4AI4utIPRq0rFxRAPf/DPe8VIqof70tPSc+jcOYpjsoEigzP3IY7g8XkKZHCg6WcJQd37iYRixXTaAKhwGwdYwKJvQKYXaTM4Jq9pE6Q41aflqOvi9jONdhLYj6HKZcGxVD8P5gxA8hgDvPpLIC+t+TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763643714; c=relaxed/simple;
	bh=czvDc54Lsx61W+JA/AiYJ6Yhy7yQoV2IY3ygw+NNoxM=;
	h=To:Subject:From:Message-Id:Date; b=WxpHeWW49AP6cn0/Q0xcCfpHfKn2zGXhDtm7hIOIKODAHBluw5R8hassWftcXpyKyAA7PfCD5K03qv3+uh0OrbH7ILvnKdcUFbQxuvAN89zWA8glsn4H8S6Q0EwCYQfRXJhTTOiegARiFcBNWhrde1IO2WSak/44IRWzEteMvxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6KdCEzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6KdCEzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AF5C116D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763643713;
	bh=czvDc54Lsx61W+JA/AiYJ6Yhy7yQoV2IY3ygw+NNoxM=;
	h=To:Subject:From:Date:From;
	b=A6KdCEztBbLo/nOGRnCGohyKT+70HuZoDXIw5dUraDoaeiqFDzZMSQRohfyGUxaH8
	 YcsW04ooqOqFF9sqtlJe9khEyZzRROBCz7sOvpsOmQM0YgUvO6mW9xBRPxD/3tn6hz
	 52BjqOuf3rUl8XPKuZu3ZoxXVVLr8y++aX4DXRAmIojqdOkj+MY2sbL/AQ9t6YInZj
	 6u39m6CEdt5Ascmj+/41b9twrAvtXryuY7EJhUyfett4Dj6A8qj5RxFvf63Z/Flggd
	 MG1gZO3S+xgFE3gzyejH8u1FutzUKDl0rrf8I38IufqKXA2p1BmhCv0mt+n1Use4Vf
	 5e7WE2Q1l5xeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9094CCF8854
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364371358.19867.7061824667441002315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ee721d5b76caead87c351274265516201b2924bcc25d02c224dd7246afc99b
Date: Thu, 20 Nov 2025 13:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763643713
