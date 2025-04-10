Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDCDFC0B
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744244393; cv=none; b=fqUbKh5JZKYxLeWb0ucTI5uC/kqWQeTct1NoWIrUZy8umo34CxHmpL6QuThBGcAovKlXZLjLHahQBTpgSFPW7RUslVTFmC2OuhfRaMvyiOtJZKdBzH5NsnoYOZw+u1aa0Ouy167uGOqQeHCzrwa0le4bMtlbXFFw3KIXgeTw/V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744244393; c=relaxed/simple;
	bh=rrrhvNN1Fu1LFFJPDKzDD3H+xAHWYE/NnTUn2Gxx/Ck=;
	h=To:Subject:From:Message-Id:Date; b=t6raQ3xd1bKcTwcDz0l8pzLuSpW92NG5qkz1m6JAjD67PbgdwNUKl05DUtqtRB/+S7Hhw6tvYtZqnRSlEVRjNheZSx2dmk4fPHt+qwXpj3uowjMlwQCKbBZyl7G5GoRQFE+s3Lsiq3eFZEEa14jnwdHDbKPTJTYvnteg+6eTKLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjkWUV9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjkWUV9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F1CC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744244393;
	bh=rrrhvNN1Fu1LFFJPDKzDD3H+xAHWYE/NnTUn2Gxx/Ck=;
	h=To:Subject:From:Date:From;
	b=YjkWUV9s0KU4vrVPsjE8qwBYaUqVvqFUZNGj2mpCrCr1KzVXp+Wo81ldVRT5219hv
	 K7284tbS/oq+iO1NYFCSII6caDWePMzQBhG7bDNk5/i6yDt9lgJfav2xfW/ISGkynI
	 gmfBaJrPetw9KTv9QiucrwgPcLy8eMp2p4gSbu5BqP/dhdqRq33DpVR80yoFSMbM7a
	 1MZACCOFUQvMNTwqm7Bbtn+zG/3ceg6ABSI1i5tj37Ujbh+pcolIScHen53Xxh0jEs
	 JhOOEP6Lt1IehQfk+Nfuy5/+OYUxrmkCa/OlvelJCstAM8ZmqCC9q/X6Qba/1smwXV
	 eG9KdxZwvtnTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FD3C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174424439359.24123.6720665696202738310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8304f8749516c6d36c61bce4fcd3953f8db0c7580b69a7edc91331186b8693
Date: Thu, 10 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744244393
