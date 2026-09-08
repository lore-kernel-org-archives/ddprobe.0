Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD30233722
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788831034; cv=none; b=e9XjYq+6Zc2ahbS2piykKqibS30aGr7JSRV1OwJeCbj3oDdoFRoKr5sYczL9uGVfoNu/7utKC0Cgb0XMMfTdKO+oiTNsissPnVOVVRqhYPoWW3t0DmRXGURI//3suvbZTsIR1B3Xm1kxuC9g5XIQwi3rTD1rnUI+3lZO8Sn+kzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788831034; c=relaxed/simple;
	bh=M4DaaizfXWNzHPBy/aB2rcIFtWTLpZaF8LXgnj0/F5A=;
	h=To:Subject:From:Message-Id:Date; b=XGXzseTEhv0jP01/NH0gC3COTjRGJfWtWFxDiFPZm97lUaKTjWvNu///zGI4kl/TJN8s6J1V56K8x4ro18rDgLdPo8z33Y78yWyODVI1sCjGKqadNzXd99WArIAUZUxR+JKYjmpEY4PeS5C/ksy6EE5fATdIa5TYs4XvjUYRBrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7+z0CvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7+z0CvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD97BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788831033;
	bh=M4DaaizfXWNzHPBy/aB2rcIFtWTLpZaF8LXgnj0/F5A=;
	h=To:Subject:From:Date:From;
	b=G7+z0CvFBe1Ex36mTUbMOjFfhLrfM4LWILZaw1+8fhyW2lQA56AYTUj2sEjRD+X40
	 FGulZD5/TvE6cmveWgG+z7NKU7BJLhtq4Xa4N4b5qJIOETUFc2bhzXtsFUgXEsh6Kb
	 0CdNp4oQzeOZv5cSzTbJuzvcghlMlpWWKd8WVjSzH/dv4evklFY6rtes8X2Z9Epbga
	 keyplKukGXaq0WDX79ZRmy9jNX2Fj3MJJvMHTWnVfsOVa0vPqN8JEJdvU9cgKW+XYS
	 jAT9AXHOGh6/+AVG8LAbhV2WXKCT90wa+CfXGtAEM4mfIYm+1Gr4/gO3KLeHRFVIQW
	 jZk7xCONNXhuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81D1C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883103374.14233.11465034950197757008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519f710e084f65974952eb65f3b87df6df4f795a02e9cc376fee8402e4ab39f6
Date: Tue, 08 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788831033
