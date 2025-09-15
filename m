Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333832D47F6
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757940594; cv=none; b=sCunECimEWoMRdzSYSb5SYvv9XTlszpbKPimjdPVJ7pfnFwkMDjuGxsLDytUQLG/HyH6iv6n+Yv/5FJREWOKmlwbQwFoVWYqLt1GwU2/TqfJs8j+1DOEtrFdP8yEvnfRgrB4uLMoy8llcWPH0kgCtvygegdrZwR8/vSqmfmy/F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757940594; c=relaxed/simple;
	bh=CZ6BISJsIQPPgdGDLGWgdjvQVNEFI4DncHRiQScSHIA=;
	h=To:Subject:From:Message-Id:Date; b=pISdcInI+scq/cNRZCCg0XC0RlhDcwpoI6CnND6XqTY+J6J9oNwnRsl+aprOwFJI35IYTTMYp8ZxGMLPZOu/SrowuFpgA1S7lu5EI2PNES5b8x4YBO3D1JEiJV+ZKsavBFEQyKBC23umRfJ4tF+kaAPcbfEtDCGF+FrClymguLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkjkI2my; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkjkI2my"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA11C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757940593;
	bh=CZ6BISJsIQPPgdGDLGWgdjvQVNEFI4DncHRiQScSHIA=;
	h=To:Subject:From:Date:From;
	b=QkjkI2mynMBZJNhnko/59X79jGgDK7kAkbZ5p4LEz8W3/c4DNF4ZRDzrGtunzGKIO
	 tjLIiFl+WRv16vtdpEyO/PsuFskMFi0N5T28BggGEY9YWcbi1cMYukiqJkSb6efWH5
	 n5NGc2Q0D0PY1MdkvscFX0hqj3E+mkT4E19XMtVXmd9/MZu1SjWPbMh/jiwdEOt0P2
	 9p7YnibJ7ZXqIAn5iyaXHOWIuw+LRFvyh3nNhy4LWInscUb59OVGEPTQE+tBh7i6/w
	 dmByffzF5HZr5grD3U3WNnrKCpf1gxVoghCfhXBSPED7WskUEM5/2/FDEDSLhQgZ4K
	 NTXjL4hkFy3jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F452CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794059357.28869.12209200967010013696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb07d969fb364c135a38354a0f909894230f4b9da4b3fb042cf5d9050823e41
Date: Mon, 15 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757940593
