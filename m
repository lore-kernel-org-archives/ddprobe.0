Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7E71D88B4
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761611993; cv=none; b=Q8Fz7ByuWipdvbWfyVLsgRZygzXtrP4eVBHLQ6Bontt2HBSZVRwCa46Lvl8pQg48OpupTBmDr1ilJm8htdMFySIWpd3oxN9NwbWvvxVOb+QyoKDCVwmn75j+ysZyKfqnzPeNqfqBTgp7RUk8Uk8SQ064j1QYHqisnlZYAmtXquM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761611993; c=relaxed/simple;
	bh=sGRhr4AqJ4nLiMAoQ+k37oo0QnjKmsaiPJ/NStlygbk=;
	h=To:Subject:From:Message-Id:Date; b=OEx9WuGCb7oot33JrJM7EMLIoHmnlsi/IeDpwETzDLqknYCJ4J+NUntb3G2tTECS+xQ2lIoy+SZEs2vy6k0Srmc/mHcnWiUERR6x4NL/s9Tt4uT+P9rCAtz5F/SCqxgnhhlSttLeD5gYIHGOetOmAInpNv3HmZoS2lAls5UF+C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWTFpBoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWTFpBoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF72CC113D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761611993;
	bh=sGRhr4AqJ4nLiMAoQ+k37oo0QnjKmsaiPJ/NStlygbk=;
	h=To:Subject:From:Date:From;
	b=NWTFpBoMkPYc5NC4yB4n5RzjPOzum6lyWe+bo+1H3/PlTEsGe3MQdf9qT357XPjDD
	 89XblIntKdX0K0oBNXkTvDwGdnCCry5wRwK+g5rgsz8CFIk1AuqSsSq2RXbbjI2lGZ
	 0udsdnAlpn4AWfPiG+oE1BN0gyHuj7Z2gKV1/FlUF/EzMk2euV7r34+o/vWoR3S1iW
	 BaCpstb1iHTz/da7pwSAYYDL1YkpUC8beWFV1UrmLU0MzOiJfSTcQZc+FAxeEpT8i2
	 34Dvgi4gaXnNJmdLignGUu/RhtWvk3kRhfzv/Q2MbXzlLeOyWcWqsXlmDRvyC4hhKd
	 Gx2NRAhqvFKdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A11ECCF9E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161199361.14176.14566227486977341252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f2fe21510c1c293d9f4449bd93625ec105a4225ea4bc821073232dcfcadb85
Date: Tue, 28 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761611993
