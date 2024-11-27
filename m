Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201A217991
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732673154; cv=none; b=TL+jbW1QY4KqyQFhJutbysZevrNqvx7tKJS2uu/TqF/C42Kb2hchQGHLygW80bswfEzGHvjBt+iiqvk87cgpvA7JaXi2v27YQ6ZnpHiBcqKjV++pYXSZ7H8KI/hF3esj75C2jGfRUfEQBhVu4Wu0ZDZep4PaI7KqAGsmQfu3nRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732673154; c=relaxed/simple;
	bh=Snm9OFAEZuyom6UyuvOV9MI7r2hj3+Rm/4UYtH4P1F0=;
	h=To:Subject:From:Message-Id:Date; b=k07BeIGS6kH4DqDTPyCNcObW5h/EtjDJ1ZgJHPt+AXUTLWWadZdDDPr3pAYbQmavjX6raVI7Z/UIqzvUogjLXWzXQy/Aqfo5UZtyKSgdYgdfvlUhAJpLTz0kNG6SKOQdbkVQVXofRPcIRno1mr2y8oi6ooDq6nJg/zQOm2KC6Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzpG/Cve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzpG/Cve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABABC4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732673153;
	bh=Snm9OFAEZuyom6UyuvOV9MI7r2hj3+Rm/4UYtH4P1F0=;
	h=To:Subject:From:Date:From;
	b=MzpG/CvekzB2z289EK9miQcXTEupfj4wR3iq8onb82Ec1uYbqiqeMJ3ZP81I4ZpZx
	 AxhuqMBG3bV83ZhZQggVcSUFYR3D0SR5eG6rNUvAb3PBpWSCZwQ5HWAB58ms2PxwN4
	 dkVySDlXUh/YA6Wq/Tuy9g7DnFBgqP47E5Wb6RfvDyfK1XEyviD/zhtVCLhNOWNmto
	 xpjlCicjticeRJdVCA7PRweePl6UfzH36uonlwCQRM4CAQGxfwq4XTrnBxdGfN5cbg
	 hGdsP2FxuFJuBSYHzR3Ni4x2joYr1wZ6uneSh9NQnLr/L5/oDgNkWdYLHLdnO4H3B9
	 X06okbdyx5OWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9601BD66BAA
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267315360.25859.10938925889441672993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe30b95527f6ddb4762f1dc09a7748d388c1ce3cec4ea5194fdf1ed1dade2297
Date: Wed, 27 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732673153
