Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AB2185920
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749674994; cv=none; b=kdjEmfPyOhcplTNEbURQGNiyz/nwXGExxer8Ezo0m8BnqErZBjnDLFDxRgRoX2klBWFgWUCJwXSgpOOylTfNlelGWbRbvIc9o6OsZjG5R3TGd4jzoKrfDEY9+5htO2JdPWZ0UQt/jbh2/2r4l5oFg/cArMexT1qYyt1h+aojGOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749674994; c=relaxed/simple;
	bh=xuDooNWlgo8d6RRr/OuM6foClRNjPuuewXfzGUK8qOI=;
	h=To:Subject:From:Message-Id:Date; b=sJ+fGAnKAMzKwATzzlzHIUTLPQEu9UCPMkgMfzinZD7Zcv9wkBf3IaNP21IuzTPw7KLvP/i49cqHJTqfS+4AsKIhSjxQq97iZpD71YXzXRf2mTIrE1MoVDa2bp9JiEWogEp8ThMFaLDTw7CPQhuqoZIII0uizcDi8+wEUOrzIag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvTPYUnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvTPYUnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A825CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749674993;
	bh=xuDooNWlgo8d6RRr/OuM6foClRNjPuuewXfzGUK8qOI=;
	h=To:Subject:From:Date:From;
	b=nvTPYUnP+K2287eZiuyyhV1wTi1ZuvlnchhLWbb7DVDYTBPBCs3K3bgMLdYDpu9Dp
	 EGHBNZ3/CIkGD96aiwPvjWccwG/+rDIqgOt/y16aWMAiy2KauwCtElPhglqoQWkAmd
	 xIoMRYWqOEASbW/c4fsTHiQvzKmyUsf0GJ00BAEWmTLB4ENjbF4aOwDloppEbcQpix
	 ZB+eGjw263DVWIWZKazkhnfN3pzzLn+uqU50SyR7FbRc+gv17N6oVyOO/MXUeRfmZO
	 6EIIFylR1otjAbCGr0PqZXUvpQtWJuqISawvWxSLCwSlF8QwwGd6pt/vnWeIoor54h
	 OMeWIuxCgFFfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9212DC7113E
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967499358.5400.370883777330896895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b52e47a70086055e4cd88339e427b1dc88924fd2c67b122393f8d9eb8234c13
Date: Wed, 11 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749674993
