Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9A7299947
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759888194; cv=none; b=gpEUfW/j9gEhf+OPF6ZsEjKrW/bGMbX63iMuWF8gXHgM1X3S062HC+P3xgAsm6MJ/eUeWB7+g509phTjbIxIcqeVPKRI8ihMyAu9D0vWBiQuNWh55cTGYO6j4KQCNH3wjXQ9z4d2l+Iww4gi6H2oo0qiNz5aRVqO0UcQCtTf6f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759888194; c=relaxed/simple;
	bh=ff80HlQCSRMEBRnIhheizT6iHvuWUAFUe14mBIAAtqs=;
	h=To:Subject:From:Message-Id:Date; b=Mp3WZ6QcqQK/mmpD1vEew+6xprGXaxnSrg9mFk0jCCEeBEhzOy2/4EbJfAHnWbLz4Gc65ZrIeQ/JrphCmA6zzJXgsLN6J1QqgdQqBlWfm8hCtLlEKxH95vA/CgT5BIncVH3G/XUyoh1/nkYRvLhllsDeZ0RRjQuzRQB/7wc394Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPN/H9rB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPN/H9rB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759888193;
	bh=ff80HlQCSRMEBRnIhheizT6iHvuWUAFUe14mBIAAtqs=;
	h=To:Subject:From:Date:From;
	b=jPN/H9rBMN4rlf7Ijze4BUhnnenYx1K74sl6JPaCaMZ5L5zavLpiEjZ9Jli0d1jxc
	 zJFrJ9AUD4w9SCCUXR3q1CV1SJzbaLZwwG53OicwKqaI76ZqSWcv2YF6F0FNQCsuUF
	 rU/8fGErgIuaOQwyJ1H3YfNifCfVJ6n2GF5PhysFbChF6yAyAActbRBGOUNPtLdeZ9
	 PqHFnfUScILs425y30j72BtkWwk8x96QP7zBBjgSfMwblc7F9NhO7LrLkGNG8vzrJE
	 gq6G5BufM2ROb/OC2dh29iMzXcPY/SUmfhmi6eOrEN1s6yMMOBMn2fvJfpzWx/yd+t
	 xP6yU/NWY39aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F88CCA476
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988819358.21237.683768538525853912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27307a6dc58d23fe7d74bed60204fa8806f69dbee74f3ff745283270a5dde01e
Date: Wed, 08 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759888193
