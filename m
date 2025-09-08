Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0092E1EE6
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757375394; cv=none; b=LanYY2yJmheWU/NFRId9I0HGhtpF4JifnAI4xjzUuz267Mpoaf+648vb2SWurfE191Zy0wUjdsC8AcaElnWXWTp7wj80gz6Yu5jDLnf60yIYQRM/VgQa/VGJ4fUilOH6RSeR85vr237RDnnHnMtKymIFg6kGVeRlYErZKvfWqgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757375394; c=relaxed/simple;
	bh=2NRVqgn7arX5Xm14rxSTWa46f7z//EnwW2BLzg7E1jY=;
	h=To:Subject:From:Message-Id:Date; b=eJ0OnWq42G3Ro6VIci7/ypf6O/06ObV38qxMqrwY3WtH/kMya1zup3jK+167n5H4MGmwi6taGkC4VlCyk3QV3ygA2mQKIoD/CV9bvw2CbnWm12FCD2Vc1OxotVmnKj4zoAGRGP5rnsh+FQzR9w2Djl8X/EjEySX45OuE41gGAcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YF40CmZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YF40CmZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F2AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757375393;
	bh=2NRVqgn7arX5Xm14rxSTWa46f7z//EnwW2BLzg7E1jY=;
	h=To:Subject:From:Date:From;
	b=YF40CmZN7NMb9WdqXnM5/KvrPOwSRAOvySshfepucfYSocFX0S+SzMdqG00gFzAUI
	 0toT9eBPRgK+vrTsBxlngDGVUSwA2ai5MC3v4cS5Xm7vHle6aNqWPNxRIeSVSDYi6D
	 OBrEIZaDE/PqB6H7Mh6DAwIxpKjrnp2ilvINJEHgdcuA4xHLBDfyZytjCB8ceIya56
	 qTWUEZt8TX4F3lUT+Bcr2ZjgAoPwNBRe65NNrNjBYNu9P0U/PmM39PFuviTF7hgpct
	 r9PjGcH2mpGOiCdN6jfILsNbBYTGeB/+TpGd1iBgcId5LBK5BX6H3AxKbH8gNFbTSo
	 bt6sBbsVJxbCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94249CAC582
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737539357.19949.12805452359559693923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c585c0231871a6cc4c92db6161d910fff16a34b4a3f05b5e28f9d7cedaa4305
Date: Mon, 08 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757375393
