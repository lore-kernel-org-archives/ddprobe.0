Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BABD1FECD5
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737115554; cv=none; b=hr3074M/BCGBDTzXCJDmqFrLvGmXCoSJXx/4slnUJNiD4MA9nCf2Bz6FNTi3churab2/ReZuvKNhE8RYt4C1wxCooA9SPRE/kLKYyv2qytHVt6m/motarO0t+xkDW8I86bgpvbMqBtl214v4XneLWw3PoCE/DXrc/4P90HCsiFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737115554; c=relaxed/simple;
	bh=n3dzMPELR2STKl/Ez2I1c+53OrJ0v+ERU5ufCaAs1CI=;
	h=To:Subject:From:Message-Id:Date; b=BDYRukNT8sSxdr2lSKmSFRs6XkAYbVKehDtAwfRiLwj9/oA8GWUXaeNW1xORJIOVKhMMgxlyQW9C0zY+/AMbBhi4eWMo/7TV6Wnk3lRVLXOq6pv72JTmQ/YBn5jmSbdWqDvOjMvslNZ3gy7pvzJQ5kyYlKVbHTUMJHdicLUk63w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOA6lXNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOA6lXNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF00C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737115553;
	bh=n3dzMPELR2STKl/Ez2I1c+53OrJ0v+ERU5ufCaAs1CI=;
	h=To:Subject:From:Date:From;
	b=VOA6lXNEURAfDOMx9dkLiwkM+nsJMn7CTlyTZ0u8GcBMd0r7RATFhXDZexMVKER/8
	 ijxkclfEIDQVqYju/Kec7GB2+gIqXngO/W92t9RNHiwkm+G+OYBY5GYrjf3owmoJtU
	 V6u3XsPYiYnFhEydCN7WTdbjuyNlJDyIU+n0dSDhrkbqw12z64eVJUS+FKCcBEdpDl
	 mFVk6XmqctjBxyncwriTLqwaFrvzmMqeJTmehWeaV6uUMtJChcxc2nwGiA/gBWfYX8
	 V3PHdnTRjfdjE82lP22hSpgv37wcwoUV4TsxOq4quCisKeOSBfj8PaY+0b+ud1evbE
	 LN4VED7D9VcNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D018C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711555361.29291.18102510300964194912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30bfc88142342ec2944aabcf831d72b48dbc889b532c9d2b7fccfe5795c9429d
Date: Fri, 17 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737115553
