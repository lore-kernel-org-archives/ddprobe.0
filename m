Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353053DDDCB
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787550634; cv=none; b=LNeZhsS/D492jY8tkDlRGHGR0zFMbq8MTnyMGgs6vqF9LwlteBP7rCP0TbgcnCitdM5V41s74apejg/KbwwrVedejlH+MksJPq5KOi2XixFN0h+tWnUnQu2c67+pPJUkzmT+wShoh4dHi3gcGi6T+2WLjC5XEG/yMAJwv8zS1AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787550634; c=relaxed/simple;
	bh=UvNZaFg9yu+vFVvvNPp1UfBDMVHA5hyjciY2q00DPDo=;
	h=To:Subject:From:Message-Id:Date; b=f+gZzC1/ZbCCdJBU+XxaE4ifBk3rHzhwMDt2jvfqe7bk1st41DXL22uJT5jNeDhbZ38rxyWS04ef234H+6i6nhyyVa8Yi+UaVcXVxmkLM97+nN1nInksa82EWZ94LSCEdsu9Qo4CDK6reXj/iRrviFhMBJ4paz38Io8hGrc2qzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYDw/4lf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYDw/4lf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E80C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787550633;
	bh=UvNZaFg9yu+vFVvvNPp1UfBDMVHA5hyjciY2q00DPDo=;
	h=To:Subject:From:Date:From;
	b=NYDw/4lf2g1bLWUBQagVVlEm/+Q6oWL+SmZDv6KuVUY+QRkvjvXffAOoxBwLJl1d3
	 PDmjy2Y7W6T/eCSDYPnERoY20MH1xi/uSliaK3YZZv5ewiUdKrDuJ740tzSuqiP2Iy
	 T09cnR3itT4zLLexfU7Nk2pyNGVAwKEAjRklwsntuVSSfSwCkbLOJSz2F5Q25B5ZY7
	 o4ku5q0Np+wbAGOuZxjP366DUL3QtqRi1Jghcrhn6q0mRAytCAt0stXw63OFr1rfWd
	 InwicbwH0Sr8bB6wOGvasic3xHqSLFby30m7fbdyAAp2SkyTwy4uItdRDfOKcn0gB9
	 Y6GgEAwLg7cDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8F1C5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755063368.24764.6378808525389619252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59946a512ebd6b30e57014a59350b501294988726e93e87e6f0412419a3c9fd
Date: Mon, 24 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787550633
