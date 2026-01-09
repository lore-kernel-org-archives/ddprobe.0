Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAC735B14E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767965634; cv=none; b=r+bb70GOT7eRxAtoLZS+cYru4yiIdR6pHDb4kt6C2AqaV0cfn9lPG/vQnjYAR+I9KgMbCL+goHSqMWwRoTSvi+rjRAUBK90z4TGi7/leo8UMW6kHswWTD1gI5nXDJU4IiOK5xoJEEHp/rvYLCSD2lYIh1Gbh7L18W70d257lyqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767965634; c=relaxed/simple;
	bh=eR/VyzlufhCWq1VdfoYZYepSZT4vEvvuSF+asqDMD3w=;
	h=To:Subject:From:Message-Id:Date; b=U/54/aHkWcysPQG6ayF/OkBt6OwTVEqm6BVAdIhE8EqB+N6USo5P4IYhpe9upn+diNBNFoPHttHz6NHWwpnihyLcpwfqNEx2Y5Ln6aUfn0GIAAtb1euLt3ZmotT0JiLldDmMlqe6ox03Pe1XE5pmL46mBjQ8Tj7+y9NCv/MD/nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAZzRUhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAZzRUhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7C9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767965633;
	bh=eR/VyzlufhCWq1VdfoYZYepSZT4vEvvuSF+asqDMD3w=;
	h=To:Subject:From:Date:From;
	b=JAZzRUhrxAmKED01z9BsNgjku5SNx6KlaWjA8kqZTodgo3Mbzyj3ODLEOk9k8YWB5
	 MD5syzY6QTSsIImns9/lMj+7D8zwjpTR8CRKVNntWDLdUwAFcjrR6lQ9tS4ii8NOjr
	 tnpidKAtRI/P8EBWli/moY5ITA1fvtdO8wM+kDKKHLI0df9A/d/xwlGeXX3W3qHXWj
	 ATHM9iOj8QR/36TGAoFvrH5ff7/+6IsnNvn2jcne7Z1y7Bc2/gG7afmasW4X0kHK4U
	 aX3rtB8vXHmfDMef28jEF8jwcg62z1K37Wte2WETswIYGqLobYUT68C2in+yxrOUI1
	 qh8b7uOtpGFoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58AD1A627
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796563357.20922.11480823349624985029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1ab0aa9d41333afb4a0fd5c2162cd57f232c62fb39c06f5dacd96c7d6686cb
Date: Fri, 09 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767965633
