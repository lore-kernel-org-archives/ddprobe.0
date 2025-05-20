Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF991E50B
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747765795; cv=none; b=m7V7U2jQlRwMUe1D3Zm8sAvkQUzAsxhlMB27I9m+G3z9BjGQJwYWDU40t2S//Mt4GgLmipSS56PWQ000qZmdOaGLZepKfp0FwrTW1x0RO+82SUNNhvLkS9CHVfwvv0DhEBZ1YxL6GTcg71qVWglXwDK2kBhXzj70YaqHRst0JRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747765795; c=relaxed/simple;
	bh=Dn3iwHe+fxBLBzfLeiKh6V4aqI5Ry8dwJJFgCW8Fp2w=;
	h=To:Subject:From:Message-Id:Date; b=NvGlMMSW+Wj8BQMDhNvdo2WhKTm6TSLPhj3ADxYIPhfWb/fJqYHT32PrT9/Wh4sW8zQ3+fhC6GOy3QR+ee1z7AqSaycTIbr5UGvv3gRYW5SWmGLgO8GxGhi3eCu8gU1wWWmgn5q2+zcXLc9JhuXWg2bWqxs7HsZNz2Qcqk84WoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYXlA6/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYXlA6/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD75C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747765793;
	bh=Dn3iwHe+fxBLBzfLeiKh6V4aqI5Ry8dwJJFgCW8Fp2w=;
	h=To:Subject:From:Date:From;
	b=CYXlA6/vIRNtP1mRimoV2aoqJh+wAQmnCQ6uW7OXJaq03FjooJiMT2BLLUpr5+j17
	 i6613pgWc/nO9RlD375agktpdVPdvNVO7dS6Fa9Kapwq/AT7eNqBu2v3zX2udr7NBu
	 bPeW6uPrfdpzvfluk7R6rIU+oODixRajjmomSpgFL7ANsURH9PcsOdlUEr9DBdQ7AN
	 4rW4ujGb/f7rrHY11ocRoXuRAk68YLUEoa+HNPwf6z4QYKNY1VVlMYu8HkPkrDGzA5
	 9gwq4HsFVrLUBa7xbJsPHAuI4z0j02hOihnVCGOWYYADuBvBFAUrQCgjQnE/QB4jIq
	 cA5ZgSFet3P8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB4AC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776579357.29846.10250872476853933183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2d7b8ae25c3a3bbbc2c4575e2be10e7dbf6f21877414d3f31962d77eb5aed4
Date: Tue, 20 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747765793
