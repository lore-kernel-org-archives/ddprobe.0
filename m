Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F369FC8EB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774209294; cv=none; b=grFZ2b5fDoOsy9S5kqYHFocGDm3uf/u3a27EMPERTfcd6jOgkCReEy53f5D0WBVRHNnXuxnnFaSkdOoJhSf3kVIa8IwEwYVRkWwSjv15EIcYN/9I1y/nlQdPiPmTnl0QNJ4c7ORHOV1fPIziWjEqQQRT2Kkv35RXdhX7cNx8/hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774209294; c=relaxed/simple;
	bh=yz+o7zYFGpqzZLO2NTDExbgeevFP6+nIgeZ99C572wE=;
	h=To:Subject:From:Message-Id:Date; b=JPmzNHoEQgrlUpA1bOg3CvxDFaRUCZGrnDrRY47GOeqJf0us8HbBVdlu1xs3u+f/M4iwcNTct+TW00u+I0RIs4P74DvsMe9sxUvPbRm+R8W938IUW0O1BWRtNhmrb3gQXVR+O3F3R0EFcUvDUKCyLy8x8tLsKR363DbcSJlhv1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbKmqesN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbKmqesN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81D5C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774209293;
	bh=yz+o7zYFGpqzZLO2NTDExbgeevFP6+nIgeZ99C572wE=;
	h=To:Subject:From:Date:From;
	b=DbKmqesN3ZKO2l5Jkb3PlKvULADrjwrlEzrfm1WP/A00p7FyhyJkSwzu+JExClfBp
	 1DLlVvJ6G/lvJ4T784oGb2ujDOzpCzqa5nhFcWxt9ZUrMgwIu/e27uU1/1lkv/loRw
	 uPpXfuaMBUUKmfvoRsUbvpYTRG9KxJRLBF7BiSEVcCEODUqoyQuf35kswATHivo2J0
	 3hvRoY8/VjzlOCAg5LGB5SQahWTMaW5bNZ96LJ5c8oP+eKr9sfSkkm11Lrf5bebLvL
	 gyH2oS+hoz+xCG6kZf+iqIQ+xQcWrf8ooqWg+jlKLGgwNqRNWBnY5kPMvKZnYzCZNd
	 63dI2RohSeggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A98D58CA1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420929358.11361.16438742988740410322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd1b10b3ad0997c244879ddc9545698ff4714b61116f1278e1a2b7ae8d0789d6
Date: Sun, 22 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774209293
