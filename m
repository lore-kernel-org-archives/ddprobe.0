Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A8157D210
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790194236; cv=none; b=ljnG+C4dzbHsaZZeODhRNv7Vzc3EJQxPP9Y2GIS4ilBaUupl3YfIqhrq7LC3CVWpTob82jp9flcoJBFUUsBOqxSWcDo15elZDCGTCVyOP/1exdN8R0Fz25KJfegVTt/HMInF5VKJJkC5iR/bOM9o0klxwyMuTi//4yXOouDQNy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790194236; c=relaxed/simple;
	bh=TERGMbjryxzT4slXiVh+LpyEEE9wEwY/nLhVClf8e24=;
	h=To:Subject:From:Message-Id:Date; b=b75nmJqTyxXYw9WZp4mtkJiBUc9Hg/ucsSjV63dfMOr9Srmh4QbkHKIFtNWc6NvrxME6syHkJ5gaPyq4YusK53cSN80gR/mWy3n2YpPwugz23mZygU3O0D5if43I4RHIjbz17WOih0SDQhSD4zdVZEd4o2Li5lnRZ14T9lWet8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOKXW3Cx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOKXW3Cx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CAAC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790194233;
	bh=TERGMbjryxzT4slXiVh+LpyEEE9wEwY/nLhVClf8e24=;
	h=To:Subject:From:Date:From;
	b=oOKXW3Cx4IEspTkbZ9wAK1sE6s5tWLuZG14omXuT5PPAdMNqEJYL5aKLPJI+jjijf
	 NuSxBUiXARGp1iHul5ME8EpC3ipxm5r5ROs5LxGmHI87AzDHrxImHRML+xy060+UgB
	 9JC4kGlmylP80DoT2/DZq2JQqN0tp7HodT7V07r5RA19Qs8gFSlKBxy0/usCVA1RVl
	 jymEGI2WnF9AyNhAQO+w55vH0qSRvkY2yJyfcx0JL3SfGZieshxI9O9EhpRFpCsBa2
	 imWESTOABgcRgDjPI75vNrfQA6gDM7bY8+ItlrtlgPAWmFqvfGFrw94cLXtZouqEGO
	 WUA8GTVc7P6kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD58EC9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019423369.14956.5658250665771858509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1317680d4ddc929d914a4890fdd39f391b7235b418ac45f81d3209ffc548be6
Date: Wed, 23 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790194233
