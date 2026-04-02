Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1063B9D84
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775127934; cv=none; b=RtFZp6/7EJUsIoMJIvDjtuToGjkqxfrsAf8ocxY2fZDOuO3qugomwc/CM4WSHgoPmmLPQzZFgwNCZxc3Ka+YsUlpALfcuLxnFHfWQoWLR2s8fMDRtyienwdlSYAz7Pvs2lzgI2wIqe7te+uXi4VomL1Qcs+tbZ3gNb9ZKKYX/TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775127934; c=relaxed/simple;
	bh=mihSRqsU/BPcan4LfNLGiDegdnyFym+muXldzTllojM=;
	h=To:Subject:From:Message-Id:Date; b=Zeq0qJPx07lJjNeyq7jevYAnIKw73esfqRiNDulBDddw/lXjenrlIp9vsTaKncqXbSuHQl7B5FxoFh5pUnb7wFBPy43HXMIlkH282r3r/5VMumbX/jmNXifapSd4ZUZOP9jM5HOsUePMRBnVhi2U7JOlsto3b2YjMAWkSESNHzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqaK43Ya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqaK43Ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF55C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775127933;
	bh=mihSRqsU/BPcan4LfNLGiDegdnyFym+muXldzTllojM=;
	h=To:Subject:From:Date:From;
	b=FqaK43YaDLGQLTSa9E58Yp61GjXgpIR+vgtLW/osXh2TdCBxiq6afCFbtgeqDY7dz
	 MP+wbtl3GngNAIrbfj5vfPykya/VrVhw1x2CoLnw0GttniIcutyBZX/hxfmNvUDIy6
	 JaMYBevuXhToNV7TeGhGEsrf+2/HT27kXffH2ZmfY+ooR/EgnR2hEtmcWzXHWURDsu
	 wIPgFuzQ+XcomT8sGA5L3HiY/tfWj54z/iD2KANAxpRciZMHbKLhFviWcLR5/GjPZa
	 159LlIMSKGwYGGM/Tj66+jYgPPxZ13E6pMXBxCMElysK4JLo/iOrgUlduDxuY0aVOi
	 N/FB2oJrZNRwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8C7D3940D
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512793369.12506.6877410578124351691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a00c7f9d520d32a82f0720421f923ca15d5b9c1299f0f074f85aa74a2e41b1c
Date: Thu, 02 Apr 2026 11:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775127933
