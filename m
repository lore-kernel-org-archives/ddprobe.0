Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA0937E317
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771889694; cv=none; b=MFA9D4yDxEM7aB1VLRpAspxwcJe0CwrzBBaPLmVg2knxVEWVlmPHT1BntwCviC0bk/F51CWTWTZkf9hkc/uBcLLj0EAr9o3Q4avq2h0KQgz5vb99plTWWz/RYGSMKZEbvcaNtjiEZ/CeK/aa+9pFS3TMSXAWepwSu5lQVmoIoSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771889694; c=relaxed/simple;
	bh=Gy3vrciT8zzTlEI8FTLKsIguVlV8z3ipZ8HgH2aTEgo=;
	h=To:Subject:From:Message-Id:Date; b=FJ6bYLRfFrGkVItf69aD+km7d5kz3RHxHou1V5jwbtnoSj27IotAfrpqznQY83Gj9Y8bRGQkZcT9cyI/muLeW0nCr756GJkZdbPV0wjcxC1QEXO2JneGric500831LnZ4w4fZEmpsyzMHxzp34aZmW/C8TKRrOuj4z8XAHoggxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cP2GlnjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cP2GlnjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8591C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771889693;
	bh=Gy3vrciT8zzTlEI8FTLKsIguVlV8z3ipZ8HgH2aTEgo=;
	h=To:Subject:From:Date:From;
	b=cP2GlnjXERDBTw1VWuYV8bHN0QDPDG4lwEgizK6ZLUp4eNFXIurxztTM+egP1GzYj
	 17VG6Px4Hkwkt8yR21OS2t2HCPzIFaNEL7k7qbb3Pv2qAdJqazkFz16G0D5TlNnZ2W
	 CCl4fWo1RzL/rW8RTqsMi31BnbMOfzI6gXiB+M6H7baG1ePTDhWPaI9tZwKbBa0tri
	 6SfZo0UcS83XcFlg8Z3ygB/1IRevqKaEI3h7g6s/Cpc9KPTuJzx/SRT+ZdXUqMzoJ3
	 y8dh5BjViP+J7TYs1mFxm02fxTxIdQucyEcvcroTuoeSHmYzRkF8QxP6G3BXSnQbFU
	 O03EAbxuFufEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DD7EEC2AC
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188969365.9560.10622738634735314322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d82dd979f2dce4f871afdd2b10266fd2ea9dc1275d6ff39306acd9c5926a924
Date: Mon, 23 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771889693
