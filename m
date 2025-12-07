Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E10A2AD37
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765151574; cv=none; b=GQdfIlIXcGndkVTNp0mIdp9KY8I4qBon9Y+LT4s+TPKhuqihB+l9SCgu/ENhgXHajZ286vR4+KeqYY9qruAVXYde9orvAajPY5umJoV/hr62xWzfhkqa9x8y8HlCmeKZCjgq1GYQdKVa/Qr4zpthj418FYByWFe+8yLwyRyMNw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765151574; c=relaxed/simple;
	bh=N4Qs9/BK/ig/U0Yz5/gnRAutL7ag0IcrlzmCL3DFzE0=;
	h=To:Subject:From:Message-Id:Date; b=AnqDyBdHLiYrjatt6KScbcKxe0xj21u/5S+GC35NOXvKWcAmYRSjS5KPrjYASaB/THtepRdMKhGkqbeb/eKX3Q2/ung1etpf8GCMCxEVQaxp1UcgHLpGuDUd2/RJcjQ2BCSw7ZCQRqzEP8L69bDu943aZQzyXH9PeC/rpNQbfig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTZrbX4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTZrbX4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F02C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765151573;
	bh=N4Qs9/BK/ig/U0Yz5/gnRAutL7ag0IcrlzmCL3DFzE0=;
	h=To:Subject:From:Date:From;
	b=XTZrbX4VYdmfGEbrv4Y0yN3Lfu9c/ezlfu0lJKbQIG3HC5yMI2fl7n0YQH2VqK9V3
	 YrHY1a2tZRZLToNRlEqdYdvk4QXlYbtmWbqLcCB1MEgghb1i9XGeJGQl0Lj5ploI5s
	 m5JCIWMWTVgcfhyZUsPLZ+gxYIXhXIKJbC6O+9zXBbjWAbF1hLQwx2rQcet2yb0mzH
	 8rHABTsmE6t9hBqRqTfx9zVtLElwFWGnNgoD0c2OKjLzs7ICgnbxda2OY/MQoVFwjm
	 GA0o3ROtOrWeZkSrVFTkp3V3TyMZJfFhjM6JBQPEIEzb91aDeaexgmcL+3cYXnV57k
	 mAzhQet1J58pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96678D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515157358.9027.6533859692108899223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd4c82750f96c5c095b3dd8081fb12b0de72ceeedabe066aeb6127beb8397eb
Date: Sun, 07 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765151573
