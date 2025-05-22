Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A48E2F85B
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747919395; cv=none; b=PpzEXFCFUM6h+PyFgGH+MDwjldmYmVkrqS3F1iDvyAyxqq4+5i8MBL8CdmRDlQoUwusVpAySQCniRyB4suH5e8RJX1spAQAAb6WPVqyujAC/VnvN8MhLTSEi0F2yenUBdTi7LXzqAO7mHNz1GN0+EY1lNMpuEVfeqvgIm8Yk4hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747919395; c=relaxed/simple;
	bh=fhDOUTu/zjjhqbNM6cVtZ9gXq2sSzUVjAy4tmKbqcP4=;
	h=To:Subject:From:Message-Id:Date; b=AqfURKTNFp7weV48kWBRZkdkCleYjH5OVts4jXdMxhQDUfnXccXWdulBLH51n3M2MsQUXdQo38OeCwYvGn9Un6NTnNC7tIsMeSmlej/i3bG10W661xCBfXxXqgFQIdsvdh7gHFSyFCjJx1za+IdKrg2tRPzt71FLHWDZexSHbx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bw5xzf1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bw5xzf1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A292FC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747919393;
	bh=fhDOUTu/zjjhqbNM6cVtZ9gXq2sSzUVjAy4tmKbqcP4=;
	h=To:Subject:From:Date:From;
	b=bw5xzf1k28zQ1YSnGwQaEb+zSLo482uTK8fF9x497aSSrQbGMfJVMz7PwQX3wsM+O
	 6vRji31RZwvbJk6Ro1LD419VmPnGlJaMC7ShIAtoCTWtyjbdynPXdhZY6hqtGp8VfE
	 ooP6OQzjJnVntYrVjN5VDiROyhNz0zao2QbxxyfIyGa4EzoIwiLthF4ndFwagHZ7jK
	 pNjsMUmFMqmSLjOoFeG63GU9HNtchGqvFsaTKzaR7jQ0fBVQnskeVRjUQ7J64ruKQJ
	 Vyms7VHN13OWqb3ZqKBxTgm3U55DCq8h9VvMRIkmoMMbVhk8c6WlPu9tTY+RWHhc7F
	 WE2oQkng3E2cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FACEC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791939358.18070.6524224248120358983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c22fdf7b05d19e453ae2103819d118f87c98ca8f620527301edc2a82503f95
Date: Thu, 22 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747919393
