Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF9F25A643
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737986754; cv=none; b=dRdxhqBuZqVJ3aPwyEoqbBwZgB7M+7JQ0otH80VNWULh97miz9lkoyX3B0b6qQDkG/icaO0vfjxOCzvrK73Wh4WUlcwpeEh6Li8vIhjsyuFSNElL2UkEp85370r0XWSlb32QdbnnFXhAI8bKHFeYMjvSrlCuD+f9A1beuRff7SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737986754; c=relaxed/simple;
	bh=6fE5B1Ci2fI5EMF83CfzxCeXXoiGXOT6b5DdPfDW+3s=;
	h=To:Subject:From:Message-Id:Date; b=GTKdJfVpk5k28sK++yIG+hC32YsgT0xNmX/q9EDCQ9pSB4y47s/hwvp/BknxDPoTdj9O+p8VErByJMuTcL22jCV9Ov9AvUAtOJVulo1TKm+t5eujxSeVuoQcDC0AyFsy+/T1Sqw7grknzdAN1DM7ieJeUxxRyJP5dR3sHKnD8Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fly2EiKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fly2EiKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC662C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737986753;
	bh=6fE5B1Ci2fI5EMF83CfzxCeXXoiGXOT6b5DdPfDW+3s=;
	h=To:Subject:From:Date:From;
	b=fly2EiKE9oTBPhyrasGwZMVnqciCQYrMrocQyuEaER7tNiFksfSWKn9Qe/UDTnhDl
	 Kd67D1bG0l8oDQ7PL7tbxElXTNg3GtYauzMtKMeBTjR0QnyksxDCQs4dycoFQ31YM5
	 uOh7Macha3rwW8vn/VoK5TBFlucReyHWX6TuOkNfHpobaLkBn2lfVh8shk00FKgV2j
	 ZHSiwRnyQBPNZZjH6EpS09xaIYu/ndJmI6XyrBBJzDgpd3x0VRH1SB/WGNKESVqShI
	 L6DEW6NV0WB+jciQmbRPW94fFvxN4bkBa6pxqQbjzdmBjBWZgWjMgQ6PuhOxG7gDa4
	 kPVNqkNU0oxog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A079C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798675361.4673.3245836420997843884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4da63ba844f8e96f8f9df9d558990ec2b9b2d2edb89645c535fcb6351edac4c
Date: Mon, 27 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737986753
