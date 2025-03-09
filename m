Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3513E14D43D
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741521535; cv=none; b=IQGJ912707fkFZkpaFcr5iLpmg5RBGg2DX7UB/kSsqMPFvuA5x/Meid5jKkwLZXsLA9tyuZbeAhuRV/ziKZNrJ0eVVzE3/zTsYVC+c531CdBgqf1vlnhcNHkfHttnkBD3aGCYB9SH8sF+4DUMmVH2O/NJ/QcQOWOey+b9xww81o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741521535; c=relaxed/simple;
	bh=FrHABFiVO8vQEuo/9JKCswLIUh+J0ErQMCgsNE7balM=;
	h=To:Subject:From:Message-Id:Date; b=kM/P5xdnTF13XUYLHjFJJ0kZ2ahIK138x4mqFqkO02oFTlvglr64++uVmu34BrHPqvv4RWmd227sB3P+XRhavGj55crnnsMlFBLcPJbgPPhVIrW8Z78AQWxAdVAxjEDBFhNn/Gqe1zYFaU9WPAR9Txu7Ge2ImV4r3daa6YHRAuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HavwBCKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HavwBCKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4664C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741521533;
	bh=FrHABFiVO8vQEuo/9JKCswLIUh+J0ErQMCgsNE7balM=;
	h=To:Subject:From:Date:From;
	b=HavwBCKXUSGxOepdC9c8PD03t/9suylu3O25ECYkH7c7eBquQBp1nod+WOstUSktB
	 a99SO/LJieEQGgVFt3l/qi2UfMDP70EgI1NXtFmCdtSiCcfQ2HdnAgT/xOgYnkCXrI
	 fbijRsLJ4284ftoMhc/2x4PxIEiwetWWFSurzIPaf4AiSkIWtwUc4HG/ic+asqPwXk
	 AYQy8eYICsgrREKF5+FAbyFYnmkc/y2VXNDJ1ofldnao1Szc2EFqGZMmxC52piQu8H
	 KT8eT2ULOkC/sVqBMwFZqzNsIvqQywc8RfA9PYCS1UeMSxEsSZ08ZkT68GNrf+FoEe
	 92tLn4SCPg+qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92343C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152153359.21791.12188160614944118582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739266cda8169cbc7b21dded67f7b27ae7a649ec10e523c59f66208d4ab27cbe
Date: Sun, 09 Mar 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741521533
