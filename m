Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A2ABA21
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767845634; cv=none; b=RSWvH/dbVMHTx6HlP8+SPNVUt2PFdGdbb9hOt+6aZO24F3iH4j7UOSpAZ+O9rE13gLqUrHvhfYAGkt7jFenDXJ7eFC9n/0US+3j9/FhvyEt3Qx4YsXgypEmvOs1FrBE4CWEEtDjoEHzQQ4AV+K+mzNX7e+UB/TGIEYsNGa5ZqVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767845634; c=relaxed/simple;
	bh=OL5733xRBrMpeO5YkuSKUfE5ABBBJlEnVQ7AHZ0JbsM=;
	h=To:Subject:From:Message-Id:Date; b=acNNqgfN260VTL3F08hEnq3kC4JhXb4AZX6ln03uLVvKW2clOgyGBKinmlg13KWP5imkNkI6pDB1M/TVAhSeDAFihg9Dpq+rDvktUfBpesn7QvtidjcfgL+REEVITQqccrDwatHMMhQ9Q+gXfjJQz8/X/tV5A5ea6oHH5LlgnYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ze50C2z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ze50C2z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AC5C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767845633;
	bh=OL5733xRBrMpeO5YkuSKUfE5ABBBJlEnVQ7AHZ0JbsM=;
	h=To:Subject:From:Date:From;
	b=Ze50C2z6tLENGDcyTmIP+Gb9r2Eg/IDB78vuch56869w/AZB4jN9nCvnTzq2TQffB
	 FHLDCXG6UflP6aonqn8OSf9UkGB8ENi3OWRx+1N3A9/8XMobbZ7M0SegVfV0h7L3/e
	 +vn/C1VIZdHgGEbYEm9TZvFWrfRg8UJDo6I5ILElssbqfzjkMSx64K7lAHC9zacnJ0
	 zL1qyC1vgHeH+UykVHE4gyFHL0HSOpGM5EZoIrbj7WewIdIFNPMVMcl3ndWWDGcCrK
	 HlIzBwos6FMkl3yRxvGnMMi3/yUkpd9ekoDpKPXTLS+zc2m03CXOwdIYrzGpdwVUOi
	 Mh1zus8sm5GAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8DD1489D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784563357.4222.3172141744105609916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf869496467a8b2d92afd6de5c3cec8774d7282522d7f4b5ff407c54fe9491c
Date: Thu, 08 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767845633
