Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1674117A2E6
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763287854; cv=none; b=lnHaSTMZggG3Y0oLNltJposPpYK3jli9eOIRbp38ToguVdscFUMxVQ5uq1E6rH7WUTOa74kLZ7jq8naTMc66eCv/NV+SlhbwxLQ8O0oe6+D7FFh5oJd6xfrH7wep94eFJkUstm1g8x242ZY0dWWnzSCP9tN9jCuIQcYUpQXVHRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763287854; c=relaxed/simple;
	bh=jJTSkWXf8hdbWzAfKemf7mNkkXPmmguuFFD2e6K/9qY=;
	h=To:Subject:From:Message-Id:Date; b=MJfL9F0hoH+zqBfiniJboFH6bnGlXYcMmJ6NPSf/Z7qeJbB1bVRKl0tK8DVvtTKnD6DxV6tWR4dxk9jvOojtqi29TaS5AnvBhKXxVqr6eRvXtJ81PfgECqFbo4Tf2tWE5DB7dj3oc8H6a+2WputKL/t+5s7mgppppvZmJVOBhnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9Z2Cy3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9Z2Cy3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9785DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763287853;
	bh=jJTSkWXf8hdbWzAfKemf7mNkkXPmmguuFFD2e6K/9qY=;
	h=To:Subject:From:Date:From;
	b=R9Z2Cy3w5OeD7LuM0eQW8oSrn2KxqVfs2v20aCDF33yZ0Pe6U89SpQn1dOC9TjHyb
	 FxRqT3y0U3VNKQCfXo1MWANsPWtd76E7PHW66z2t2bGFLA1BW0vOSFXgphDnSi7khH
	 7bFiUvatNNRgu0LFNs9BxlyKsAKPr6484+6p9Q3O9MRxbdxcQa0i/zd5aT9ioZUGxr
	 u8J3q4ulEYC+8KHauh9N7dAWJvUXDUpYzH9w9npx5WOgXkD7BPMhTx1VbhmJNQd/4R
	 gZ9s8W+jPJFhPafryKf+2+oJmJOPAVnx8rN5j+f9rDNM331ns/sWQ6/vuRobQHfw4G
	 tcmeFbB0eXvtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC3CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328785357.28127.13206558078852314906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42895289a2f7da35ed843aa100a9a69664618aebbd34d0eb251024f62e6e09af
Date: Sun, 16 Nov 2025 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763287853
