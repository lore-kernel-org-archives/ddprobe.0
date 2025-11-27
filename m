Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC7232ABEF
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764239574; cv=none; b=eFdAHdCr2MG67e91M1ofaZoZsgY8KgExvBfaS0H9q+Ip71uTF6jCAH9LCOk4lh2J1LYKU3jc5Cr1TXe/ZsHlMR+/YNJ9My2Eo44fBJDqWly8UVp6UZzKH03V/Q8lpavzl0sd8kji6qINDfEvTDUla86wE37biuiyWbKkEOtYGr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764239574; c=relaxed/simple;
	bh=qodaFaS0WiHZQVIcR0V2CPC5ahRuf6Q8Emu3gNisWFM=;
	h=To:Subject:From:Message-Id:Date; b=i6m9BMYMiPzDjSf94xyYzdoENYuoh9G0IHMQBZ4jqr7odRwnw71A0qh1y/VE9RxKsMxa5eiWN+uG6HWvP6kfWGpmf/WFZ2XRnXqyCz2uh7M5Li48aZ4saC5DHYToV0otSB8Thgeje+y2EA2L8RuRdTIYk6CiYkZKEJpy/Mp9TI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPmZFH/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPmZFH/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE234C113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764239573;
	bh=qodaFaS0WiHZQVIcR0V2CPC5ahRuf6Q8Emu3gNisWFM=;
	h=To:Subject:From:Date:From;
	b=kPmZFH/lRjChzlGDV9v0aUrh3raS4DY0jj6NsvBOcMrualBIaVuwF25j9l+r8INXi
	 TlIVy438ZN/Am6Oj+yM53DeFbo4vbbGHig1kb2t8dlmkb/nIbgnUqjjSfOT3gfHOHH
	 jb3zFqaOPq/bBbe9nD9HPilkd2QGAwQ+X1zkBTD42rRyhKVqDKf3MOMSWK/maEHh3J
	 ZM1sUrN9Zxgf5J8XYyDUAkmxLh1EkPNNWV+YmUgbFzGzSVMzwwBOcT9WBtKjSQTNLE
	 76wMZ+Y8YgR8iQGja3RFBSXOf+yF6H/ki92BoCLIRSgWDUq0WYiSbNvWkQ7YT4bQIh
	 sBTmgv4k/deig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D54CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423957361.21766.4693905574967053796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f2a9d325552a3011ca5f52d35e99bdbd291444f081109a2bef6f03deb650794
Date: Thu, 27 Nov 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764239573
