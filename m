Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4497DA66
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770320034; cv=none; b=EZ4dPxGimXFAVPSjCDYKcMy0zb+l4RGAmX629orzYeln7ZSk5QVpYJn3KofmrMPfg5WiPmpI+NEC15vsDHqblNUq+5/E4e38B/wrM1/hV06QNaevoAkzByug5uujP8peiRjaMCpu7HkjDWtHodrwO+DBGvKAZUzunjvYRQGEJ60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770320034; c=relaxed/simple;
	bh=5QiYibAYtSf3ZoPiApKXXsisiYrFA2WBSdXXvhGfhYY=;
	h=To:Subject:From:Message-Id:Date; b=Tj2hPNCud+7S85WBY3XSxgJVWYkDncEFJX9qINMmIftKksL8vhwO05Pb45DUo6m6yGMO5JjHSpDEykBW14FG8LNxvshsP0mic79H7FPCItfrNIgeZ5M+M+z6pPgyVYyjS/+DNRI0Ehd/SsRn2CPqWv7DtpZNAeFr/NJlCKRu3N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0++gyGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0++gyGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D2DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770320033;
	bh=5QiYibAYtSf3ZoPiApKXXsisiYrFA2WBSdXXvhGfhYY=;
	h=To:Subject:From:Date:From;
	b=F0++gyGy6bn+PjDZwrxwK/l4DM6+Fe/+6pKljhKR4Zqh3k+gPJg86cPkTPKfZux23
	 k6IxKJnrozRLFbQSeTfY66SJzKHnHDUxVFC6oKCgGWKpr3vZECPZIwMAZc7fhXKyD1
	 aSS6S0VP5v+fLBv2Zs+lI5FUT7BdHprX0P/ZPMqlDnzM3QaRNiirMI+7qEFs5t81EW
	 wbIupyLgieozUBX3E53AabT8bA0t8XrX7BtwzaNTrJ6ZFGG22CWt7au1bZwM04eSqo
	 V6ef6uQn1BCalKKU0d7TFE81cUgcX9kJYPuysxJc6iVpR7TcUwUnCej4kHd0kBLUJz
	 yZSKz7FHlXM4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A9ECD999
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032003359.17625.830499366315554752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76f0548ba877d9fb94720821eb1b5e7cb6687bf340659a4d2d81500cae045c1
Date: Thu, 05 Feb 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770320033
