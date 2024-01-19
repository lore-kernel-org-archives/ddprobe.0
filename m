Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0212537ED
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705675097; cv=none; b=chhUKxNkcbdP4gCMPCIx9hC39LWv65bBVl02LUvFYIdj7FitmSC7sYYzQtuM2jCHzPmGPJN/Gf+kL5XxzecssQ9Q4akEjR7a5v59/jTuE59LKbszC2bK1zrBbqYjRcWGWOMhsjkKY7yMASfNe9iVqo1SEOkgeg21dhO7HNr7u3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705675097; c=relaxed/simple;
	bh=HKJFuZ2KQUgYKXqTgIzPD2iSJRQG4chziJdSuRrxydc=;
	h=To:Subject:From:Message-Id:Date; b=F3GGTZP6VSidsK/6x4rqcSRC50YpFt/Te+/E2PwvkLtC9Z4DvxZrAIi4DOMaT5YY+fJCEU0eujZIkjBqZVJFqJWRY/6qrfhox3SChcm853E2rUoENSTOyFF3RR/znN/orMOAg0dGFAiTTD5t/5ShwgmCcvXWQptOvHZ57dE4kZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIUdtk4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIUdtk4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7622AC433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705675096;
	bh=HKJFuZ2KQUgYKXqTgIzPD2iSJRQG4chziJdSuRrxydc=;
	h=To:Subject:From:Date:From;
	b=cIUdtk4AjtqqrCAnCDNeotzo9CoJ0MqKa3rFMPdwT+QfZdEgvueGIUkUhsXLAVCSE
	 NaXlKxk3D03ZmJeA7SaEtykYW7vSHXbX5SK86hvFbLQhbOgQIvqq16lOS2F9A0OVoj
	 8RPxWWhz2b7lVvMXZv98SNjNgTB8lo4wFqP4UAevR+SVnzROUQ+5Iwy5d4gk4dDOfv
	 3s2QyTRT/VHlyzjHk7nXYjsTlGcke6Dx24sbt/dJFpb8xsgt25yNtXlymqBiZ4ZOcJ
	 oUFQHpZWMf6nQyc5nj2ljkM/BrmLTItPe2kiff9nMDPyw3Qlksk8T2+47Lmipt6Y0H
	 qbZAAjXsmhB+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC08C47DAF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170567509637.28476.16146638405554454037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7466d13d6552825ffa50438ae0927b18302c75bca94132c661733239870c8a4f
Date: Fri, 19 Jan 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705675096
