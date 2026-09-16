Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250E83FD12A
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789593637; cv=none; b=Jgp7qVVJYIEsW8kt/D2xx+li9wCaVi7PN526y8CBkg1A0wPxdDS2rfdH1+Coi3i8rQEo4D18bmtDVW/hMnSL938Xs17eB/DxoqD/IhVjm2v6JpOK/oqF02Wd1+h5h1B8884R1sOr3+EOAJXGHPdHElXwBn332K/K+TJHVyxxKdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789593637; c=relaxed/simple;
	bh=ayVIX+F9wJrD0K+kXslHxEC/mzB/+495qLV1Uv7oVHQ=;
	h=To:Subject:From:Message-Id:Date; b=lh+u6RSniE4ejGLdSXbvBil0KJxS4hihvpEd5+X6M9LGd/Y79F5FeE4se//QWJKukC9pZHh7vjQHtM7wt+yXEQM5nlRi3HcJF3kltUJKUxLxi6IePF2ts394tiSdT4TIkeVXLyQ69zCQgEPKxnfFuCtzvEFyMktb7LW1QNk0Mz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJVtZXBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJVtZXBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED913C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789593634;
	bh=ayVIX+F9wJrD0K+kXslHxEC/mzB/+495qLV1Uv7oVHQ=;
	h=To:Subject:From:Date:From;
	b=PJVtZXBJ41lzy+M6eQE1tZPLYpzrkYZKQ0Q8JJzmYQ+lfAL2AggMF7Hc2DOEyECHB
	 XtypWEzHnA9Pbw5UVrz/j9I0kFnRYgRLntQrOg0Rja+twPAwW0imRrglw9wQEVN3Tm
	 JY6ABQTw0QDpXlTMpqt8eTVNfIjn9orqwu39LsB+M3eMxFk8ZT1bfLxO5azuZF9Qs5
	 deHgfe/i0jryVFgebfGtj15Ecux6Xp7ki9vDVA7hjattN/bJTOU7vyslNnAjXS/6V2
	 WT9yFKkImW8iCP0XcDBHGOh6vY/xFUzDjVPC1AwW6tPhKqdyVKSzK9MFdEu7lrMIuK
	 3iishj1r+XFjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF18FC982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959363376.5954.7500257243298515596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee65fc8a2221d35636449d2b948f0d8ede1416f82397f04ab16df77d7d81709
Date: Wed, 16 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789593633
