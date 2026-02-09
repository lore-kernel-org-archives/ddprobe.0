Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040C1315785
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770620034; cv=none; b=jZvMOe7ztVVETNXx6P2rflg3BoPiC+MifCd0Cz94nT+S3i9llkpHupUt79Jmr9QxHkYkTJb/fDRo6RFjiFSce9hY78EPKQtMJXzmWB6lrU4LpzQo7S/AKtiFoPDbNKga4WMZubDlF18w46cnkOZdQAhU+jRGxeISEBkZqjyoGds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770620034; c=relaxed/simple;
	bh=y3E9NSDaY1VQtihoo2olC38xA0TjAaLdx9srslA8t1o=;
	h=To:Subject:From:Message-Id:Date; b=jAqieEGVnOvMLhmR7wQ49aTTsi+puk6XSaCXIZsc9LNGQ/mJzP/etnqGPGqdHOnE+Iu7ShX2OKItGDC281D+V51/5bLiNzY6yEFjDcNxsAsrPNmaXj+D8JWLCg9t4QyvUohOnVtsiRXC4aAafrhTptfcyyF9b0HLoFzSJBE8OKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6AwUPlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6AwUPlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68A3C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770620033;
	bh=y3E9NSDaY1VQtihoo2olC38xA0TjAaLdx9srslA8t1o=;
	h=To:Subject:From:Date:From;
	b=G6AwUPlS/kJr+aSienHznZKHG6P7YIv3DMGTo06U7PiUiB3MYFZtl6Isx2j8g1fxu
	 pcZv1xES978TQ/n9Y3qVDazTLams5ucorNr7SZkcOmgFBU1X2JrmAmKQ2+MY7F+9gG
	 aoJctqjKLkvLIH3xqWNtT02fAGxl7kRM2YDc9fR2AZ5WmM0gjFPJPyIlQ283Fn4/2Y
	 g+GBbbo7jNxGAwffRtlPD50+CVdoqSxNW/ohd9YzyCTG7aA+NduHQqn2ZMtVWxJc4x
	 FVxaJXBJXDXDZZZjgljMf9Z2yJXubSAxmVsWalQbZYuGGAnhnLMn2460vqtY797AqC
	 bJGXuHmotQZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B8EF0717
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062003359.5359.4974321683736878651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0bfafb9038ef35e34df0e14d87a1af21b893a708a1fa01437b272cad513daa
Date: Mon, 09 Feb 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770620033
