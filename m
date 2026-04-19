Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C501C5F1B
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776597454; cv=none; b=C9a0+TKuMpEBoIymCb9o+qh4nSTmWfIPAxbmbO+sxonuKywu/0qpqHSmk3uOBjJpH4ML2kMKSefXSPqJet+WxTdYDD2zrDdCSuKBcQt8BDHY0rmqqLWCFPrQglQRPx0nMmA9QmqFX8h5EiChARUSZqXufnv3xELt+craoBEgAMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776597454; c=relaxed/simple;
	bh=ea/xvhY8CNojiwi+v6hpkxCUBcomoWxycIKn4yY7JJ4=;
	h=To:Subject:From:Message-Id:Date; b=ibkhldcnZM2WGzUswcIrHNgg5v7UVq0YETUY8pQFM9+R1HpDOwfVONKjLaJ7O6Rnakmj7K2d+v52NiSQ1mx5cTCSi0kVxNbVhfpCdSyXYhJfUP8UeQixZZQ3njtDbKBQQ4ntjJEhQfQmMl8Raj66T6wE0zbYyossnXNORATsmeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+Da/71d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+Da/71d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB55DC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776597453;
	bh=ea/xvhY8CNojiwi+v6hpkxCUBcomoWxycIKn4yY7JJ4=;
	h=To:Subject:From:Date:From;
	b=O+Da/71d4djMuTsG446A+Ujb+C8dc2S0jT9LFrNoAqSjxbkNFwMZMfHo/O+JG+yBj
	 FRqe/uUgyF0qnJfhYtpd0wcyYRf7FX0nB3M33JGcEIw0IwklQBp3AYSHzro+6fseo1
	 t+c9setgZhz48SbTSa0NEF6AYJuS7KvNKitRICRkeZsR+1ThXikSoTGy77utEj+V+f
	 k3ecmpsXx57e06kpCsVMnq9SDlXBYVYjehtfetAuHlY00f/vTXZwAYGuP3NPfMsEU/
	 7KXMcfrYE4mlNTXKtt3inDJWVMSjnsG+qswFWovTTDlrE/nKxuwBMBvXpuDZsbVxW0
	 pMWDu3HmpS0dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF7FEA718A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659745368.9087.6816336852499440342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175850b79d6c0ce1914a40a58b1ce88c9830f540ea978ce3d41c9d48e47e480f
Date: Sun, 19 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776597453
