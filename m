Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6451C6FF5
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770082434; cv=none; b=J3uOMlttqAboOqfJ+amLovq1FHsQZC9YGPlP910vu1H2BO3t4v+k+B45KBnKWd/NGx2sCpIqNtqS6HDXDExwP4xDGJ+3sU524jdvybZqXJVhwuD2HDZs0WzHWtjdY6d8Ob+BRDAddJTX6ryx+gyvh8BtF3I2CRoXo6JjWte8tAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770082434; c=relaxed/simple;
	bh=mzDddBSo99SaMxRGBs8eQ+WRJ0iD4JPx/gW3CWlDQ6A=;
	h=To:Subject:From:Message-Id:Date; b=KfYE3stmrMRZzYHYsHsT/tK+9qOBNiEugsWE9wqyOaJYftedndBfN/XtsdJxyDjaYmQJZ7kHBkwdGpIQ8nHO6Scjd4U8TnTHhBBBuISCr0zW0t0+lQFI2H5ranR4r+rb3/pZMJ7A+dR336OezYNTAgb9XYyG9k20qS3BAqBP+Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOfHtct1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOfHtct1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF23BC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770082433;
	bh=mzDddBSo99SaMxRGBs8eQ+WRJ0iD4JPx/gW3CWlDQ6A=;
	h=To:Subject:From:Date:From;
	b=WOfHtct1yftn5LC+YXb3AuYWtFfiUriXZ9rXbhTnQ5RHjWNaWpV07o46nvUPiiVya
	 5vF9Cs3yczSSLcALDXZcHn3+HdZyG1E2G8H8ao9WYtsBlc7CyspIBTv0GY+vBVKTcy
	 Ca582Qg4qfEfYrHib/mIS2ZzEc/QF7IShsv9BEaNVCM/DHThbwyeOS/IYctiqOBmzT
	 6PhRU0fVlBD4V2SEAsD+8dkWOpv36HptDfq8qynd3ZkOIGsuJfwEhlHsN6w1tZkNgA
	 XLeYrQcHxZMNDSWkoVYfS4an9rjqddzVv+rPQrKmumAlpfeLGsjVdzLzN4n0BppV5s
	 N+hsJ7JIO5mpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974DAE73143
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008243360.23610.8771584124465923461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea61228396b020d3c1839f5ec427e5fa803ba8ccf8f6a3abc4b9a31e8de04a8
Date: Tue, 03 Feb 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770082433
