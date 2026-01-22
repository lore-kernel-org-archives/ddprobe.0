Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE81E37F0E8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769111636; cv=none; b=hGnN+u5UehSQ3vgWFNFYefJkuZo+7jleoXELJa0nv1oEcgX29I2lzQjK4E/TLy5Oj+YqnrvdiUCLRANmccdA3VMuxXOPud4oRr3Wd+kms4Gj6zZg/XmYrPzGU/fZCY2A5cNYYWwL3mt2pUGcl7j364HN054TQRub5UQmE1ikpe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769111636; c=relaxed/simple;
	bh=9hI8kzpwXNKOuINWs7k5NqkNFPAljEUD7P+Xyic/JqU=;
	h=To:Subject:From:Message-Id:Date; b=ko52WktTk85Vqv2PuMo0XHOm1BHVdmFwxuZdctRjI3wdrxbjF+FDKxDXeioGJ5vbrx+yx10HEV6LNu87mwi2t5Ex+z99F9wGWyE9FVI2y7remPhbSyxlrsbGDCUO3LgjGilhWJXNjt2hJPDRbimg3j238qvo+HyLBT5SMJcuyYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5EsvHHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5EsvHHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11DAC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769111633;
	bh=9hI8kzpwXNKOuINWs7k5NqkNFPAljEUD7P+Xyic/JqU=;
	h=To:Subject:From:Date:From;
	b=R5EsvHHKgVX++ZxqLutT2ynNoRDygSE1BK56/qEyQxVqZ8bLmDRZTUfknnWk7mfUT
	 aZm+I8tKNKDYHuyQDXekQXK9cgK65KZJgjwGYkoLYil75Enx54mDE6AqNumKViEqQi
	 FYHB9ouquyQ1IYYqMIZ9sU/cLqLR0cajeiV/W9av9IVIqeGjLNAZ1S4RWIj3nY87Py
	 DmLHbKkDxfmkMnq4ozClUf0jwZgL+1wJ1nScZaEJi7lde287G/FNkKiJhopcKVdSEz
	 HM/fq6f3tQO7C459qzFyi+ocxBJfVC0D/jrm4zfux9BYGB7yuKRymZO+qrw6eIPxKW
	 VnsX6BZyuQu0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A1D6CFA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911163358.3186.2768114590445092541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de3fa53b3a3558e67e96dd28322efb907f7cafe84a7f2b4e1f7dd7c20f8ba0a
Date: Thu, 22 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769111633
