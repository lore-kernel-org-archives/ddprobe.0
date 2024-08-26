Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21449194C83
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724689554; cv=none; b=ElT8bLM+tZkYIAq9ZOTVUtlGAOcSbP2eNLCSWf3Cxt4LIplZ3jfsq8ee9/1hKJx9a0hh4l9EJbOloJC1wsvn8XUhAKNHCA11DMn4iAsj8/vC8UDBINl4gt0+D0ZLFTpdRuX+ZQ23mp6qUaXaQGwWWMegJFcR8HbVl+y9QAy2xww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724689554; c=relaxed/simple;
	bh=4hxT6kKbVstIvTTdCxKywG+who00QPPBemeT1ORAxVM=;
	h=To:Subject:From:Message-Id:Date; b=LV5+eaO88hgqbKF+o5rsXWhhWsdhRHxVta8fkhFF7Txdn07VqxS1ZQ3mO93PjCZCMFDlftbNPMyApf/Z9KqkGEeHQ+wCTwAn4qyumdedb/E18UM2YJAuGbLdb+OrZq16XASA3n0aBQHLh8dny5dc2HyvolxcLqQar/3UkHOyLR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+o6y+3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+o6y+3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91ADC52FC0
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724689553;
	bh=4hxT6kKbVstIvTTdCxKywG+who00QPPBemeT1ORAxVM=;
	h=To:Subject:From:Date:From;
	b=E+o6y+3OqeFMWyqNSksz5sPSrStXk8pjf/4RLrJy1RQugspJtshr6OT2KWtU76Ux8
	 1evka1mcBw1mdzIFhS7OstLgU9noajlN9PRhBL1VM28sZqQnz/Nd7UfN+QiSPYNRIP
	 Y0/VxRSHf7YEJFSt4EFo2Sr2knirvVkETWRgGcHuEnIygq85RHMP5VJk1oj7CcK7Ew
	 LMyHS+gxtxqMILHP1lemkCCeYhACV0KFpehr6LWnzLzSjMgRFprN9GrlQ3CX/klSMw
	 bHOY0xoW6V/9XyoBiv5hnRnA4wBl17NP53UxgJbrhfI4EZDOuj2d9PTVv+KIPNp4Zk
	 kk0ZukFDan5EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23B0C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172468955364.15874.17830718732127346596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24c8e3b4b1889bc0d6bf2c866140d8e5ba6a3596be4dcb11ff29e72d2a4ef93
Date: Mon, 26 Aug 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724689553
