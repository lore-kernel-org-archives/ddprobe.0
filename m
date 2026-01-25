Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8471F3BAC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769351634; cv=none; b=didvnyTDUjkKMvhIwCm/Bx64JRTKYHlE89wcqLGIp9Rff0Iv/0yJFzHRUctg3kujKXxheFDISJRqOOouEPQ7gtg2HPE48mLZ5XB+ACdFGBF3csj8pJzcqsoW5pKJlQAtnp3sK+68rdcQamnrY3BLiss9GSrRZkSwINnzQRexMAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769351634; c=relaxed/simple;
	bh=eTcUraF2atxpuVGOX4PeTCUpxMdZ9I+p7mUxmusfTq4=;
	h=To:Subject:From:Message-Id:Date; b=JHHuIjY5OV9RieaJvIUGzhb5muCanjvixfGsWEZUWaUdx/1NbXHO+WDNRSbtC35e3FKI6kmEomd5k+E5nIKhPjhPXVK7XA0xMDRozDi9Z6g5VXhp9fhbTY029CXRexFKe7gF2yrU21MtXHB0XKhFbLgk7vKm4cO+mCSnfU1EqSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBARDaQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBARDaQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A1FC19421
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769351633;
	bh=eTcUraF2atxpuVGOX4PeTCUpxMdZ9I+p7mUxmusfTq4=;
	h=To:Subject:From:Date:From;
	b=iBARDaQsJUg/XphA+hB3tvP8+Ht8QuiRRZDW14YfrInJbxucSZg4PHVj1HX/+yGLs
	 WCbQYI7bLIlE7DzyuVk9dhoBO0BCG3jKHnyt/7NDu8mndUKJAX3kf4Dmt/+iEtKCEG
	 7dzk8BuxhE0drJvYFxW3N4bjrzP7f1pZZJOG9vP933CDqjL0q4nRo9dnYcIb748kRm
	 gvjuh435OYh5iJdGDHYyPqWVLkBrkFbuBVlHpB05ExZwuxCLqufctPPT9IaoJL0Jdq
	 93YBpkSh7wZ293lilmF+aIlKACaHsbOTRjWP53mO8cyGfK9eK1bcuI9oCN/5R7eJoT
	 /XC+RaCIpXepg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C0DE63CA5
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935163358.29203.12182650677432619800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888046825fa83be160e944f469fab2e7c42361d72814e4b7771d798124776662
Date: Sun, 25 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769351633
