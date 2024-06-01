Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3208C824AF
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717248863; cv=none; b=FaZebbpJ+q57dKsMmljzU6wPXjXi/o1b+KCc8gvKBn49j+qotpQj6+0+J7PN+E51OLhvjCOXynFX+n5uUM6YGoist0elN+i1a0Y1HrduT7swu7TGNuTy5PWH6rzKF5rrqI96iJLP0e3STTdIFrCOpm8p12KtzJl2T7yqsGaKOQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717248863; c=relaxed/simple;
	bh=POr/KvapVwPEira96R4uPG8bQVgCJPap3lqtWIcJMAo=;
	h=To:Subject:From:Message-Id:Date; b=Wb6vSHiGbG5xXbd3jmRFOtMKRgikU8CC0cFEBbGtHPsEN7uWj7/b4AkVHN9jJddk61AIujJtZID5LGeJKSf5SftGqUf2iQW98qY7s47KEgjubzIvaEtk7CO1zOd8kA1OLJIUBn3nwwRq7UO3Nxq9IfCyRnfifYoUe1mCoRL6gJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FW+QIWvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FW+QIWvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D158BC32789
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717248862;
	bh=POr/KvapVwPEira96R4uPG8bQVgCJPap3lqtWIcJMAo=;
	h=To:Subject:From:Date:From;
	b=FW+QIWvVTPxdm28n55WiCeOZr1ClvKDl8ovS21F+B3Z6dvDB1MiNQ4QPICWyWHZs7
	 DVSYdPAoKdR0vAfMwA15QoNc0hxbtbbBRT2vunKCd2OFjZKoAHDYTvxu6U6N9avmSM
	 3KBUb4AJs0amv0XmChtrKauDd/RSsokvE6hnkQVS5t4178T5glKdjdBVCUk5pBzaAR
	 DqpCcDYqTKSMAnbJOs4BBc8TTcMOonWQiRiwDpVSNn9PaHELDZU76EvPEioMRcDvOc
	 ayFss8JQX0cLBmVgFNGq0olbUmDxjja3JHtuTs0LRbr53pI2/GhyUVyv9i5RjgyfeJ
	 aUqv9dyxGPkbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5F8C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724886275.16274.13815713420655354141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc42e03d549e497bee8e2a742149405739e67458a5196950e3c9d54eb0c6dcc
Date: Sat, 01 Jun 2024 13:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717248862
