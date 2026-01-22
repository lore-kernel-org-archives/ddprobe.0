Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD803BFE4F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769072034; cv=none; b=em7sxjdPdtZEduCUuDj7YXf4CKt2IpNis6cvL5ynLw95uCBq3JqVqAFfMoGZqEkiUOuC9hiRXKu1Fz0MMUCZi3YAya+X2CoH/PffyNRklq6DXouxfWveUWzPg20DA+BjGKzlHnhEKe7Pho+cfBxaZ8NJklBRWH+F60rfyU0e+G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769072034; c=relaxed/simple;
	bh=p7cQBRP8RFxz7GWODivBHdgFknrteX35w7eR0o3wARs=;
	h=To:Subject:From:Message-Id:Date; b=m0+HzkoDeIXm7mJlS1RPaj4pFwi86HUq1mmbu8EfAupSGxRDLbyNEWx65lz90iqr1v3swnuGb0+o0pPvpwDNfPtBX6I7lY2HlcS71HTkUM2RHAGLmQGP/KWgAyicqDvmzTJzWSio2ZjkOTcq55eeKgFdrKQVlw7fBeBwUTIwE+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4zr5Glx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4zr5Glx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EADC19423
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769072033;
	bh=p7cQBRP8RFxz7GWODivBHdgFknrteX35w7eR0o3wARs=;
	h=To:Subject:From:Date:From;
	b=o4zr5GlxyMfjnTYXrD4z4HfGWd6vhUmBmM+SASM5zbWPAwYATadeR/yzAXw+6Rhgm
	 7BfmwlHIm9H4txYIad3y5D4l/y3v1FwI7eBcFL9Bhc27LNXQiOI3OkM3GjaZJS/fHU
	 r6M4lIne5FK8D7kT+kq9RKDQOehguIwFE8dOzMcqMHTiHkyk3abZfj76RHWuN0bP1Y
	 jfB7AgJtx7EJ1vXr8ZnFF2LjL+vEc/vxPKWre5ogiORpSb5QcDTQ5Lwh9v/tu0xaxl
	 rmrxeGSmNqQ+a9peHvqYkXsllnql8iAyZLWUWoE5P95L3ImobMdE9vwemf73h+ATPX
	 4E0N6qjxHZIAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92034D625F9
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907203358.2131.7384134783022861850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4de38b43b20c59dc61977d9431317c3bc0f9b3210b91d6119262e13692ba3d
Date: Thu, 22 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769072033
