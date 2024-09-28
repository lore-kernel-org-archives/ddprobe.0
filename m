Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FAE82488
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727556354; cv=none; b=Ix+f8udKfynYdQfiOBAPPKIzGt39UbTO5irFbnS1IKhRaOPOYI7KUj3gMsg/6AqZunLwOrOwedw4cEW3xFTVLQiwqZzfiwCWJS8gRkNL1665Lv6tKEt6khJuMdgO+Tnt4PeEjj4IfhbpqNJYXSZL1O/EFFD49iBh0COGtbat4nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727556354; c=relaxed/simple;
	bh=HntkiNt8m4ka9MVFmsY2xi3rZsdMQoL1KCg/f/Rp6wA=;
	h=To:Subject:From:Message-Id:Date; b=ll+RHhNcoPvu9b8V8FvfTU9Px6tBX/Pbmw190KveVP7zchYmWhhcucDOuv6eFV1OhVLuChRpFESDsv/9YfRF3RmHGWsjfNp4jOsyvwc9b19kXgNxFfsqVyRwtoJc3P4hC+UxXQHcKCIxuN+uVZQqS0znlQtepeB2UQCSi8JD5Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eq7YDXOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eq7YDXOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F8FC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727556353;
	bh=HntkiNt8m4ka9MVFmsY2xi3rZsdMQoL1KCg/f/Rp6wA=;
	h=To:Subject:From:Date:From;
	b=Eq7YDXOQNfiS6Ke38sf61wGjNtQM3UZV9+8En5HxnBJP+dIo/0dlSh16j9PB6P8VL
	 0lbiyYQUTPPFAQ4yyq2OzJuxrBPusjTmV1RjkkIulQ8PSOJ+bQKpdNeF2vRwIrco7r
	 vfBOvuwh1q9I/XVEWm+X+ne//MyR2gtsBQoOr0aqAJ+hLft0s0mMDz+3aPnvJ7DKbG
	 +71MFl+GNbNdKD5zSgQySUr0Jqx9zp1tL9hzV26NhRAZwPvgU3ryRYYGKWJl5OM5ND
	 WCGzZKtkQ882S8cUIA8n58V0MhtfFdYtlAH5YJarUdHTbTqwSwUKwDXWdf8STtH6RR
	 PKMCv3p5nSbiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F102CF6496
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172755635357.29741.8857206010720415695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6acfd447b94b9c5ed47ba90f15e7d0c6bf9a9e77de1049855158dd9508589f3
Date: Sat, 28 Sep 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727556353
