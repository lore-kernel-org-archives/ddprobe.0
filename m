Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3333029CB24
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782169594; cv=none; b=Y8iGq3X4/HqCi2qpV90TR9IOFLM/G2K3q+0xVCgtg+z2eXejjT61Bajv49w/4zFI6sndc3hCAK1cU7Rpm9kGmxTOIFe5Y+6eaLRtRgEpGc7awTRyv8YSYCUSRrcQofutB7EX696ea95koY76KVokf0m1WRI34XjbHs39Qy/5XmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782169594; c=relaxed/simple;
	bh=8YYPqlCgA5vCeqAxB00t1iqhH9SkSBQnWTv6IXlr/vU=;
	h=To:Subject:From:Message-Id:Date; b=iK7hEsFVm2W0N9K3/s6iIViHrja61f20Pqz1jpMd43lVrjJtqhWNT8gWc94aFDE2py5yTWb4mAR9eNmjtJ+by8leXS0nfa0YoOOZquO3agdhbOZe4q9PbRVJ9+OIBU5VkMMndDx8lzxq+AvqMDUz4N/zfjuMH8I21eoPhzuRlo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYHAf02C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYHAf02C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77D3C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782169593;
	bh=8YYPqlCgA5vCeqAxB00t1iqhH9SkSBQnWTv6IXlr/vU=;
	h=To:Subject:From:Date:From;
	b=CYHAf02C5jPiUTQ6L9/BSKSeb0sg+41mizuKh7lEhdQ/J/9/MfWLGMUC+NXit6cHH
	 UYo8qfLUFkbztzhlgzqgXZfOxp6D4Lao8kZKorB7tNUXmnBvrTSWlMfZFzPVZPFQXv
	 HaMVqN+2iUlctGMs06tKj+pidaYRydBvgYwiukwC9UOCHbAbyQO5u4v+mQNvQlmRIv
	 JfKhzIntXgxugrCnPw2vnnTXwVmraNM/LTpKNqxYKgCxQYLPpGDHh1dFVCdbS+bsh6
	 1IsrLbfo7YoIYq7JAKWlXeEzJm7SAfaFi128SDzg4UCUoI5lQEz6nTn2oTBTIOCDl1
	 9E+g/nPVLM9aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3F2CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216959368.19958.2315134544954179464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af06f31628a781c5ee15cb0be8a7b6009b5e03a67c1bd9d6b96e16fd203462c2
Date: Mon, 22 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782169593
