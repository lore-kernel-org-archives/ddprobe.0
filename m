Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A164C354AFE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767809034; cv=none; b=IaB8HhBbgYeN+9w0rvKPcbp8T7iA0S8eYmwedWt+7zG1Tj3zL/Emu08lC59e7hcruP1sckViiVbHXSdODBEpOKLfKGF0Bhe5adxIY90AUj28ws1j1vwntzDr+33KThQhCIhJF3S1S02mcYvnZkt0SqylBvwVMFVBWp/JWwRgLhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767809034; c=relaxed/simple;
	bh=lPnnxICGvgycXzssPiKt9CannJICABtukRQQZSCNRkc=;
	h=To:Subject:From:Message-Id:Date; b=jgwFUM2fGzmWAFklpXGBdc3XfCHShzlAqd0B5b+qORVHhiGuHw7348Re9AOt6bFxBo2sbvLUN1BhKfiNxXNIOU5Kh+1LtU1Eau7d2k8NniVvIMPoWxcsdIRupkELGQK+FIoJEfGDIi4yopOdp/YcioUJOAwhd6PY+6+Em3hTXQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQ954ZXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQ954ZXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ECBC19423
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767809033;
	bh=lPnnxICGvgycXzssPiKt9CannJICABtukRQQZSCNRkc=;
	h=To:Subject:From:Date:From;
	b=aQ954ZXRNxLCnPwCUkDOIZBLUF9alokA0/v518PHtPwZJ15GEi8h67jDWamRqX52a
	 g9Ugaygsh0iYI2xrJ5P983ex1a/zGR60gLU+IaFIC3I7vvkuuEpP0yrSaWLW87dmMC
	 hiQtAgwGxWlZIqYtF88UK/x1rSRT9V4d0DhrPZIuXdPw94Ap8z58KL96TW9gWgLCoM
	 OaW/XG1/A5C8wLlocQQtfUfe19JxZCkEaKc8eJZyq1qjmqbH0+ATg5YllekAfcfKwr
	 WYOYkIYxUXzSfxqTTwRhvv0hK50LEQ2icdCxRWkJXD2AhbIih842zAx2mOQvJmic9d
	 30p2PLjwuh5Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB1CD0D14B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780903357.12506.2953046642356959436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103c7caeff2ed367a2413a386b95670039f012946b89a2270dd46146a345eb73
Date: Wed, 07 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767809033
