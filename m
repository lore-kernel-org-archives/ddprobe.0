Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057C61F418F
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761455394; cv=none; b=ZFSPMmF+RTY+aQ0Llu1xtt0+7eejIi05l11rBnymcCEWCKn3vIoiRhjEbNugDClDaYUoUTMN1M7QuXBB08Ln81iGVubUGsSTNL9Nc5wj5llFKsaZApra3Dnf6aJ0ShKpISlYfQlM7u42+CSS9X/MMlScqCNVzdyo6LTR2t1Y7gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761455394; c=relaxed/simple;
	bh=UVxh6VsPj6UhXCIeMIgPOmqZbzl2eGHTPGY41hlI3zM=;
	h=To:Subject:From:Message-Id:Date; b=QzRtxUj5MF3WZe/PisxrQX0vk12QvxjzfPA9jnML3eLgjeBH7Yt9yYFPtpp69Fnbse8MpKwi1KywATbTrzpIz1IugC9KeyPIB5iRTdrHDzsf8/Uf2CV4JlvOdDXMZAdW2RWRwZRjmH8OFwcl7DwwZvXnvqfp9keV6QwrNdJFWVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOBOJiYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOBOJiYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3782C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761455393;
	bh=UVxh6VsPj6UhXCIeMIgPOmqZbzl2eGHTPGY41hlI3zM=;
	h=To:Subject:From:Date:From;
	b=NOBOJiYQSeUZo9aNldlsu37H/Ykt60CuLNhcq/0Iqx+/cUxKRHTcYu2koeyvZslFF
	 bJGeAYZbaNSx03KOoQZBTCquYxQRXXw+TNpb4WqnI6qH+X8hrIiyjp/7Fw0SHwgcem
	 RjTKh6rHmOchGvqhyWPQgklMJiGPKBXM7ddoSo3dP+AMtk6rQn+jTDnC3uw+bA9Vzh
	 HKFph0kCqFcJ1CQs6RAOkF3KD5hvTRebxkFxfmOkc/MKDw8M+lJvzJger9UkqqrnDW
	 QjOVHflNyycuYwaTu8UubAJcYTZt7NzwzGn6zJEhGU4HzynbT8N2W32hPCczx0R83f
	 73a3Blj7+O4Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9483CCCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145539357.7703.14718682096593412095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880a9591e9f4dd04970d425b24032642b58ea0a8207e42fe7b2791e6fbb344eb
Date: Sun, 26 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761455393
