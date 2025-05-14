Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340CA22D7BF
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747245594; cv=none; b=sYxCNQioLMedrdeKv//9EuTz0347fMJsDS6p+LVm0rmnavcZ6aSFVx9xzFblyaNSqwTkm39aUKPg17wU0EuHRsOCpsOMZCcC0PbAUtyWCMxI55/23+WQBxKxUyJJpljgkXkHyNtFbthHezhvAK1UeRDqsm3oJt+0AYGI/C+tAEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747245594; c=relaxed/simple;
	bh=Lctg1GZLI406YaXSsmodP2B5aWmyxy76wf8hUhg4D6w=;
	h=To:Subject:From:Message-Id:Date; b=Tm6OuTu6lORkbdPbMUurmGVuVUbATPE3K5o2FCKKZytejS8meFJxdsVY9T98u8KxTYe7EOSKNe8OKL1uja0Cn1iyMvak4D3WdXkbaY+A3hSMpasAzZe+/lJO9JW+wQljjh+pwQConyY6IoTESY7GZnD2NyWHjV14WCVmjXTToxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ar+wHP41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ar+wHP41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33AAC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747245593;
	bh=Lctg1GZLI406YaXSsmodP2B5aWmyxy76wf8hUhg4D6w=;
	h=To:Subject:From:Date:From;
	b=Ar+wHP412qWxZtDHRx67VFtQP8JPhWmYWxDEq4sHWmEBkRe4DaG9/Jq6pujiLoMLE
	 aCTyXg3usRwCgBfkjsl7rWiNTiNd8PjadV19O6ZRRKAsDjLWUGVLuStZFck9p+ft0E
	 z386qesniiDd15w2NaI6pevkglJ1Lg4jcotbC4LZ+U2W/sNO72XeKh6471nr4Zob4s
	 bLIGSRcLb5yxe/yhCeFvCFgChywheBAwu84V2k/fJSjV/LOUiCsQqF0fk2v61fabwU
	 SovNNmWZrj+aaclVifsCspy9jCX8T/wjHCCRb7GZqbItTy3Yw6/bssT3bSDwC5DXI/
	 C8Q777XkhmLAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F784C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724559357.11945.13893630681248262228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3135bc7c8ba1c6b11b238f045340ac657bfb0e525cc90027728d262cb932a7a1
Date: Wed, 14 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747245593
