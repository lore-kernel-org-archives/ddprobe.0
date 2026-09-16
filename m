Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A70893B19DB
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789583435; cv=none; b=Eo/SJoBOukJ82nPFwgvqSOjjcHjOwiaoyOjLb0SZ2FuLBz9pCHxcBphEMy5qdFeExwjaBmj6qRUlPvyM1A4oTZlsgRGRZdd5sJ0RBHYnWRgEh4WzrF6d6WVdSErz8WfwYXYSXAgQ2j7b6o4cTzyoTlEu1JXQHbAkBox8Sb19fcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789583435; c=relaxed/simple;
	bh=eS2M1/hbpZA3RVTr8+tCW6BUbns3ML0t4OHUnnIKWI8=;
	h=To:Subject:From:Message-Id:Date; b=jarwv731590id4Fl5nZbqi9sPDaxvPlSiCJD5jXKBdoV2JrJgBR/IChxIkA+iEo+SfXpk9ctVTuGi1DcuxBNJjY7s9LsuaOYnm+zl5w4if0ffvi+C43g67gv8M30ThC9e95yOIeqNlJEauWa4YNJlaIJSQRKREInJ2kOdd2Wiz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwT4qbyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwT4qbyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04F4C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789583433;
	bh=eS2M1/hbpZA3RVTr8+tCW6BUbns3ML0t4OHUnnIKWI8=;
	h=To:Subject:From:Date:From;
	b=kwT4qbyQxmmqjCvYjwGZToknNmgxz1LMQTx86D1wxqI8MTsMo0foDBXQrZA1g+Fes
	 KhS5jhCM3WGxSyhxymcovOCR559UHFDPOcZ9KX29BOHWWt4VE1vfel8p6W7kbkub1W
	 85yJzIpm8tjpEC65mWBEafFgwkuPH1/+MyvXhFl80pI4t1T6VfKPpH332QdNxWq/cY
	 ywABKGj3J4umJZvzgJ7uiwdezxBETfGhWiM42k9a18IP9p/qdRFeUTfsWOPhcoCdUn
	 bIKlJWTXELOQp6gwq1A1fxJ3szjvHZ5MyTkx2IEwQQ6ehogVKlHh6Vu2nkXjVolYK9
	 nFbsH5tPLN/FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC53CC88E7F
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958343369.20743.9410002085548740111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a0be222bca3a902f010836def49848443511a466123b79de9210e275cbf8418
Date: Wed, 16 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789583433
