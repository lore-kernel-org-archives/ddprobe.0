Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228FC18654
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727565954; cv=none; b=mXc54XihY+j5TUShZeJls32Vh+ob39MnSlqT8AB9aXjpDC1X5GEQvLBCQq0z8zxXtAzbp6q7PJdm/RsgjLHgEqqF4/N4gxDDSZGyhV4ShruKas0434VBuK1qhG6O/iI7vie+9Cj9F6YVcwph9K8IEtB9o+C79cC3GXikbUWZHLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727565954; c=relaxed/simple;
	bh=f5J55otR8zaeWgNyRm9VhYaV+AnJ1QPhMypqnPIE8CQ=;
	h=To:Subject:From:Message-Id:Date; b=nvXwPJjUAbdtXMJbsvmsrLKIC0hm7+USHH0BKuTng+EzgbcdCvSO+k2c92E3z3UbDChV+QcD7Wt/z1DgwsUdZZMpsWybjE6/vH3UX78iSH7Ra0XSi6rOUd192tEuUL7kfoGzIf4ZzARw3DJyYcVwV0i7y+zKFaSGHzajFp8DOEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgiXYa/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgiXYa/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A688EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727565953;
	bh=f5J55otR8zaeWgNyRm9VhYaV+AnJ1QPhMypqnPIE8CQ=;
	h=To:Subject:From:Date:From;
	b=MgiXYa/me+c9NEvMkKwvfqfCIzm4m2eUiqXpMnbiAZKCs5BTGw/7UAQ9JA7WnEihq
	 Kj2obUlRmsSeamXIGXu+2GMlY0jNOL9oywlU9hvINvVNWsUu/h4BDhlu8UMnh+iNg3
	 C16+GD+VellfwnStIbNuC8jzLfvYh8nnvKCNOmt2Qz1k/Kg9rJzCv28tbKqeJaxWwi
	 iBT7BOA8sFlLgYA7sX4k4xQGoCo+Vldfot/SrCn5LIt3ODlKj310Eey5/mGk83SvtQ
	 F1qmYtltMlJ8a2B1e3/bHb0wSWFsgmDr4pL+QDKaWHO3R2NWdyW880ZYDZ9b+NiTyU
	 5lUhAwNnGVMjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F096CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756595357.19439.15494605331249804367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84bcffacb9165bd5aa7b4de51b5c68e5af9728c01384b11fb71d8b859676170
Date: Sat, 28 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727565953
