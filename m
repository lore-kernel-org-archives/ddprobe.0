Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA5537B002
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789299634; cv=none; b=gNd6Yp4sroGb/uq6DxnuwQFIvT++aTwipB5cUEbvIO9shgu/E/4fyAhP6gHhYHbwqvHlJlbt2sMgGP4qLwNXgFSjADRw5n8dEnI5ObFcdTPmEOByx34PK7UQDM71TL8ueJYdr/siP7L9deCV57CKb2lQDNiBedh0qUQAKUjPkp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789299634; c=relaxed/simple;
	bh=tBINIfLS3ZSNJxTtvQ37Ulqy/4UyrJNtCKvIvkBCVj4=;
	h=To:Subject:From:Message-Id:Date; b=PL4r+43BrbglqsViLDkWUHlKFd0uN+IkipC3POM/tc2Rx/ncc65HARADSMYiemzQOyEfd8xBdULk2n/SLEuE93xzpz5TCvvwpxxsQJ7kjmqXs0nxCtmgRHpH14X17jXBBcHGq0TEjsHuYzXedoIhdLv2YN6gvw3vnMOqX1nvG60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNEAx7Oa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNEAx7Oa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67AAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789299633;
	bh=tBINIfLS3ZSNJxTtvQ37Ulqy/4UyrJNtCKvIvkBCVj4=;
	h=To:Subject:From:Date:From;
	b=vNEAx7Oacdw9d18PTu/KFXplla/jJUS6Z0Tj0E7LBKA3vc2nBUTW8E3dcwImeuYry
	 8myk6D/AHB1ovpCZ7i+xfakbuMTZSBrS8oRECxqp9lvYIG4ibn7VLAr9s1CWK9zGF/
	 m2Ei4bRqVrYPJweqflptDJG4gcs0nWRvsXoMRcYU84pRzxlxX0NXM+sEBQb48BkScv
	 cS5QoYegYneq7bGixC3tKSWtW2Xn3uAfrFL/jjxOg1Vv1NIZI7yqTgQgDJ3FDxeOgR
	 +SMYUUqxW67UAXy5qirOuS0Ve3ttjQXS6nlU5VxQMWT2dnIqVWjANrbCcYx5dpSIov
	 746Pbh3/ndfIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA2FC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929963368.5658.9639381879234037693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9d3aee143d590c9425062f6457fab85ef62c7f1aa72c73323e964da057fbe5
Date: Sun, 13 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789299633
