Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FB813CFB8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 08:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718181503; cv=none; b=JR8hBUCVFjJjdmCKcfIzo3j9iKSJhqub8qg4zW8dsl8HK61Z2/vC1V80ulGulEdRvBPdWwbTBb6hkQ2+uADn4s6HKAH4AkwI2oZCik4CDQWPJfvwQVDCU8jEzxlQiDLtmpsk3Q+ui08UpeWHVdl8epcUDFm/sblAIkilXD8ZhOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718181503; c=relaxed/simple;
	bh=nuYv8kcOUrs0wj7WyfvdRQ/H434bK+VLVswD+wY23Kw=;
	h=To:Subject:From:Message-Id:Date; b=l2TE5cE+/t48fmFfEgcYq22OC2X77Xt8M5Vh+ZfyWRNRDTg/AEKhD041MfiCwSxWzVedemMUa/xplUwlnfV1B5Ul/EBD5kJEWpu3U56pBS63MyjBFAr0+r1KlP2kVBgQLfZ5tELpci1BHgCu6LMCmzbDVzpgG8u/M+m7EPzaeTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0bf41IP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0bf41IP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3105C3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 08:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718181502;
	bh=nuYv8kcOUrs0wj7WyfvdRQ/H434bK+VLVswD+wY23Kw=;
	h=To:Subject:From:Date:From;
	b=V0bf41IP+8K2x/KNabKNCihXi9PPGBAEWmshQA8q+JIDsownBAHMdMcS79Herwdcs
	 nMAavP0jV3Z72SizlfwORSfpiq6slp/V4AatKdP2rkXFfhvdVtR8/qw0IDK72SVVKo
	 9mkN5nfwx9dkzVqj1kbgHnUWukMDacdBdbm6gvtBqmZglfDq/WBF9EkRfegXjmADL7
	 LgGq0B/kwYB41+aPx3W9UfxvW7ksDrt/33/NrSJr0cJLyo5Ow/9Y0zKkBzYRIOCJtc
	 El29hUTMvFI5aUUBFoUW8NzJ3OvmM37dVn7BfPC/PvsyAqwqzJHMiTNU/poMVGohF6
	 sWrBkxiC+VX8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8EEAC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 08:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818150281.23448.3004132052073480220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43793c010459c9c25b998ab2e34e701c0483a9be5a6c416f8b6abef9fa55dded
Date: Wed, 12 Jun 2024 08:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718181502
