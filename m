Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E20F3F8E09
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773955494; cv=none; b=Mn+AhoCHeLtsWWJHj2igngWp6UxlLRsvqNrW/o7Q+Kk1Ld1Wy3KhhLr2KgLdtD3MLNDWw+a7q3nB3p3O/PJNdxWXozsQAp4EXp8wDu3qSllwh5OvrJUbbwTypVqe6v/N54+hBwZn9nn3XJMq3mzdGK9i80NJEDJRfGI72N+jMHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773955494; c=relaxed/simple;
	bh=o4+zAamB0pl8TRr0+97ntj0i0Wi/67Zb2KdbyS6638g=;
	h=To:Subject:From:Message-Id:Date; b=QCU5MfyjziaYkvjefauAyGmVA7gIyCV4Kj2al7gUGfoXQEspy+90hD9m12N+u9gotiRmf0lK98z/eJooPeLlBrAI6W251OdQ+qDidBMX5McLCYUjI9GeK7uAaoZI7ML8SVzAacw9F/3LAzJb1MRCyyV/jAK8WGse2lSrOzVNyJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MELbHCw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MELbHCw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECD0C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773955493;
	bh=o4+zAamB0pl8TRr0+97ntj0i0Wi/67Zb2KdbyS6638g=;
	h=To:Subject:From:Date:From;
	b=MELbHCw670l0W9Gh9dPav7GOmQPXfUUduQsI8Srbi8Q81xH7YKCWwNrTUEhNP8pgu
	 OVGy9zu4aZ5GfgsL4i0VHPpijdKYvaKwgXPNEUVGvjvjL8nY2xYMKBxBtvyKUckqPF
	 wQZrAb8T/sBpYqPT6UnznvN3FPGCFoqJviJl+YUCNuCmWUAP9+3FmRmvAt4NADY0Gh
	 9Mxhzu/Tb//kStIGva4DnrUyRHub84FS6cBj5mdICUnFXCVaIaqFM1/cVkPRg34MOe
	 3Z5KnrEYLJG2I6XX/GM3tMRdLAozon21QLADvxQM8nJ50WFDrqxvjfMNxwEx7p1S+9
	 GDHBrPeEHA4cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F91091923
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395549357.30213.11619016831931941808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd37324591dfeda88ace6a8c30639d0b716e5ea2ae765fc76e2ef3c10851e0e
Date: Thu, 19 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773955493
