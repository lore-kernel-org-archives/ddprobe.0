Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDFB23CE
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746315594; cv=none; b=YlHCWW08LUlkWpR0yWz4Me9RUtey/TIckj1zWUabGOQalvMzg2qKC+jIpZmTQvr0sJQq7zjy/scI2h8gMhWktzED9UyZraHWQqdKej6wElkKQZczH7YV+GxzNfY+VjsnAEz0wjMarQWczKRO/SCsZHWwCXjJRAt2izKHfsy+5wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746315594; c=relaxed/simple;
	bh=X7SdsTVHygKXEGS5WE3BcuohdqJxNDJxvI4Ym2g+Tb0=;
	h=To:Subject:From:Message-Id:Date; b=t7FRyA98DkXiXW+536vBKsrvInpXYR6uXAezu/+Ao3WkpuypEDtg06XCwJvD4c7iysN5cFSsMKBGtRc81iycHCDLVcmSwaBeOMk88ZTGrWH2iTGFm6zDwP4l3cnpFtQzyQa0F3XoK5PznhP15YcMxcgAeUmZa9r9TedxTmWFB4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye7HXOzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye7HXOzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76EBC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746315593;
	bh=X7SdsTVHygKXEGS5WE3BcuohdqJxNDJxvI4Ym2g+Tb0=;
	h=To:Subject:From:Date:From;
	b=Ye7HXOzrgeKpbbiqjcu/cVFbT5PWsZ3qTsb3Qki3V+36Q85iEN83N3HNXhM6GBogm
	 sjfZJRdvsdhHoBDm2JyJoplY8/nqQYpY6o5JNei0KxYN0+Pz2pnAitZLTAp5COB3AR
	 MgwWNyCGp//b3ts6yGmBvCWMUDTJvTQa08cuRQ9VqURsa6Y3br6c0QRWTWDsccjURU
	 KW2pKexrLD0FL8pGBZO2HvHfBTefI1AuYNEOa9s/B5ra4CXpJSF4umGmrVg7D6IlL5
	 vqWjS0Ul9x46V0IIns4mq/PO7yhNO5pjCLEw9HCJwfgU+1lkwC4Bmta212TwBn80aZ
	 gNlwAmxDbakrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935C8C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631559357.1119.7551688815533413321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d6f109a6eb14489b19a2bac83ad6fa4301927884d3fbfddc89441d2f6d8587
Date: Sat, 03 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746315593
