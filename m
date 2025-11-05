Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273D42566E2
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762330794; cv=none; b=ByvCgphqfbll2pBD2CJrWQ/fga9BUpoWW3SKJjl5lzMb9d+bi14SenufylpwexbagifnpseFPoHFBbaqEbS4YX4qFxYoCoFfegHt3l/y8gx9BwhejII/H7bJRbs/G+pZkch3rDktQKRgogIjMqF82WeP3WkGDlG2FNcI9yrIEzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762330794; c=relaxed/simple;
	bh=tDQiRPiYsgtD9ecQU858EMNXmQ2AESemGHtDB41rOhc=;
	h=To:Subject:From:Message-Id:Date; b=aaX0+yhBiR5wVn/T9j7sct5DORhMgDfIgoOppdDuaECXmKtRlM7b+G6I4oSXe0VmJqlHBR03co/DI1bH6xe6OIhKd357VJjpOfJKLyuqEA+fYUY01SFcYNPhalr+sGDsyZTsUDOxlTQCej4Dci2wN1HxOEEZDZPSwizGTndSFB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+03LXKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+03LXKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E21C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762330793;
	bh=tDQiRPiYsgtD9ecQU858EMNXmQ2AESemGHtDB41rOhc=;
	h=To:Subject:From:Date:From;
	b=P+03LXKh2FCLFKCXEMzcYt7OYuKgBT+N19/LwiHTLrPqZpsyiP8UOS9wEON10UKEX
	 s43jMWH9XYMN8L5ka1p3a/1gKQG2tKrdbWUBm1FFJAf9GJz4q5xZ+uAutk7gVqpWCq
	 9knNVegPKLaGB/UhjnWW7Iu6jCe3vZhoGvTaPZxPDkQFp7LU2aZ/3VKfic2UQq0yYG
	 A/ONzP1Mjjty8xvKJZCTPhRhTsetnBUoTdNH9I6unne4r8YhLfsy0PLrpywXxxDpEg
	 8G4qm4r+N4e4lT1MgoTQ5Ki/LmaqUYjK2/lySSjm4nQFMsPFqYMoAS/m2j9ij8noTb
	 6BexsKK/+Hetw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94631CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233079359.3944.2419498878802592419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5de5c5d6e301b074da1ab31ded86f58f8c29a35e07be225c852624cf124e41c
Date: Wed, 05 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762330793
