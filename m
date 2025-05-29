Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3CA1AF0C8
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748556594; cv=none; b=lfYZQD8nuKeTpXDvjekgVTAuk75ypngnaOUSh/X/18+uGxYJifYoUqaXRMvbLdUda7m1Lx5ev8U/0LJNxg7wp2OnK2gvdDp7M9pToSI91/zYZfCjQMS2V1ASRUAv7MxiNp4hGRsICkunHzsO9qBgV+dBn120AtVFCn7nerfbQjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748556594; c=relaxed/simple;
	bh=9hm9RWpevyihwZGTJeJdTVxOa863fJ7oyYXDZbBKEiU=;
	h=To:Subject:From:Message-Id:Date; b=UBS4Pe1iuGeivK+AmDI8rviZ/FQNXYUfdd8eu7mILbrz7BioRo1gAXVVc8aThRWRnnWExdSh5guzjlXp24XJbEm/8xhddio1K6CF/eZB4e9BIDhr8p4Uvml4z9W9AKJEYcJhlv7PoT1otfp++FCN3QV8zc+lguLpBJC8uTkVJaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEqYEQlZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEqYEQlZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A481DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748556593;
	bh=9hm9RWpevyihwZGTJeJdTVxOa863fJ7oyYXDZbBKEiU=;
	h=To:Subject:From:Date:From;
	b=kEqYEQlZ0vRBDFz5plUkhmi4HpDG2hi5w1KgPpqn7PXJEug5945vdhF753nsxx1vv
	 M6JXMncr4uemuy5zoRdtE8lVJ0E6+zYGMMtfHRDelk8/o3vmD9mEZUSkATAngHpMUj
	 rkX2Xpk+qZAEAyEsnEsj5eSKGkMVfa//twRpQB+Zvso//cxlwsq1J0eY5LVLW4ld+V
	 V1B6jlJNbyq99dWT9kMYcCY1brcQZkertmh0QcKnnnmuXMEXo8q9tdYx4speqY6WBn
	 Z2w1cGf/26BuxNSIzr020WH4gcbC8WpK/4K8TU+P71rtX+hUEByyR2tyBuP3Nnyrjx
	 WTnskAhOaVN1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF9CC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855659357.19485.1598896699007290412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4327946ee87e289f16348dce5e14c8de5acc018d50b71f4485630b03bbf55ef
Date: Thu, 29 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748556593
