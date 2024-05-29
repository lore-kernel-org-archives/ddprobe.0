Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9A615B122
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 03:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716953063; cv=none; b=npbI0ThnJ2JMIgcV0vwWzBYwaZxGYhE/imHC474z9GKeWkZ7GeB35RhAd5yR4xDEtqHehHgJurohqQwdrEy7bcEvI+TXp8nGbdfngEZ5EoKHu25wUlSrVsg/z/uixY2K5DHpb59tv/M8mqRo0udhhrwVIYTj+eIJaPu3dzyrPZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716953063; c=relaxed/simple;
	bh=Zfqo1ECudpH/EmnMFKzHE+zA8rhdMiQG1JnUMXON8dE=;
	h=To:Subject:From:Message-Id:Date; b=QiwVpdsvvu1GnRGMeyxp6Bomzb8vyC9UN0+5/GCF6EHgDe/SWIsBkVWQYr6phmw7GblA5663pe8O/0/kZkDZoALnrJu3KSvILW1gRDpD8FCBRS/w4uJuOqJte+XryKOAgpyimWNyM8ocNj9cNnqe9QyIGDi6dVFZApa62G7UHcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlgJZws3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlgJZws3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1349C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 03:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716953062;
	bh=Zfqo1ECudpH/EmnMFKzHE+zA8rhdMiQG1JnUMXON8dE=;
	h=To:Subject:From:Date:From;
	b=BlgJZws30H52pb/M7610wOYgR41H1zP0GC3lNxF4rv4UqQpAfeOve7HGu2i/PHB+L
	 EMKO0EhZbz0FQqbCpIDJp/2Iw9s+Ss1xxrS/mu+DDLSDkEaWGCOFOO+2rjdqNFMKqO
	 JLlXAIhzJECDBahB0BLGEfB714ia+8lPZ2PkYVPw5saDV6HnSQbGsY1XAg6fyjnmFE
	 i70zKOL9K2EfBZ4hjMW5MSokJiSYu/ea9zCsO/22f+//4VUxwmbHuUQI00kBhydE2b
	 tMEY0KTy0Vpem6AEE9qxHKbFyl3QpDfemF1g3dYr4XMx358g0I//3+djlE3DDsbK8m
	 hshlrIgUGwxGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A9AC25B7C
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 03:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171695306278.2248.10952443699218609775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a08f470c3cb0cafd2d1030df5a4e93f63a2886862e2ec4857cb7765f6bab729
Date: Wed, 29 May 2024 03:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716953062
