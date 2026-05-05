Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3231F3D6CC5
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778009854; cv=none; b=i/XOkNNs60VRfTMYnrJZoZuYdTrmdagJiKgZTlOzorWXTo5y2UyDKxTQYzjjJiQVx67AC9v2yq9Pb0P9sfmHS7wgrMU3iYhwZqHim6yr+jxrwUbu1+48W9fs+8O7hiydpB+PR/eXoL6h4nkDuRTJHbdYPgvO76tBgcLCyK0Pa28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778009854; c=relaxed/simple;
	bh=OumNY02FrEHbs3hacZfhj37RNQkleQyYdrYNldRhx3k=;
	h=To:Subject:From:Message-Id:Date; b=BpOQneTAsyYf8Z8pu9c0nnAEXtbfIfrDwdz+Bl/dyJPLrq2oRXpRC/MatkULhVqVae19iCEqL+0dIL6gUDmYFkVi3vQBA5yBNeNDNCbyloZYpMwT33Rg3LJrziMWoczP3ZUx1HruGWpjP6PU2Zi9TGskVJn6vSL3ibmGPg/wJ/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2/1zlCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2/1zlCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA2FC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778009853;
	bh=OumNY02FrEHbs3hacZfhj37RNQkleQyYdrYNldRhx3k=;
	h=To:Subject:From:Date:From;
	b=T2/1zlCifmtuq6rOt6/FB4F/+UBaxh9xCitsqyS2eS9oovSxtuwjbno8VIFIYs2vm
	 3SzPJoj5B3JO+tUE9ZQUdBuSc0C3EpzRDqmVLA4c5+fEO8gmw+ZwfFhDPt+x8DlQaY
	 iSEMBcL109qpzha8KyYeO/S1hBmQO/rFjYPfbSIjLWkv+L+Eo7QCLGmpgiU0cYPt3y
	 l+Acgzw/hV6ALYNzLRWNSZgqWdlo8qkTkLtBNyx+n2VCCVO/mrGpFekavzdbjAFPW9
	 AfgcpU0n1sampyhbbPLVRnFvfXgbpYOIlWWb5nJIWEu35RvMvatpjz+JeD0i4iSQ7F
	 ofChYvz2fFqkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4E5CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800985369.1477.10639392560944062415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0055461fcea354fcca2dec1d1eca6b95c56e460c8c44986706fb8392e3b37c
Date: Tue, 05 May 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778009853
