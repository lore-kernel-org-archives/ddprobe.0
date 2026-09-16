Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D804AFE2C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789558834; cv=none; b=EIW4x+m78qkJJ0NSC1yyQ+bEzV+iCahqVQ93nIuC2Xf+1mCQJC4JtIDoBze0hDZo3LEqQ+Io/xorPDVP3Yu13JO9zKHoQ/vrUfQpHZu9nX1CVXlbVLgQ9gWir/ToOYT71y09dn3rMeQLFY6IqW9MfeyJQZcB4xIH1yV7CkJYbeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789558834; c=relaxed/simple;
	bh=R4IshYpVZFBK4saphVTuBhzr1GbLPCcn6/iQuJcoYxw=;
	h=To:Subject:From:Message-Id:Date; b=ejULKfreh5qgjpOJwtCBKeg17C7TApjR+kttKAQzBCptOpsSSwAOJ7EY2p5+YQMSCMxr9N29yTlWK5G3esAt9no7ssxRcjTWU35wYvMJbObFNzrT1UAa3GsrdFsq7JqulnD7DRX6TV42pgL9BmC/EOd3cnaP1w9IVhXgX3sWkjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPJ3divF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPJ3divF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBF4C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789558833;
	bh=R4IshYpVZFBK4saphVTuBhzr1GbLPCcn6/iQuJcoYxw=;
	h=To:Subject:From:Date:From;
	b=uPJ3divFYnr9SAESRJ/lDNPsKvHc6h6EfjvE6xqZ0k/Ja/H10jkK+fjfXYTk7ygyl
	 YdjAjMPSyG4+EiI9Y+zqpMWf5lQyeWhEP7cOlGEQpsCtwBFLFBxRdD1ad9ZPX+sZMq
	 4S0AwxCtrpdENP7dpNTg8JwzMNm5sfpZWXsDqtRfJ0IfQTSD0SgpeX1OT3VjWqeXBA
	 srAVhBVHcYLZlnYId36O6QEDXozRfK/k8gaRBqunOIXdq/XtMA3L9kEgwy8pkDyLCl
	 rrKPZRaN7oe7K+/zIfnIEggiQgaN+qgvqCrYvrc7qZypiafs2HF4gbgDugCoOzNZMz
	 I/lZrL+IW9cKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4BEC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955883369.2255.3149835015613617843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b9e0165fc2f6a8848546f849f1900ca40f13eeb7b22c6572cf8aba0c882967
Date: Wed, 16 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789558833
