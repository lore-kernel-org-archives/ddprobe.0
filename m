Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C561FC112
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734458154; cv=none; b=D/sxQtku14W8bmLYQQ2vXFPj+JNs5OYSr+781FOlzFafAJr908qEhHx0HlgG3znwL92sk0tsBgEZBzPraVFWFuqdL4X8wcb18DpM75eVY74apU8wuWrUXftT4uNd8YEhvnps/ljLTshePYPaRFNTfvRlgEhtAxsDKV4ZbOSjiBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734458154; c=relaxed/simple;
	bh=tyDd7Z+LorVaJ1DiTheG9jO1GozZW0SohDpMH8VSuo8=;
	h=To:Subject:From:Message-Id:Date; b=mCvD12MdV9+mGOD0lEhE6RHDthE2vtkN/ZjjiJbYKkfSPbD6GVOTAlOfeMRUyqvp3H2XvzQGgFvMiYpM9AnOm81VBDmH7DjFJijh39NjqtMK8x1H6Thba8f3vup8nTfQJx3Wi6Rh4gor1MaIImsaipwlUKXTAKTks27p3feovRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWGNE0ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWGNE0ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BDEC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734458153;
	bh=tyDd7Z+LorVaJ1DiTheG9jO1GozZW0SohDpMH8VSuo8=;
	h=To:Subject:From:Date:From;
	b=gWGNE0ikO8PV113V5bTTGQWUG1100gmHVfxo+eJFXdxg8FK9EYn6h+qPu0NA8r2OS
	 7GLQGGxUgxHLEmXvpHNVMo43y+otTDC3mYrXgbosqI1G2D2yRqnjjWaiee/3m43zlD
	 jl8LM8lXi7PDvcTLvp4RVLMGRThg+TJ0PhOT6o9UcolHP9t2+6gpT+s3g4V08ComS+
	 PRzffsQWBJxayclfecz4SgrcwDuRgMVj6e5JC6VUIAmugvcLCSBImj9+j/0peM4pOu
	 xjdem6dhxGBEyaGZmwN/G5ZUit5MFuoaE/AHu+X/X9oGdL1X6BktiFjwXq7tykYxJV
	 Bm1++BBxn3KdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98168E77187
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173445815361.15820.17015101912062633744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae56ab7882f023b17d18fa8f01b4031ae105252d3d29650034187c98cd84d2d
Date: Tue, 17 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734458153
