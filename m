Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E281276038
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759989594; cv=none; b=kgKhiirycFzcEzS7cVrW+M1IcmTLYKTlFNp4J1Eo/qp3znTOC5zVVJhUb4+HGpfcWxrar+dzp7ana6Awj8+a2JpThKf5CMAKphL35i7tW3CzwwLUnk1kj9C14FcW9j13b6FcfeE+T60dL3DuRpSpoUoSzMOhhVVjotwZlM2Vca8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759989594; c=relaxed/simple;
	bh=mT5/l6XGgkUXHNOuIoXEJraU+gNDeKWbVj7prdpJXKg=;
	h=To:Subject:From:Message-Id:Date; b=bNYWoo6hoQ8K3YjAjhIXAsXFus5uIFMeQaxAxFt8DVrP/j3AbGWBB1kiGbAh2JV4RtuOZUwI88XTlroaw52049zwi3JALp6Cpr7li6s3RxuecS85IOIwnBXx5wl5QifSxb3qtFRdgfK/xb3adSMCCXYhjvX9M0GE4LRGJoxekS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkdsRoRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkdsRoRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA6DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759989593;
	bh=mT5/l6XGgkUXHNOuIoXEJraU+gNDeKWbVj7prdpJXKg=;
	h=To:Subject:From:Date:From;
	b=hkdsRoRs415fcv89nYmhUNu0vI+a2tO6pggEKpCV/YLs8O49RHvxEQG5lB8br8thp
	 u73SKgZM6jVWnRnmqja5hDaIb6zTZ0ftrEFprDGEyDmCw5RAdbZ8mxtLqJ27rXnG3Z
	 g/VDdcuqJIj4jyBPBCqFA3+3wcxQEt2MqNUKgvCipl3QEkIoaReBuzx4oZ75gjLbaM
	 Hmy0pYTHYPRCwgRSJIfAuFEpNNc57y48BB7P6maCRI0N1v1SnDqBWbqHJpVUsVUWks
	 ozlrt78rtXfKThx/C7O23fWJwce1Myebar0zs59FXqoq1pTIf3PJPgEtLrwKpKzhny
	 Uno8Mb8M/uUTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E52ECCA471
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998959361.13910.14392849115563874681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc57b07b586aef384b2903131ba4430b6d00a849970e64f56521e5bf05166d83
Date: Thu, 09 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759989593
