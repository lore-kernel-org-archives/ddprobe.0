Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5401221C173
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787877034; cv=none; b=ir2XPr8E2rGs69QhaJNBC3CIxJe6buACcL/hpCaK8ah0LY/G2Z9WIrXdPhGnd9coMAYDMrlUs94ekyEQ+Tb7PS+TODAsbUc6DeTHS7cZHq66Rm0HK2DfunDMrAq0XbpZYMyFyd7evoRrz85hRjpXcZPSZPFbBMBRBvWuEuoSGUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787877034; c=relaxed/simple;
	bh=Ga+qwflUduOf1sUrlog3LqC7ub4OEM7POAFW8j8C4tY=;
	h=To:Subject:From:Message-Id:Date; b=eBAP1VO6RXorvcMS878LunfJzGp+UzSVSaTQeUn4tMCX9wxtA5aXL5W2A7lYCaKILAdDY27F5dc0ZlEVOuGp9LzOlMaYta6Mu4p9hCKJLGtxV4TM8xkT1nSMZnlsrF2Xbi16DUvkFJqdYDJj5E1z3jhLjw+Za2K/hzw0XwMZeAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUWyfGu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUWyfGu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9714C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787877033;
	bh=Ga+qwflUduOf1sUrlog3LqC7ub4OEM7POAFW8j8C4tY=;
	h=To:Subject:From:Date:From;
	b=dUWyfGu/zs5Nx1LBHqHuUQgjwC9Zrke0jwKOWVIEGmaeNOHHaAAWFmeic5dV9YRJJ
	 fwKFUjRwb14Utp3IIaUt0DxkDLlR9aXVlmvcf3EWDc6Sz8T0QoBXUcApAuIsNBKypJ
	 Ued51Gkh2+r2Ijt5B76Dv86SIPN/QjrAAXGHvbIIfVqm50DzbVhi4nJH7ar068120C
	 TfQDZCp0cuUze5OXblm+x+O6kb3zOJ8pufzY8v4k+6RPd8QK9zIlo7Z0EZ1LaGJ3Ou
	 3C1ESiuhX1vHG+wzs5s4cu5f21Kg4CO23MDt195fyUNv6QlE1jQPVlYRgN73St5Ddg
	 gJKDgO+fnQspg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD58FC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787703368.18922.6642593793299130442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3faccd059e4997a91e90a24b78b0d89c260f22a5325a87ae8d0ef670a4fb14bb
Date: Fri, 28 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787877033
