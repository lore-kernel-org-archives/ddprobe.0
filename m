Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2FF2EEE8C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789519836; cv=none; b=mwHHLpbEkPOnDnxLMsuehQ7+/sd5Vpg1GiOc9ewV5HzVhGW2ksVfyLzAS8vshFQf20wVYljKyxr5mXYtfsNKdS3jcaIuaQxtZ7+Hno/Yyd001U7paEK8etGSjZs1dt0W/PQjjDpnvydhsXk86xOuw24qbw2+f1QV7S0+yfxnu3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789519836; c=relaxed/simple;
	bh=J9GI5fgXdgD+vqe4dmiCRjkDRntIaqpSncy43oqWE2E=;
	h=To:Subject:From:Message-Id:Date; b=rKkWl7I2HrdPV64LapDIbcSDidHGdFUIgbvNLIk8yM5KrTSpbUczZaAQIVGi+8EY12xAnXSM+rUVZe+gY1FgBold6bf18uWeSLqiDqacfaHdgFLT1FoSDFyMnm4dLr0y/6IzsaRmq+wnMkjSQut8wJQzEMIVjWkXA6QNlO65Dfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1Ow0S6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1Ow0S6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ED3C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789519833;
	bh=J9GI5fgXdgD+vqe4dmiCRjkDRntIaqpSncy43oqWE2E=;
	h=To:Subject:From:Date:From;
	b=u1Ow0S6acIOV1YliCFSlBK59+kv9GKFKfz+oAqUenaNgCiit8pFpqzAdEk9m3Fm19
	 NF2I2Bov2D20k5kxXu3K7vOJUZRLRxg4v6VUYaAr4RgISj3m+B6cksuxulvMU1cSac
	 fyhJpb0RSgRvK2MxXQZ052DIUrwMo/Qpe9MUw4uemtF+mvNKG4tRL562uxdcdE5Gad
	 lgDlNXbD/AxpZ6uUeZt6cM3EuvKq8BEeEgAqDbnoq/TJDZtUH0xzV1eGHDniBXPr5B
	 QF2ZY9A51ZTuiUZ36BMtdmGiVKp5M4SbA+FYJo9CkqzQ9FPu9XQUGgiTQOET+Z4x7A
	 12gkg++OxzM/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE5DC88E75
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951983368.24208.15461939000210043196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d18c403745f76d08f46af621ad0ee739c2b9cdeb43faf91a7c44adca8b36b2
Date: Wed, 16 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789519833
