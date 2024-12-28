Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A97B16C69F
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735415154; cv=none; b=P4aGK9ma6AK1uDAwklCeot3ODTp4DJtE28n/T8m/vLqC4j37ZIMKkLtL1QGJ/DQzwSEdDymI7OIB2rO98qXYUNMVrVdBGag9fL6BT7YBj4iGx/bWug9dNHvSg7PVExyYAizWLZDqUaq/4zcILAOJXTahxS2lGcKR2SQK68+eBPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735415154; c=relaxed/simple;
	bh=ALqZVduIYDIMi6902VXiTwAZ5IizRNn+d3GIVbL0JyI=;
	h=To:Subject:From:Message-Id:Date; b=iy9Tv2scbfDTRmEt0yiMOYhRyRs35YLXvJxkYdI+wmCuIEfvPmaPT762gcJeA7Tjh5lFrqUUyqheW61Qb6Lqj8fJAMA136Mkeb2wN8Z4zZV9LWLnGd7iV10EUVso2W/Awa3BtK1Akxo37kpWcuyMV11jgXhjsJtJaRZS9trcaXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pT+xoa+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pT+xoa+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9D2C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735415153;
	bh=ALqZVduIYDIMi6902VXiTwAZ5IizRNn+d3GIVbL0JyI=;
	h=To:Subject:From:Date:From;
	b=pT+xoa+jkQbBd+dLLlJOK/jgsCKSvNbWThoJAPQopOl1A3UlsUWFx4oDJIfcxUu6C
	 QtYg7Q/DIPUiJaRnqdPFQg5Sksp2kS63+c9/ywDsK4APU8zkmnVMOvmhpawH2E7gJS
	 EPJ+qWMyqsdAG5pqLc3U7/DdJGdgKH2rK3UXsmrN9AZ/oUtnuqBbtmBLO2GEHT3QAf
	 VMpqs3khixKXrDCtRwCSNjNLY3jcljFa06YjEkOFG7xEPUWTyU6np/ibt2XAa+dPe7
	 FEnxq2QOasyuhwqykBemoN8aqQjBNRVK13JkCObbj4rxRyeByUtdNgYgWtBAY7bX3E
	 CiQYEZaPjsJYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96239E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173541515359.19137.5895238272430466259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00372cb853fbcd22e4ce668b4dd359ced137aa78e4c69f7dd616d8ec10f209a
Date: Sat, 28 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735415153
