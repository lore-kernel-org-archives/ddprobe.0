Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2156654774
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772314494; cv=none; b=ka68PvvHl9lehR+mFq+OPTecFQirMtbSLK1KUgerrSUpOshGexMA53vj/yAikxt4bnEHVUiVzcmTWbTfq4lXNPczQ0LK6VxxT2jAJY8KZGE/Gz4WzKEZoN4yaaitr60+fFY2LCtkLsdIV9wteTwPrG6hwUg8+KV6nbrzNp03eh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772314494; c=relaxed/simple;
	bh=msn1hd6QoqRy87wD4PIDKLQGExe5kYe158Umto0Xotc=;
	h=To:Subject:From:Message-Id:Date; b=U1h+IMYosO/xUPYaXDOY9yVn0bYg861Z248A5i2mKPcR2tlHn7vF3++js3r4R17RkR1BlaYILjZU6wFF7vpuDusARSgriHj6MRp7NNf7/Gd7k+EVBOGRw9s+ya8zbiD3ypDwznzvaRKmHg8ejguXF6hOFm/gtj2gzkUPkb5Imvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3TKhvt6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3TKhvt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD4BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772314493;
	bh=msn1hd6QoqRy87wD4PIDKLQGExe5kYe158Umto0Xotc=;
	h=To:Subject:From:Date:From;
	b=K3TKhvt6mPsrpnVijMKbwe/muhu1uZTHrUp+axYJdYcIFZVWw3Nv9JtgGzXfDTc4c
	 NqBnLbIf/KYFlEQ09qdsq+I9mIEo0e+jnGtBZyHfp5r5OzHgJmzbsSW7KFAEyc7FWr
	 vw5kxZocfvOR9VEP/2VK7W+I7cHvL3jVUcz3q1o1OCub4+s765FWoZnh3WsustpRYq
	 tmPZsMF1UdCh3ruR/AjHzZqM7ZFCebqXczkI6yKQ00UxdwPlScZjpGp4d7oFCZoDPq
	 /M0tsn1VGgImQABZLhXjN4p9ulSJOOZUwW0Gtizqn4h8auM62kHo9PFCFIgIkr+B16
	 mOt2iTjdJlf4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCE6FEE4FF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231449364.3958.3229305948869086162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac369f537f9c699929e4a10b48df0957662eaa8f3a95b62df35e091a633b4183
Date: Sat, 28 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772314493
