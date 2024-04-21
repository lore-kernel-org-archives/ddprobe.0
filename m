Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E10FD29B
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713707423; cv=none; b=iLpT8zpUOagssT7+kgOQdeRXn25yGzQtYwyj+5hmuwVBa0jGM6x6y5QDLXMGWC46Ptkl2ZMB7PxBJL48PHEo+7mmGGCgF03H4W4htQJSDgQBKJwfE0HpJbgFeDt7Xtpve9awo01p3JAg++0HUJ27a1SSDFifABHavf9YmIbKEzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713707423; c=relaxed/simple;
	bh=cFH+0GuEeGqznWJkgkfrE2fNMAPtvQPFHWAyDVNQwMg=;
	h=To:Subject:From:Message-Id:Date; b=K9+qqWTIzeZdJRFuHniS+yX2fvZR9LIG4G9X5qawJ0Xpbdaoej9oa9Fm98GeIVT0tNWCwGVGYyPd38JWboba0DgvBW9dI41GSHXvXn5ozWT9ooMa8cjQjeDfUiiPgAXubeb8G/ScVMp95EHSZG+2XY8WhQpgS1IHQUpsrahECCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzgnbZ6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzgnbZ6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A66C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713707422;
	bh=cFH+0GuEeGqznWJkgkfrE2fNMAPtvQPFHWAyDVNQwMg=;
	h=To:Subject:From:Date:From;
	b=AzgnbZ6GQLp9yso4esgirY65vp6+M6U2w5+OvpB6nMe33WO7Y4dqU0A4uqem8mlCq
	 iukiE0KUD4ftWFKSRJxcuOC2KrLpnqIoerTO+DIOJqk7ZhOw0HN2pfBZLw8L20WKtz
	 XPbT6+lZKX4EUGpSgNnxRWPibE7ZuGcZlpxF6se5YkQW6RNp9BW/2g+9Z4UrLAjJYa
	 7jVgTi+oe3nPtCWW1frC9M2k0/HJQsZbvkCUOMs6OoHUJilBymi0b2KN8HarqYs/He
	 Secrfe2WH08aHbI7bVMz3Gdrk9IWEATGAXWfWr+MZZxqPehodf72+8DHhIPc6kSV91
	 pNaAqx9OaA5Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEF9C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171370742276.6201.12531532131106694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1710d06b4967816d827fc95e77b6ce32ca77e15031e1c1ecb8a8630d70afd4e
Date: Sun, 21 Apr 2024 13:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713707422
