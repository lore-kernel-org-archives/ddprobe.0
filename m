Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2699A72628
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761004794; cv=none; b=Bc3/5VU25bL+zGuNWF5R64vRmeQQ/3/oh/jPBKFFyKVXeobtq3AB722kmMzszgMgaJlujx/dNSyO4y21ZTKRW2hHJgxmnnFruMb5kgwcLvUY7KCQwo9FNCrLB358OO4d+o18RcX5QN707/beMKVy75AtX7yaumlG/rSMDz4L3Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761004794; c=relaxed/simple;
	bh=K9IMa/tIBW/Nb1MNHkALf0YVzTUjCrka7e6cGxmCFOw=;
	h=To:Subject:From:Message-Id:Date; b=acNXIql1fD64P1wP2gqmrnuvZJbk//1O8tYIDhVOUHTWGGqRFuEQWuKKEPYgfYRLJDvgHrQnanP1bjEnK0vecSWAjc8IErEJkPwMS1POoQ7IAh/fnlQ3on/vBrW3jOPlVeukq3VAHduM8rDzOsJibp9kp3+GpMcqUl6AXusFbLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvqOMcb3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvqOMcb3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6320C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761004793;
	bh=K9IMa/tIBW/Nb1MNHkALf0YVzTUjCrka7e6cGxmCFOw=;
	h=To:Subject:From:Date:From;
	b=fvqOMcb3KjziXbTrcrvc2JiL//28lVYJinKwNW7VjILhpguU81GbXgtOYF/W/t3c4
	 7USkfjrJ2vKmGltVvWNv4D1Yrac2w70PQx+ow9Xc7fmL1w9/VAZ0jWUAJphPPI0Yp+
	 XWtczcu5nSmlPVL5rRpl4aiM4yBV4BzsOq3M/5utnwu8+ulpNKJpC9qlqZZM7iXzuL
	 Mu+jtzeP/uGW3xSBOFlCOCDZx/uukDGobiJisp10l/YQU289gYPI2DtINwc3oeDgfY
	 aNDU68LwMdlGdOFEDXwdTytTyjQpxb6a8eiz64cemrjWJ/y37wnFAyEo3Taf4+iIow
	 PfN4JSpt9386Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E9CCD19F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100479358.25672.15452051364714917514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50f5e834ad6549f9db4a58f9a9be49ff86e7f6e63b8c5ce17e95424bef5f8dd
Date: Mon, 20 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761004793
