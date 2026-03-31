Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0310E368977
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774933494; cv=none; b=JaCWGpLUKQBUExPyXOlkZD1EeA7PkQR5tzzgJARA/y5bBn5YTWx2VTErPNEOiJUTu9Gbe1W8nfq6hhoeaARL58r0TEs/mbjlgwzcoa5pJwnXTmvwsIJhG1IemKQc+AfdfI00dvGU2PRdkuSlmjqzyTf+MA4QcbYvfZ00ei5HEqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774933494; c=relaxed/simple;
	bh=TIdwJ0a1OjxBnXFevxOaMDUp3PNoCzDZ9YC3FjvbZ5g=;
	h=To:Subject:From:Message-Id:Date; b=Fx1ZZhVNmDwUaylFZIw4WmpjGGTfGbmLVlxr3rUJLGa+TdEawbV08ynF2VMToW9RAdJ2aCDlJCJirH8Nt5Anb3mnsd0WFl4EnVrp9iGnyi8n+6eUor79rEfTZlmj1JsSkGgeo4R/n+YyQR143ZUK9MGg2g3gd0qotZdrJ2HPC4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWDO0JAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWDO0JAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1607C19424
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774933493;
	bh=TIdwJ0a1OjxBnXFevxOaMDUp3PNoCzDZ9YC3FjvbZ5g=;
	h=To:Subject:From:Date:From;
	b=XWDO0JAZu/otF8JYLxgcm1g4Myg4tkWNP15EXeXUq+uSrGqUxpOiUfRp8yDQ+pHma
	 rUGfTPQfHQ2oq8dkf2/uQbSNT4zmbVb6e3uF4FsW+PlegeUDbD7ybhYM79fkiuLt07
	 6T/lRH+drVRY8iWsmS+eVDkkqYoJPHye2iW14bLO+DpMuc5u16Gr3HLD6mtPSQBltp
	 FpC0e8DPsao4T7umtErsIk9oxfvYaSS4PFlaMPq5zAjdLx2RUP/TiUqZS3NwNjeg+Z
	 6d/uyZsXoNh2ACWkC81l/TVXqwp97tRe5KU569Yxr2eAn1tElJLeMv8VR+REbvCNoI
	 xPXACFbHhIRGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90790FF60C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493349358.24726.13593341169309398007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beeefa4c1e617cb92a4d631e79b795bcc32071f6a8d494de25c852884346d0a3
Date: Tue, 31 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774933493
