Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C28258CD8
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757525993; cv=none; b=eSamRcZU3oeopmxCa94RjomhzzBbV8u2C1MiKKqihhLoPlXBTBfGUI1BEwzUukjEQByH6+mUPChQzvJghfmNqLgSFWJpKR2Kg+BU7TxeVFnGmmqQltQeP540HQuZqm+2H7FyLJclHRHbeDMwFRfMFMyQ+ufutlXXMcdnvcrSDBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757525993; c=relaxed/simple;
	bh=9Fts20xhjQAqcYQDOEwxiOTNPDSCQb4CkHKI5jZXRmk=;
	h=To:Subject:From:Message-Id:Date; b=DUIyeZ32XWhBAzLrDLLeudjA0lV7yX4Nu4K1T1nJlyq9VG+mfi8XlsXTA1TCouyZcuiDKGcg63BTNry/X0nSFjd4kfQPDEHUGMcXgIwctB/hIQg9P66DuyqxKYi6mWwlgYrXexipaeRmLsn82PHe2WL0oupmn0Dflp/6S68Hgbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mH91N77z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mH91N77z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 995BDC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757525993;
	bh=9Fts20xhjQAqcYQDOEwxiOTNPDSCQb4CkHKI5jZXRmk=;
	h=To:Subject:From:Date:From;
	b=mH91N77zhT53/naYhsgiFGYpKBmBSwyqKRTsGNGRmah/XtKdpCygHJF1qy7s9sCH3
	 gLkRxvsM7MVl+zCChXvmS5LByuC+Kgvide2sOC9AcON+DiYfALfwBiTfjFloXFlaJJ
	 JrwEgY9tGumbRHpw+3Ppd3lXQwTzoqG1sOQBIc3i5nQ7e8HO5C+jKzsGC0M0YMuAuA
	 8hLPxfnln0pjw5Z0YdKWKViAAHg9svtxKtu7Y/3lwkxGeAowYKjf/YBmFbMxAbqk8m
	 ztUnVxGwtKoQz/Ln3K3VBYtxcUUhMHTs8xO9dizkgn3sQaj8JwCW1DUN1tkrMg3Jn2
	 FNQW9Loa8GyMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD8CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752599358.7283.7672719048555706925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297377c4ebd826a26eb8a37c1db6048a1356159d72af8d0ab7af4196d0a04849
Date: Wed, 10 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757525993
