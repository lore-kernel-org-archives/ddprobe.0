Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30142442C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735988754; cv=none; b=iA1xlEu4vtkEGIwDXkrBe/jhyYYkCT8zatBn5eXcBFeer9K4CnTJcIHDEbHBZL6FIzq7jKlz0Ta/k84vNxfiIpUAhEmFqG1zxqh4AHBlU5vLp6bp82pFUpakOHctRQhZvIRAhy+tKS7CL94EOSLAnTA4+rGPoWENXJDVHijRh+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735988754; c=relaxed/simple;
	bh=iMgyddW/wI++YLyzSY7eDui11PJpq6uu/NlY3fpLF2o=;
	h=To:Subject:From:Message-Id:Date; b=PS+IcTZiYQ8ThnjN9HjvUp/463hL06AF/2Cqx7x4fCuJ2+2mD6dI4csbxOCxQJnMx8ulFQ71jz1/RgYP0FyjnoRUMxfLXrq6OtVT2qQaVQydt0lpeeQe30/J5cNIK6g3qcgvenWjkRQFOsZnZzLynA4boBuRD88I34ZoxHfhtXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWLtNS9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWLtNS9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E9EC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735988753;
	bh=iMgyddW/wI++YLyzSY7eDui11PJpq6uu/NlY3fpLF2o=;
	h=To:Subject:From:Date:From;
	b=BWLtNS9DPoZo1f5wRIfKdHRdNARM4jOcalllXthfO61cwHxOSikUO15OWdC2h0IwV
	 9vqwyMxbWmZYAtBfQSFat8ifg8BGdO7poQGRUENv0Zz7S97ca8aQBPduIXdk0C7DxZ
	 J7WVTCqpMsD3zbYOvHTp4mWAgtx9huEd4MX5UKKuweMeOficMxuCnsui+wq/vZM6de
	 TxNfG8I1yKWEkvBiZlSlElJr/E1zyj/ZXmHsCse1S+xx/cvEI515JQuJkCJNY/fY3T
	 GYHOfcbk/3C7wvcbZsL84RwhGgfFwMX6PNHbxsmgM0gioSAmEpoBu8U2q8rcLVvLY+
	 EcNfd7uKOJfYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9841AE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598875360.24442.10879149008074057332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511d0db42c6c783315cc77cb406fe84dae7c6cf676c11dbea3324f7789e2f9d3
Date: Sat, 04 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735988753
