Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B216F7E783
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 16:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713544823; cv=none; b=KG9MvtuN+30pHEokWLKHj3bisTsDzIY+6sOKUrA8yY2GU0lqgFuebm2iLkqYGuIdELn3QsT0TIvRqYKZB39ICSiJGhnPUrqn1WreuT2j7b+/Vssbyv2FKz2Vby4rLYCqY3k0fapcJwLDHByCKIPaYx8WKBec5CRcnUd9UEs+TiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713544823; c=relaxed/simple;
	bh=OhnEBGxXY/Cjnh1KwiVEFUqUZr228G0o0pZCs0KRyQA=;
	h=To:Subject:From:Message-Id:Date; b=KhqvjoZFl0EBP+OHbCImx6nhjQoZknSbqe4jPFi/J8sQrbFDfDDLvJ0VvdQM8SJQ8CrTfKyYAVCcSpHQf04gNuq1uEWvheKDzZKbjhknXO5Cgp0UleBFPIuUFRVyAgch0MXzCruzcwIG/2hpHS6CWH5LpvGmmZJsum4YH6IQ68Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duY9Qz5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duY9Qz5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 44279C3277B
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 16:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713544823;
	bh=OhnEBGxXY/Cjnh1KwiVEFUqUZr228G0o0pZCs0KRyQA=;
	h=To:Subject:From:Date:From;
	b=duY9Qz5V9T0u9v29QNSL+kgmVzCdmM7h6rVoTeFsBLwVXj741Z0hruSIWrqjCKB8h
	 apsQFtxB+fuI8MGt5iHxb1/rcPkPW5ADf09XHLEsIg81E4Het41/csdwLFVfGaGd4n
	 dlfYQOLylF6DrF+Xh7jCr7QR5TLYI6wpGaJRj5ltlsli9DxlzrxVNQIb6SZqYYWD9B
	 Qou1M8OQ9vjFBFP7bMabEibISg0Rvyqje/IEvkGp5b8DNNdMXY4WJKWKVATgqCB9KF
	 kLQZvErJ67NJptvODF6Xj37XT5PaspERo3xLQvhH8SKaa+rSL7hGP4S0tX1o8vO957
	 devZspQrPClnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07A2EC04FF6
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 16:40:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171354482299.14297.12820786146216566738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47c50411815a7bd51f6d55845b61115e92e97472a91d5636fe4a00ae98c53a1
Date: Fri, 19 Apr 2024 16:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713544822
