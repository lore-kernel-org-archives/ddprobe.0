Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229B5321A3
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723227954; cv=none; b=Qoj+MvybRS/6jWkqPjIMpLyDjmxe2lBI8cel9xqafuSfiX4WvkXwo+8JZQlFNawz296P1P0p6b4BDt3XTwnxdhGTwPSoRFnZRwJPaGtTzzggrJCouB1QNIf6MoIljn7xIu49F9gPx3SfCVA59Pxsb3cTxG36q6l2wT+a2Ze96D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723227954; c=relaxed/simple;
	bh=yHovKKAREc7avhXztTHtlx6eaHfliLfBFEzo7KJPzL4=;
	h=To:Subject:From:Message-Id:Date; b=Sb93eFi92zs+E68LUqZL3hoO6N4Wo3sUKfCF7ZfS3Et747VPSb7IAr5lZwqVBJKsP8P68sEnoOZl70u7j09iSkx9LShMBI1DHYH4lGEf7tn8Ou6nSCg7hw4uiHCCLZq1asoKDiRXFA0Rjd1kNltkFqU717TocT55msGei5MGUtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RF2SuMJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RF2SuMJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBCEC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723227953;
	bh=yHovKKAREc7avhXztTHtlx6eaHfliLfBFEzo7KJPzL4=;
	h=To:Subject:From:Date:From;
	b=RF2SuMJh7Sb2xyhCjKlej356CyRzarlyhrCrjAX6BtdOmRbOxhyv+0se1xd6xEDJT
	 TbVVnf8O1+JqVVpVlGOgMAb0FWBUMYDjKW5M+RLOshLDTckzvpathiZGK3k41C1Iea
	 HIbxdr24s2ZLHAugQ3NXpZ0w3ZhNB4bxQHzRvNAELReH431rxb+88WDuq44a4L8SIu
	 u9xNwwfZkbaTjH8sTKoIUP77N0ngThp3SzVUfCErngNQCtbFBwHS8ZPXSVRtqqcsb+
	 pdL3WpkHzq66CX2XNfIK5dNR97AVyjdlE2gJnhkVEntchbWN67UhjRdqby27nv8VpM
	 bSG/bDuUEprWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97194C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172322795360.30716.10787226827294507409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5edc0f49de4e6821e867dc8633d38363033e59be7a245cbb811fb8bb3c65c0
Date: Fri, 09 Aug 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723227953
