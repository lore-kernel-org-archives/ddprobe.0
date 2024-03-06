Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA0D18EB8
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709690297; cv=none; b=tXZbGN+NG6mes0QsbP0dehPRI0x5S8/cogAnwfsCBAA4wp8x8p6qHM3cOjF0gZORuDVjO7uIwOU8q0IhSvvvgFEOHiNp4bBsLTnTylARsbP9RLcduFY1M9QUyA3icakHmuhvFUcvafnarqVKLOc3kDagEbUjT5pFavOsH7ILtpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709690297; c=relaxed/simple;
	bh=1nj1dSHd/twT5gLklMVR/5CMpoVyy2v6HmluX0XgXnQ=;
	h=To:Subject:From:Message-Id:Date; b=ulzHXyGBgtOV02TF1Xx+vmvmiTJF4zNRGXsg/jkOBxd3DAmzfOvu/NEf134nO36LRDVanw8oPaJ7nzorlBRV4O215T2iQFWPQXiBvJ16F0BsYrtdjSIZ39tEOey+uxhyUQgB1JsiNYa3hUnvnOmultIN8fzbkiX2ySGoQk0tcB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ik64KYzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ik64KYzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 937E5C41631
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709690296;
	bh=1nj1dSHd/twT5gLklMVR/5CMpoVyy2v6HmluX0XgXnQ=;
	h=To:Subject:From:Date:From;
	b=ik64KYzb7lVXV5CXqYII25cOdkXuMmYhgE6+G4Vkx+IEFf3Ejvv0eZhAnO6G7FVPX
	 fp4g6ZF1c/zhhbJjNSlun8y8qwLn9lZKUwLGXbYHSOSTcykJ6zOsjScoMOc30jVL0G
	 T7TXBEcB8rAKvRP9OWbGsjFcMl91l8E+kLUJzmaI8cvGtJ293sUi/C7UIx2UDcAZcy
	 UYv2uN8YlCxr1Tp+oVosc9b/tg5uKhTIP8mgu1CwW+7X+8dn20J1YM/TsSdVOxcMaS
	 NLIxc+f02mH74kuYoaE86szyRa/yCKzDHMY+8K299TgH6UpSLuLSAdsl+LVZMuzFgJ
	 7WCIs5h+2FCEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7515AC54E49
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170969029647.29683.15157663240913448091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0a7124500ff2639dc383a8c920f63aad2a5bff82271871213a9fb105893391
Date: Wed, 06 Mar 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709690296
