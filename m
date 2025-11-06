Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6831C3BF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762393794; cv=none; b=Pq9SMDUHK6dlD+J4syVOiz25Mg3sK98VJiHmWWPc8kQK9fFb8FkvKCxMEX32w4OGkyylNosOob7fQ2JttayXS3wLNw5a4L9b9xrkTpKIaFaUyd2FY41o7rU7AFQc3NKl19HhLR1/EBzkABtgY9ZYx1LqulxAdpUS50T+bsW4qFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762393794; c=relaxed/simple;
	bh=XO5g0XzekeIop5FCZpHrAzLBnKsceXXIXL/PGitL1w0=;
	h=To:Subject:From:Message-Id:Date; b=WM7fucc1uFcSC3U8aD3kasjBfiv41H34K7iofZi/pYxkr9+iXJmv8d5wmiLkCBoQsq8O9CI8/EnQdCFtBx14w9VyAZQD2SOnmURvyfsiYqeGdsB9yhDhk8fs4/Ja1UFBmoQLI7SHl81WPcXtxbP5OYaSKSXZiFUYEQE4+Z7hFtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzM9l2w5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzM9l2w5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D407C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762393793;
	bh=XO5g0XzekeIop5FCZpHrAzLBnKsceXXIXL/PGitL1w0=;
	h=To:Subject:From:Date:From;
	b=tzM9l2w5RMwKyKPkXsHTSDVQEMFLEa5/7M5IdL8G0A7XOEEsxf4P/xc2SLa5DjXTO
	 0BJN5uAsNSV/C3UkMAWevOQ84GTijg3eNI+QzVZ7Kk8B1YNoWITVBjVoLN888MuQwh
	 dv4T2r2zKKaeQ7HbDdiGdik2qGLOf23wxN8w+XhPwoSqcXV1d2J37x2n3kNS8BrOoz
	 B5lqt6yndi82joFY7Y5lujSwSasrfRMAQQ3E5w9g1vsYXzHhX2AivFj0E1PGbSsz3N
	 WgUwgVdMOHKEO66DukBY7LQMvEQxq13z2+q4ROSAIB4FmWSJY8VN4TgF/6FYsWhlJR
	 rzU5WHf/HTI3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043FCCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239379358.20499.1452182770215516493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c866baa87a1c90d66daf3f5df2a097104174480a6b2d8f7431e807e54bd8657e
Date: Thu, 06 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762393793
