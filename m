Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448811391
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775520334; cv=none; b=grWBWXcI3KpxAFYetMr55voQcQEf6rbnJZnWnzr4qKV74lGBFFNOcuRTKD4k26st5B3CmAKtNQxOY1su8mqB9IAgTLPQLRWEoRprumQpZLozczUiP/FIe98b3WN/YEv1sFuoUAqZKfOFPbJSsatLE4mtSJtex489R4P/T213cZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775520334; c=relaxed/simple;
	bh=cKRlVlgfU3jkPKZ+VODFLKZ9Nb+zZ1igDLAo1kSV05U=;
	h=To:Subject:From:Message-Id:Date; b=RoRZ2VLRUgjyKdgjimP0rUpmWb5FHtJxwj7BdddtaheRMwXtm2ZUoN08k+Itk1fYut+gf4d8VwhMn6xkuAZ899rzCIOaspAmnLrBW7r6phH5o0VLbz8ehfzPNkKGmBt0HGqZhcQIUEw6UeS6eFU/o3Vp4oxrL/QG5cqsiASn1OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTyzV9TZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTyzV9TZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D6BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775520333;
	bh=cKRlVlgfU3jkPKZ+VODFLKZ9Nb+zZ1igDLAo1kSV05U=;
	h=To:Subject:From:Date:From;
	b=tTyzV9TZaAWwyGASJorNy+mZBvkAhOuGsxtb13BWr+qjYE4MvPghtQgLYOapQf/Gi
	 lRXlePjgSIgoiy2IkHPY7grPA4+cyUgtpLpzJ2B0EO+y7zzPxd4lpoaOVQCLUNXMtg
	 DLb3r6FkpWDYBLPzEQnP+Xr3TkW2mMMGuXTY2ZBB5Q7dbEjnTqSGXCk/SOFlkKHFYP
	 rchqqBnrXGEOOjNJVm8GH77w98nFrnI6J4NCvRTC/eDSbDZyEmg4fuJXBe2uOhK3lI
	 KQ8PpPBz8+XWi2mAD30YER4+UluYzj2O1gR00gCJRHLPQZzC6g7VdqSCAhNTGhMxau
	 X2l2Oasshsihg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD78CFB5175
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552033368.12351.14916461425854618051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b2c1c68ddf7845f38d4e638e4bf1b37e1b97f5cfed907aa0f108dff5b79132
Date: Tue, 07 Apr 2026 00:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775520333
