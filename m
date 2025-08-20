Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E72619D09C
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755653394; cv=none; b=sU/hwaWxzf/sQuXkMhKhbXhIpqrOrx6ZR7K+1i6JqJgmqAzHejDpVpGgv4eOiWrBILPwPIpJ5W+SZ6Al7huEqo0+s3s5lHY73fJWLNsHqWzaAtvVLPBnjFmKs4ckhgHCM/WJZbHRz6el1t3O6FL1AzW+0mLoKt/sDP8KQpKdCGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755653394; c=relaxed/simple;
	bh=r8pQXwHXPjcTnHTqtFHZ58v8CqVg2MALer59c2VcqIU=;
	h=To:Subject:From:Message-Id:Date; b=uoVWpKEP6dlwaIRC1eQTyH54dnEISl51WZfvObuULWxw88+XndPC+GtKsu58oInXlu3lKbSmrM3WiEewIZpX/VrEbUhsX2uxhj+rPDsZ7EbpuSrMMn019C6oWFTNXlS0+mnRC0d4t4NKNPaiJp62hpf3YCC88MN8BxJWdo5sqGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHtWafrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHtWafrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05F4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755653393;
	bh=r8pQXwHXPjcTnHTqtFHZ58v8CqVg2MALer59c2VcqIU=;
	h=To:Subject:From:Date:From;
	b=BHtWafrOUgXlMPdrqT0cEavOfuXrCkwXkC9FKPhNy4Fb/ebBDBP1MkUq4NXUATNDN
	 vt8ojRXwImFfO/EKCUbI23AhHpsrJbGscapHntBwdlOFcxjlql1T2bov4GyMfL3I1/
	 AYI50BxEf7oo1ppc1oOSB8QHMDN5MxrM0fht4VIW237SDS0wTKLy88hQe5Fcf3LbvO
	 MRRZag8q4VcR6/yMNjW49/48BlPiHkDm5ay9hw4MGTki2lCI6DJLpUbCWVeS694fvL
	 /gbC6lyqb0qb91xPaFndUfflt1KpbS8Hd2PGCoY3XWmibyPaboDl9n97JOXufybs48
	 1j3Ge9MYn3nvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F40BCA0EEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565339357.32618.9301876163867477347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8dac040f192f3f96382887d5437075aa81b7bcd051740934a292a06f698640
Date: Wed, 20 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755653393
