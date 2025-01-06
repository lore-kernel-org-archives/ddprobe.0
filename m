Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4086517C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736142954; cv=none; b=eVVn+FZ5o1dlz3A0gbGpRvaQQX7akvYdannT3/jz1t08JWulKhsfYtbWCIgEQnp7+nBPeFhYJszZmhB9JA047Dya42r4Ype0Yi6h97fi1dr/JiL/45ARBr6ANGMyfFylvBqmp3hFoP/EQKLoD5o9GIsmrQgQOW+p3TDVapah818=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736142954; c=relaxed/simple;
	bh=dLkPVbGQc2F9Q8JDUggl4kX6d6WIQ//n5PvYJYGSoYQ=;
	h=To:Subject:From:Message-Id:Date; b=Aja5ryxTKzkXjieMvTBoeP75j2oeLAgOP2zDqKYUVfL8cay4rgg3Y9AZGHgVULhGJXocwQ+T/2wIeNc9TTkMKr1qqrEnT4eHn4yHwb2x1o/V2ZpeGiT2a2IW2jJUOwOtSL1TM85KSBgU5e38CmCZnIyXDOMZw6Gwr1gnwujktSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLa4PMcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLa4PMcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7623C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736142953;
	bh=dLkPVbGQc2F9Q8JDUggl4kX6d6WIQ//n5PvYJYGSoYQ=;
	h=To:Subject:From:Date:From;
	b=NLa4PMclytqiDNyWC1Ix14fTBR7uaXe7CCUR5n1VitpuSXSydaiHouaZB312KHEic
	 2ZkJE5Z6jDgFKYDXEhGZJVgpc2evfHclSn7NtgqvO8r7D8aklHPvClRN9xcP4WvHhQ
	 CXKhWKPh6+HP9LH3xdTW21bWeKIzEVEl69eNS1v42FYUidwCJ9rf3Haij/r/ibbA9y
	 wWsymyd6PbnGu8fZaRFdXxclV0GJepMvvddW+p9gu0g5+0UCRFO3UI9r/6G2nZgrKI
	 TsAIowSfFqZwhPxl/PPKeORATXXCA1GSLkY8uwgkhAgTTRpzA9ucVKDZoykc6xjbZa
	 xWCyHUtNqPp0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE11E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173614295371.19585.1283003733130740697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee16484f57b27607959fafc17b3f7a333fce7e85b0ed72cedf4d0d883b4e754c
Date: Mon, 06 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736142953
