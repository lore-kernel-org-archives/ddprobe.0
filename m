Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A852EACE8
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755853794; cv=none; b=XOxyVovEXhfS36t7vu4xRwGpqriFInYkxjtO037qRKRw0mJGfVTGMWHGSEgYdgIfsBLjVvdX6vbqPwgDXQNgOOTGytkM30PwgnNitPK2vWTeWWHG1ta+UnKyuZCGUq4VlZai6UxBv8lrT5sC/kLa2UoGcJqMP/D+6gESUREJtEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755853794; c=relaxed/simple;
	bh=fGMSHMx1zrtdjW3d9Mkttjx6y8i5c3OqHGHr82TY+JA=;
	h=To:Subject:From:Message-Id:Date; b=ew1w+Ov8CtKhtYO7GK5j02szuX2kQbVHVmNcGdWDI7kuGbluuA6lM1hQfdah8YPmYyLNpRXC/K85mP8TJ4R85oCzLSK2iUy2mJRBecbaPQmoGNS3UaDt3l91u3fUBsnTAzpIdVUdytvwoR+l4aqNxag5EzjYTvkxnk+GVIrtMds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUzHx0t7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUzHx0t7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1F4C113D0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755853793;
	bh=fGMSHMx1zrtdjW3d9Mkttjx6y8i5c3OqHGHr82TY+JA=;
	h=To:Subject:From:Date:From;
	b=IUzHx0t7G+wuW2p2qAN5TfJPC0lte4QRn9zEC50jeH4nzVBQhyFlhY07AE0nPv2ux
	 +TbKo8VxtWN8ZtyuH7Z4Vkm7bbxaWjl+GS0EJ9+iX+XBQEO7K4gI1/Lk4rEdtERmSI
	 d1mon7wrb9s61p5C1H2cVPk8F1Q3CgW8TjSbVPwYeKOSiKFfOin+YMiaC5EqSFmVE/
	 JSqBG69zJEhkqci4P+joUebKs/PfPOf/uQf4aH2HxQPjVOLVQBNI0vM6AXeZsyQ4GG
	 BZE72JaWTMN1Qu0D3y03Lo/DDVFuVjaKnPE4dnHqgexkosiGgyBcMrV5V5eXS9SWcy
	 wMWUm44kFCNkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A5CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585379358.24103.1739167565227432441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ba7c7718ddc1e2489b240b7bb5d9081638e0860142db3c208fb1be01d59191
Date: Fri, 22 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755853793
