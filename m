Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2295B1B412B
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745509194; cv=none; b=WjaGkpbGiqGcHTVVUxHtLnHt4hcU5q9YpegSltVKt7v8auTOiuPzkh5Su9UNIs/irRQ6ux8S3jzN0etxCSCzjQQDhrtmEKxPNb9i8fWYZByDpCKQtzBE89BDFnkrO5Xd7fzNUC/cfAOB06w7eHDv6HP+tOH4ISGAGMSraruXd8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745509194; c=relaxed/simple;
	bh=n7lEWcrpj2ngCJegXRaN8tdrurjx4an92DrA1lExY48=;
	h=To:Subject:From:Message-Id:Date; b=BelllJWZp05Q17fhDBc2UiOXrCyS8fQHTUDZ/i66v5iJFu241GpW4btiI9AvPhpmRxGj5u+D38DXMeLYxjiMah+Awc3fo6lNmGkkwNOvvLWdsZrg7tOskOlfDN8Bhsv/CzjTMbSvfeGQMaj+FjDH9ZgyFxMkFvA1Goq5v6J2tW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbLgKuu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbLgKuu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F190C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745509193;
	bh=n7lEWcrpj2ngCJegXRaN8tdrurjx4an92DrA1lExY48=;
	h=To:Subject:From:Date:From;
	b=UbLgKuu90XlPa+A0+4gA4Wa2tBNSgf6tDVORiyWhCiclZVGLy09kybWdcjyYQ2nEC
	 +6JQk1xhVqe26A1bo1+FFl0ojtBMY0gqGTbN4pBsP5JtuvuGJs/LlKSm36f/Y7W+Fo
	 +shGI+A+dyVd+pw60a5FdD4fIj0hiKSQ7jFC6qpUJslpp4oPJtrXdM17SMrFewHeok
	 b9fKvM5UG79nuIXYLeR/PwS0p59EYzh8kWkphWqO1I1KxHPuWs8/sRXUwJ9XoccH9d
	 mWn+fhldgRTr74k9XHHkCZXQN/6qBN60qLlqRLHL2tvprUafZRAMAaoQ3Lli7I9vb6
	 2OTSv4K38NiFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E639C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550919357.5539.9401361297056272960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ae3c6a8c5088564f3876e638281ca24d3f2a95126778fb1cdb41582d8633015
Date: Thu, 24 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745509193
