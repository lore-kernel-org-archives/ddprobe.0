Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D443AB289
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787915434; cv=none; b=CimiiX1VLtpjCFPATKfHfsmPgJZzieNfP5P/oMj0wxtrN+HYO20NsVAV2MwgPu5hWn7fVy7lUmv0uCrzWWXSdVwdsIkyDKWyOB4J73jptlYXc08CN5pHmxMDDSPDW5sERK1BS4+GJHoCr2W22PHy1Biy8PCx97tHOblQvyez6bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787915434; c=relaxed/simple;
	bh=YKJ3XOc0OYuNRr5uwUSnIS9CkM+LxSAaKa4/i3fLBbw=;
	h=To:Subject:From:Message-Id:Date; b=c5fbdfM2uebZhruM6dmQgz7iiaJpOeY0heUOgmcW+M51cOkAiiEMQBfDRnWkXcQI06yIYGReP85ufK4rv5KSSUjS2M8iRk9jt9ODkfTJv4bfnb8SQSXRxpDSM5RgILeNlMfb0vByd1Yn9K0CHTKfyr2pf2EmnULi3YWWDEfsBG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/ebLRUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/ebLRUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE949C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787915433;
	bh=YKJ3XOc0OYuNRr5uwUSnIS9CkM+LxSAaKa4/i3fLBbw=;
	h=To:Subject:From:Date:From;
	b=f/ebLRURlHr/9bHdP7pXM45ma1O9UfP7/rLsHDhapYvZLUjVuOCMgBQgdpViKmBEq
	 UaupMxWghJNAlCNCe+h/IOkSgNEt5ddR7igXPnSDQadWL6O00yAWof+R0O+dFWMKbl
	 n50AkBIb/Hp2oL4sLkfVk+EqDJC4ziOrFpy0Eci+1WcpR7HbXPvgx4T+66vG7PfU4s
	 T5GFOjOv1UZFihtkpNNrjth1BIaxNAxQ51dXBWX9oZ2LZc/Ypq8terCYfnGMVzYkOd
	 WHTVk00GP/aDuLRkf8pNZiqDXmllUt6WAsBOoXrgDr1c7K7VGKyTUnWP67akS3xQO2
	 GoHetTPZ/OzEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5C1C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791543368.16715.9185099868885378388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa24757c4b23e2821e8e4ce773cb48a1c91154b07e76cb1c869d9801798589fa
Date: Fri, 28 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787915433
