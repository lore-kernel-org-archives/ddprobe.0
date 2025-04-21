Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42391221F36
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745276394; cv=none; b=dDGNsXgEU/o2CFHXtpaiW2JDc6QGyVJ4IBpbNWiqZZTu3V2UKmexndyNKs3WZf7opLFzN3jX+QLeJ1YP04LQDbUVLbX9ZHVotx7nlSaF3nCthwcGW+u/GhMy2WoQOTQxpXVkuuAJK2qphBt9Nj0J/qLQqxpX4IxFfH19+jVpEM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745276394; c=relaxed/simple;
	bh=JEt1nAwA6BuDYNMr4Kl1ZMk8WfIvwzaHj5RKjNRfl7A=;
	h=To:Subject:From:Message-Id:Date; b=H8cvD84YS2Je/XGa2Aad5GwmBdxiNBB9Uirqi1KYNuO0269i3YV9uZPzXi7ngETj1Bs0QNs6a1MqsNwcbOkEypVda3iIvNHaYktCKydORLR6VKzLfOls+xvyDHMl8HebQ3BDaWKiDs0ROsIuZ6hMlfMCNUIEp5zkhpju0QlG2vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdQ/8hHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdQ/8hHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45E8C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745276393;
	bh=JEt1nAwA6BuDYNMr4Kl1ZMk8WfIvwzaHj5RKjNRfl7A=;
	h=To:Subject:From:Date:From;
	b=jdQ/8hHZGEixKQ8XvW4XmEbyHTzoyQIQGNUJvwTEqZGh5DpRmPRf4tvh1UEAAFRTo
	 +lX4uiRa1G1SWV498PDiBkweuyW14MlhhopLfH0N0LfK+Ue5tMqSecIZ7KD4rdoCF9
	 jjplUpLZ5vVZ3OpyAPC8tBYvtPpvfEazc6jETyx6DgRc3ghdbBf2jBXF37PWUx4ICO
	 7lZ0tfwyTM6BsW6aJOjtFNFRPSb08HcTx8sAo2TmbRi0h+2cB4kneAVPTYnPlonD8J
	 X5alZ18kw8YuQ/NrToOCS6FK/DRDbWMcy7mF7T/AYoPN4RoZS3FB571ppweaHilUqa
	 PziBH9s3odUlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B772C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527639362.28820.15746015119724956839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50fa7893689d988e24464bda050ee9db7be63272a6fcc715921de2f1c9e17e05
Date: Mon, 21 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745276393
