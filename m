Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BDFE56C
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739656135; cv=none; b=EikD9OBF+huIu9P1LQOf8sCB9iSgDwbXBXH9eRK2xdp3vYpjITCNkGaWRLbe0YJ4jXQQb3Dxk97uBGPkppBn8o7+SSbRBYkE83w3MDezopLeQs+DbUXvluaPvfE1dT+TNBThtji02YLSce77j/EQsxbjgYXcJXimUt9YnzLBZE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739656135; c=relaxed/simple;
	bh=y9821464oITADFx1z5fKH5RomGJ54uiJc2oA9ipbZS4=;
	h=To:Subject:From:Message-Id:Date; b=prOtD5K9c5VWMgE0OS9FD1yBwx+nbK2Ed18Ne7MKdihQBdT4vPD538HtBOEdAX4gbGfJyMHohEtktsWoxqJKOVs88ciVqetQ4NWo9/2LZ8ABmgt/48RKg+Kzj7j4kBheMu4mpbv1gytrhBqnuy6+OinssDdzh0C7k4NxEfiStN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNoXCTuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNoXCTuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDD9C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739656133;
	bh=y9821464oITADFx1z5fKH5RomGJ54uiJc2oA9ipbZS4=;
	h=To:Subject:From:Date:From;
	b=VNoXCTuUeXdxFh1mY+jIYqa8wYlP6MRXyB19DRpfgB2P+2CDo4DVVyCXylCMo9mWi
	 QmlQQtcgt2jJNXSnAJv17cxJvKdI9IRzj4VQbLbFCRXlWoOVvXU867ITivXuS2YsJj
	 j58IVPBIaprZJimYZKFpBUyZeG3cSPJ4zPijJAFiCOCMv92ETYzspOTHQi6Spi2Oc9
	 4aKJ/0iiRWYcjboC6w/v21KeuUzVuMotk4Va/uTFeqRocgPshZikHnfG3JGMI+8R2P
	 Sc4FBkR5NaWgfYWCtpyheLcF2LfjUCi/rGwMeOlO/nhE+pc4CwBXMuwnVkmZt0Scjs
	 UD69ssuyaGdyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4ABC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173965613361.9223.15950186922472843523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929be26feaf94d5c2612e92c790c792baaf622ed0c911207e6912fc7d86a6608
Date: Sat, 15 Feb 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739656133
