Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C266D2B9BA
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764877373; cv=none; b=liwdJpvz93GMdXsAJmmHNO7/G/D8smCCW55xMIaMUmbWCDnrebUnGBv5FYNtechnncofp3cBNwkLWDNDRRcY7/5XnYbr88MS9qY3xfz1YojjOP6UDk8cPnzhs4DltgTDE7TY/dtXvHKJ0wPsNz/KRXvnXgN9bV5b/5fth05nvD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764877373; c=relaxed/simple;
	bh=NJ+6a8kLqNS2SN8EGHIUr36mtR5yDKhR2ozgAwUen6o=;
	h=To:Subject:From:Message-Id:Date; b=Nhhhpl/aMEXiS8NtUYBOdip5ozXsMRCikH1rkiJTDY5ZTgTx/u9HAUwmlWwjvKGhCde0MHuVdkKhYXe3MCTPOtMXf1NN8hqNd8781fnXXzWiMRloILUD2fC7aIsMAf5DH+qd7FOMEnLbQ5+x0cWmC/pq6YM8zI24nPFfSBwye2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eu11RE38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eu11RE38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0658C116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764877373;
	bh=NJ+6a8kLqNS2SN8EGHIUr36mtR5yDKhR2ozgAwUen6o=;
	h=To:Subject:From:Date:From;
	b=Eu11RE38D2m5xClG4T+r0HF62iWs4P2bUmccAlvZSo6tzrcMe5TKd/Yd5JCiITXt1
	 bOWKrUl3Uh5hh4LvHwbsLYAg+3kvxwHAsWMYlFlWrBtGb00rOMwKy3pRL6PiSPg40u
	 9oKsppz+o4IVdb5XQGJAJrkk3+kUJ8OWZ5yLrsgaIJiurx7G+mT9/DoKqh8etXwTig
	 ofTz1ZeNuMBuNgiKSG+Mi+7mq7vJlE038ks6HnZUjwHJbCu46r/9GMoVNLogds7P2K
	 TsloPsMSSKVk8EXu/m3qprtWiRlAiiXjh63X0PJ/pUxbZxH+qaOLG6ck0SV+bNaWcC
	 kaDSyuKVAn27Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A81D29FB2
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487737358.21977.4588711118092960428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d061a41c98fa2121a5c333a84c8af01863353e36cfc71052d4807acad561c5b2
Date: Thu, 04 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764877373
