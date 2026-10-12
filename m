Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6082B423EB7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791837634; cv=none; b=HuiZtatLW0ygMkkGrvr+43PrqN8Fyw7aeaXRZxtbm/zd2QUBUiynDEJo6k5Q0hsNPhB6gUASyC0ZkGQ3k+InNnGOpPnhmJq0W4/FGoHwXqUsfyAZgp5EE2rnOrkd5C7MPfydShmqrVJg1H9UJlb/nBAhJkavU+wfIWcEfdDVz0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791837634; c=relaxed/simple;
	bh=MOqmPAMaM3UEpLRD00V7VQUWZ1OyUVU7V434wtIFMWs=;
	h=To:Subject:From:Message-Id:Date; b=tY6JFKrVLRXRm2y78UK+w51PuGbJJreWjoSR0sqRhOcsb7hmk6FrB6Ht9AZ6ghlAXVox+BHJ+MFjVKlULd8Aoj6dnr9SSFNnnmvOM6fopzOrXvVDAKmLKLPKPLi3CbFo5Qd9EeG9TZG+OP76yq2lFujpu6BlpSV+C68ot2phACk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDqRQL2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDqRQL2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC52C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791837633;
	bh=MOqmPAMaM3UEpLRD00V7VQUWZ1OyUVU7V434wtIFMWs=;
	h=To:Subject:From:Date:From;
	b=ZDqRQL2L3hHZ/3N0cOTBzYcO7/QTrFK6E/FnijG2AFISC7IxPYEpFERz69fmZzjA0
	 hX/OcyiS1dovZejOOrgEW0C0I5KIzHPSzGjdFMzME5hdUgZj7mAcKcOHANfcfBT6lB
	 I6ADa/OIdl2JqG8+7/IqzGcc2XLuFxvLNKFHJldm2fgjbnZBxIeQcGF2ybWq66Qawj
	 r6J7LJQs7lbswH3jZ9HdmC635Eo9s9MgesJ6MdnOpUPe/FQvoz8MSSOWM5BUKBOS52
	 S7cOotakf3NPbrU6cLgFM+RQXvQ1HMsOIcqavACIVVUnOB9g/OKz6algocfTL9tORM
	 AOHvMp6V9DsNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAF7CA9ED2
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183763369.15599.2765543155832740059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51581ba90ab7d8e043deb1f9eda2dac4182731cede2f934b55836a3c82f8916
Date: Mon, 12 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791837633
