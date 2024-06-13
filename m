Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CE1146587
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718294903; cv=none; b=fFL3CjWbyUKNTkvM/1uUM1F4LfCsueIB/jkLilJr70rGHw1pk1+4gnck3SS09ZseUHf3SlZBN1vTQ7g2WpSZt+PBC7cCszM/7d2vRPvGunpKHN6ZgWUqTsvtrB8PWTRFnwSAXWEK9pvkWR1cuTaeP1MG9BYXT6SUR5Y5pSDdXEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718294903; c=relaxed/simple;
	bh=WVvvhxSWI0mEAZk1zcCB+EGPA+rk7+fJXfnTH3B0qns=;
	h=To:Subject:From:Message-Id:Date; b=e8x7KKsBx0yh+3Y55g6AEwwIdoaYvCH2KXUlEwsHmqjrtFGsq0CGnFqKzpBlKCAHlhs97ARO2hgx1hYBynGbOe+BAtK8SOXJKjFCEHqJnwNOar8SqCg3tjDNaBaVObVVbUK/6HdHmmiLSuK2H7tEadIK98DGUyElds5pilRQp7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heg3PWRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heg3PWRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB350C32789
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718294902;
	bh=WVvvhxSWI0mEAZk1zcCB+EGPA+rk7+fJXfnTH3B0qns=;
	h=To:Subject:From:Date:From;
	b=heg3PWRldNNG6N/1jFDGAnhFZc3ZkRWhiLOdE84SwYNhp6Y0BcgjZguPW9HNbC0df
	 pkvyD7x2JatkEt06VWU0x+ZL8/aHSKHRuZZJD0TSyJY36LtJP1yRNfrFIgarlUwmlI
	 1TOMgTauTgAOUcAXpu30rHWDxn+8XFdgQ4p6+CJ04j0V5sSOsWY1Zl4bypfkOQ2CjP
	 /HfQJgq4zD6qK06kAMvYL18cMEDmC/dRkxivPp5azVl5ztyj+3XI1/9aLhrkhiRKxi
	 mBlZsjyUo6qHvc1ZZWlVU3tVp9K4bChlAfV8AItaUAQOaXfwazim9FtMFJZWeBKMBv
	 LAhxMIUR/+twQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54B4C27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171829490279.12846.7264627208807883676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f701272f3a680523dedded3d8b158399d49fa09d579f98ad0e9ee98938bf6e
Date: Thu, 13 Jun 2024 16:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718294902
