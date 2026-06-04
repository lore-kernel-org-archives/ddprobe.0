Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3655C326D51
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780588474; cv=none; b=VUC+bvBUBXpDta4AZ79oeqjTKX1x7SfQ8aXAg7WoCNRVi/NPn4cWvhdT4c7teRQFWSCctp95cVtuwvH95FAP4V4d3a30FBeYDYSVwFS9GpZjOurvh+8iIki7tsGneACwpcph5z7afRmFRuNjycJd9gSpFXjDRDGaTrmjEmxgu0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780588474; c=relaxed/simple;
	bh=t5SOY3VCi0Pp1VM0dL7E7ljEvfTN8+fQ83F6rI6rXJE=;
	h=To:Subject:From:Message-Id:Date; b=rfNGmurtgkGj3HnxivrcjAUwfu6S2srbrn9Qq/i3VQ0rC/owG+FZlv+Xb9brcMVt13NkBDtpgekpOz7Jg837BUOYrVN58XtnSdMf+fmTsi6qO9n1bDdL+fbhhwq+mExqNkoh44OgwDUHKNLMMV6Q5JZrx0LIZ3nwsYdEkK9mmxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lE0o/TJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lE0o/TJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45A5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780588473;
	bh=t5SOY3VCi0Pp1VM0dL7E7ljEvfTN8+fQ83F6rI6rXJE=;
	h=To:Subject:From:Date:From;
	b=lE0o/TJxKRZJx0/rz4CkVm5LK7SGF3EvC2X429alsLL/BBD8AjS/3LF95OF2Eh8Xn
	 gCy/T5OEYw07V0tVr/CS3ASOlfVozgFckhyMg7TS/jfLR3yy1JZ7p1vJ57Q3RN5w8P
	 vjngK8G1Y94IFoY/WIZvtk3d48aJu0RCXiAHB8t8jfkee16xPR3LUz2qSCf8GvhP4I
	 lJrWeaUZnGu0KOFxMxyiQeiV3dW6QnRRCn+5LhLbZKw5YSNd22kZVx14B2jVFi6InQ
	 q4VqBHnBkycQX41AaiGAI2Q4ijmzBlpFM3DpW2D7d3UpoLYFwkO+fg1Fr1x/NTJjRk
	 w66pcMFLqFzbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9836CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058847368.24656.13814217231468081208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f29ce1c424e9eb6c99f04ba292ed65aa95063e763325c8f194c13d3c11cdd4
Date: Thu, 04 Jun 2026 15:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780588473
