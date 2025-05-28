Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415D528C869
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748451594; cv=none; b=UINqIqxO750uzdeZU43cepsFhMk0FJrfgFis4mmtb3ErEUHdnJXU1l3ZLJ3D39iDOsKsdlllPcqF1ZkD7ZpMTTzrMsNOv0mhfA7CHAKMr9L7Kxw/X1+VIEFK567Pvk/UA2GZfviC1r558JWSCrE5axMvhmEalrQ6t75IQWi2E8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748451594; c=relaxed/simple;
	bh=smxfLELVUk8zkFmyrv2NUo+sOFg+51Lq7Z+h8kLnc9Q=;
	h=To:Subject:From:Message-Id:Date; b=H5SPo05XSgCj2eppNqKyaxKrZOWNyXoofodD7GFaWf5fMTZRgOEmgD5VQqXXMlnl3AP5qqNc7vArqLb7iq6Cu1Gmmyuqcmp6b7EN67fdBDmIsYZ+0gd4DPN9mOD+Nrm3lXbqNo9yhmB1ZdOJOdufVep5z7zVLDKWm8xxWqoWc7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elvk75SW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elvk75SW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A143EC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748451593;
	bh=smxfLELVUk8zkFmyrv2NUo+sOFg+51Lq7Z+h8kLnc9Q=;
	h=To:Subject:From:Date:From;
	b=elvk75SWeJmr3EYnDlQIK3T7CPLwXQOPSrC/890homRfHSIM7d9rJ7Ps8luXw5lHs
	 hU2nI3PEVSIN8/NF7T/CQ8B4K71eLCkQhJC6HpM809hdWT1bUu5NcSgfAS9KbVSYbe
	 9b3bhAIy95KZG2lAYpN3ab755EkRqHlqlLn/pzm42rA2G+OUHKYTqCGv8novyPS4A7
	 /IBEnmvmM2bUr3HOKWw8/F4MdFm38Ig5tbcAapUoDF5XS940McXvbiRpf1w0y1Efjm
	 rBFZ/PwQYiZbPx92satZepBk2mEvzfwWYobkJJt32NKwOTFjZZukfY3b5ZE1aCut+h
	 5G/swmZe/6cWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E828C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845159357.8120.529259585197496968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876b2e8ade5fd7b07a5f481925cbe5b850659aaf94cadd66e94f085bb59a1418
Date: Wed, 28 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748451593
