Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB53735A93B
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771847093; cv=none; b=mI0ZDhyE936BT5W851DY2pQV0iKRMJScekEzadW78O6oaVT5tR5ryJXJBXx6n5uUlfSIPhXjCnqfq2wwKwp/6pkkaQWBG2A9j1KTK7rtUIm8jRFIn571nrYcUBA/SMuOoA19OYTo4iuwgHD2+LiB/t6RODS53xQFxwdjt21Wyfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771847093; c=relaxed/simple;
	bh=oAfHumZpdZsM+uXv//mKenYSHyl5CHjPxjF1a123LBc=;
	h=To:Subject:From:Message-Id:Date; b=bIdwaABfrQXRRd/YBwUezSDMz5n49fyBfcxIyAsXJMkD4LgeZU7S5PdxTMcElGbaHfqTg71b0cK7nv4aWZeu0qtK4fBn7Sdx4U3tXd2N3CkziSO80LVNh7zhOnd7ChN1KNQWHvm0WGUS98ElyuZ675Ks8rTQy4AdBr9At4ALUMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+52PZvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+52PZvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BB4C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771847093;
	bh=oAfHumZpdZsM+uXv//mKenYSHyl5CHjPxjF1a123LBc=;
	h=To:Subject:From:Date:From;
	b=c+52PZvwyv0pxTpOT6B6AYelXYP4oa9qhJxRHZ3BCgpxs6HNz72MeWa48MSqQQ5no
	 9P0WZoDns0jQRJ+bQSz2zprltWP93bjWFrIE3ScPQ35yR9/xZJXdpUIhdxhuoq7g76
	 15Xvzkq0tAmBDqamfTU96FS7Cng1gDMjLtjAaZdjIQvk8qmZn/uzOlXRDlZt1z83gb
	 d9oSqJxwyt5w/RCZAGtb6mel8fkc3K23C8V3AYCHvCiS/OKNh4x4Mp8eqFC76eZuvj
	 lMuWZUsukFBWzNc4XvjGnKIkoFcf2UBU43FfEqxe0iiTZOyQr9ymB4VBOHAq7FjnVu
	 lXUdiz2+HeOmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FDCEA4FAE
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184709359.1816.6719327499097380588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02579f29b97ac5a064788fa4de2200839008d33effaef473cb06cc91217f233
Date: Mon, 23 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771847093
