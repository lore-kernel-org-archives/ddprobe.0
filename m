Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADDD130A54
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751131794; cv=none; b=O592OfYBqSsuk68zlD+Yw+ZlKxzaIhgOob9e8v1foLmF9J32I1x8leMqq/NO1nCQFndTEvT1uzCR9xB3fVxjakxk6Cw8mubT5NiZdBe2K0lhxKFGIHut4cZ7R5+CvAPvvyrLf0bjjwpy4ZHiCPdvqeub/SNJdPRGmu0hUeQygT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751131794; c=relaxed/simple;
	bh=kpQoMJzfL66d1aMSDc/aGSCa0ECAvDVa9x0mV8HY1S8=;
	h=To:Subject:From:Message-Id:Date; b=JnNczZWOpIIq0O7XxXwJiWIsuP1W8tFcGGUE61gCEnTAZBEseOpdJZTPgwBqu+trTGoPyx12odwro1Rmtac9xnY3aky/5IQog3CEGPg4CxcwYyiF8/kf6JFBYjrINejDVB0PQf1KYxQk2BRdoEU7tTk7l3a6kXHJ2MKrtqKJHGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxVzUDNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxVzUDNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6425C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751131793;
	bh=kpQoMJzfL66d1aMSDc/aGSCa0ECAvDVa9x0mV8HY1S8=;
	h=To:Subject:From:Date:From;
	b=NxVzUDNVctJTnM3moVNjX5qR1JL7+mXj7NUaDP7+J0Hy985zeTOBAwHFnewB9VwUA
	 HHI/iXa/TZvx2ZQOCRAC2LbKu1vF8058E/sbDwiUsLkzCunirh2eUK2EiBOk+kpwGt
	 pP/u0leQz6w2hiuHJk+29D3QPU1XY5OpeG52jvbEbG5GtIiyoU+E/JkDVKwAVyMxx4
	 AekGnlKe4Cjn9vx/uRK1idkcbKF/q2J2O5Vl99eoDoA94EA3ETBR56Y1H06I11AAlM
	 EKcCIaBNdWSo4JYI6E4SXYRbSsFsbJq7fOmeuhqGikhYhjnvmh2tiyO/YYrt1fu9En
	 U9XWpcE9ELGNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC5C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113179358.7555.13060442023911131444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd0ad2447f3e2f351d245d49e1a6e5786af2f7d2931721c8b7d4768725bd099
Date: Sat, 28 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751131793
