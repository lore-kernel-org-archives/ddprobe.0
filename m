Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287D81C84D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750636794; cv=none; b=fsOj8xI+lxfQbTaxfBgcR7HxQNQO+W2bZamPizkT1XmvGZ2/3cdN9OHU/pLbe2G1YhrmDiwtwaLaea8YutBW3kIVk7C5XnaWSf08MhezC5Ff/8yHjXsL3+ZPs2eyIe9qm8o1yKta5bBeQoqv3fBjxh8IAatjkhrqKBPZgBzJHEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750636794; c=relaxed/simple;
	bh=zqX2IiOEguDBOTC99HTE2Tpm46XozaLWcqIpkFbdZrc=;
	h=To:Subject:From:Message-Id:Date; b=sREyb4ix2m9c7sZbouIE1rNkAXKiyLf8lvfTd5Ax9fBTJcCtY4loYZCB7KsOpSnnSl+Rq0+FnkOyt1DsA+nHSnoXAQynaE5ODrS70XTz+PNv9ZV5H2Z5mSb4RfWm8OdZirIg4WG5hLwaiN9Mh/QYPdtnqupe7OyzA3oKCPsPXXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cr19MqD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cr19MqD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82CFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750636793;
	bh=zqX2IiOEguDBOTC99HTE2Tpm46XozaLWcqIpkFbdZrc=;
	h=To:Subject:From:Date:From;
	b=Cr19MqD5NlhmS4P1be3pyyZJTduy1IMs88M+1qnXykFVU0oT/jzBI5IZ0dAKuCCkq
	 e+gQ6rmO4HCLhcX6KiUTOrWk2rA3lGuY+Wbfc9R/LzYoTmP73me5QDNRpv2kGPDiz2
	 VIq8paCWv1zd70dXv7nslGl5b77yF0p95W/YAgo1dCr6rKv28oisCWSP9DGRonZBUM
	 3oWoXshgJc6YSHU8xofSxRkH8Iy0yZZVetnKdJOo9QoKtjYXCMq21v8wFBH5ziMWYg
	 bf51+TWasT8HreRLeJVCt8KclmLX561FcjaeQnlGtSiUelOQQFQ6L0EsXlGZYQjSEW
	 xaIoeVy1Iy2ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91758C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063679357.21811.7025773270879692761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd22c60248dec4d11794a2c7ef6f3c56e0f0756221fe5fc3b3195f0565023c9
Date: Sun, 22 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750636793
