Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696A63B0AD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788226234; cv=none; b=of2hACQuAudZhmQD82pC6FCNRjwzKVXWWwLfCB8Cge2oGUkhirS+dikUc/B14Uy8sJ0ilC9AguSA27zQQ2xIPmtAcaCEqdgDHGPDbc5sKu8YaYOxOD3bXphqakOolsPhD/zAFykoDkWzKvdit+JRD7omrEidxcWZ504FxtMCy0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788226234; c=relaxed/simple;
	bh=pIAqeSSWRYeqpLfhH+GM2KnxSnWRdWkdCTi60FOOjyY=;
	h=To:Subject:From:Message-Id:Date; b=uqGmNAK7KWwkaiYnILVl5TZ7uQc3PY/kOt9oKYoH+HbIT6+t5Wdrl2oa63sxLLy4JR7hoXCnkir2beR+MpIocsqL9RZoet2KoVciyporD2VPhzoZ3K7O1hJGnI4DnDjlMqFolMwGYzHVqc2+EZKOC+7EKKSs3yYGQUinyCrL96c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPgoky+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPgoky+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD38C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788226233;
	bh=pIAqeSSWRYeqpLfhH+GM2KnxSnWRdWkdCTi60FOOjyY=;
	h=To:Subject:From:Date:From;
	b=WPgoky+BNmcqgKwmmlot3SrETFX9pJRWGE+BEiHGVUnV+BKNXbyQzEx6MNW5a+Ba3
	 8d78cIaByaT+GaNLGeX+11mFNQYpmKVxaAfo9UOAZx0K73faPOutEDKE/SmbHaq2+s
	 yb3ePB79VEMrNIOmEDVKCIT/5zHCK/4nQaly9RPSztSwoxxLL3cswb8BXTp2TKMrsG
	 n/Wzctq7tiDwFafMfqKBKXHJ+2m4br/nRn/xwypxEGJXcVDocx5v16gepkERTfaBHh
	 5r8miiDM1D3FiMlE/dQb3LmWmywVBZiCawK6aZ8nhS9Lp8VfC7RmDNEBMgXXjeAMv0
	 Mko57XdE4xD+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF9FC624CE
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822623368.18433.15199234850838077898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04deca3b60719fa24ff2346c17838fe3c5933ff5cc384e7d93271a76a3d8c2ec
Date: Tue, 01 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788226233
