Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DDE318139
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761226794; cv=none; b=D1b4zcw9t6sYMlY8/CHMM9qIRlWXM6bciTslbwsZyYlSZ+4m9qvPcrcc/1kBuoEV3nCcuS8xIdG6VQf6pche4vHw0eu9GxBH42OB5J0WytJBbjGluIB+TMTRqymmDqH2FQWfxuwa2oamKsK3jCawd7SBIfHwoCbZNkJ6IBuhNGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761226794; c=relaxed/simple;
	bh=QYZotw75vKBCAwwlTrEBdHBsTZVhsEJB3dQHb6dIW50=;
	h=To:Subject:From:Message-Id:Date; b=jGOexVaiD/1oSaaMQstBuKDot8bL7My7wCjkA3viz9COZl85tMaFSavXvpxYq3cnfDNpcNxv2PC83drNEOdscJOu7651QlVZFNP+uf3xZ5QpjOvsFDM2gzBnxq4QMhwOPkalNOm5SuWzJhheaq/8qnhxD3ZBeo+KfwmRmy30yMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaxd6znG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaxd6znG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4003C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761226793;
	bh=QYZotw75vKBCAwwlTrEBdHBsTZVhsEJB3dQHb6dIW50=;
	h=To:Subject:From:Date:From;
	b=kaxd6znGbdjLzhxpUCF1DWw4P/k1xAC3UcHZ81IIpA23YQgM8DXzuYnlpu1FCCT3r
	 q8iPzKwnz1EK5tVxyxMTwXatE2ZmkTYyEkO3fQenIvQRGIe5iuh6iqgyeFek5GgG51
	 E3lw0T2lDOWzevopsipIRNh/7oIx75lgknsHAB68mCeKjm0v3+8Q/IgzGjL8cRYA7N
	 XnEHYGUZMPYgwa/HHUkmJiM8M2EmrWjHlZTFPIeSJEdMj6f+3n9eo5hyzPcCSqamza
	 zcGh22W0VWOittQMYTivc5Fov5hlRai4Xxsd79bWr7TeVAjXw5pczr54a5ViViKMqb
	 EWqpJ7qtxpT+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90456CCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122679358.9996.15676290806388766255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4130f7e7e8200d12daf5472ffde7ae54e66dd94256ee69e396545fd51e40ae6a
Date: Thu, 23 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761226793
