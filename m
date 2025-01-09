Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3211442F3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736399754; cv=none; b=KxNDGS2HTyMZZhZ31UFs0Gwb3gQCVZbypU/a7zg0goqll2CSefye8zpfyusuhjb3sidTHieYd56sEJSTe//KLOwfQ99H1V39CiKXwaqwPDQ8EUab9xxCSeRdNLTtRwVscqJM7oBEtmXdRJ10sWTZBf3vHM1eZE3k2DoaDHmkbHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736399754; c=relaxed/simple;
	bh=RBKOq2XvoOBY033JLLe25k7hsMt8aS43IwLyWVohAlA=;
	h=To:Subject:From:Message-Id:Date; b=sTEtgS0+k6qxyt+AJ/No0NmYsNJEw2T9FvmUUX8zZQXmBCmE8O1KA717a8+KptHOBbpkhYOVxCOqKln4M0R0qKlWcGFsDvJlFt5uKE+MmxAzs+P+BOriXY7AsmmFD0nwP5lhV3dpTWdbbhWNeLoLTa17N337BmaJc02EyTyf/do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwLfc3oM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwLfc3oM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF92C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736399753;
	bh=RBKOq2XvoOBY033JLLe25k7hsMt8aS43IwLyWVohAlA=;
	h=To:Subject:From:Date:From;
	b=JwLfc3oM0er48QR5qgCWEyO5dZzpx9ykXh5aXSgyjH0/iqoL5dtFyHZNSlJyKaO0y
	 HK80VydQi7nEk6lPOb0vB/E1lRKSNMj2m0F0tShXLRoJ2tds7OBDye4WenRzkpf/C9
	 eQzNI603g1qYtc/JEmXoKLHbeujULvKEeUaQLiRYk8SWDtqSWUGwa0QffNGTomU4ox
	 XUGH+ukimDTRbvE9qwibTRvkMN8ug0pKIWY/2mkFAtbtjejfJzwW+me40pxHGMlC+W
	 UkTfm4dtL31+9mJRcJr++YIjpqdrW0oAVC4LfFNSatxQFj3t8FEcVUBCndD1DDwBT2
	 qk1XdDe16qusQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96493E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639975360.11567.8629844052599530774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a32b36663335eb31322843d817272790d6995a37ddbefd3e435525b04e38adb
Date: Thu, 09 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736399753
