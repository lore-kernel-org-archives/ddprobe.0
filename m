Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8789710A01
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716786863; cv=none; b=iPGzpv+enoya1YEAE+h1u9Wo62lnhpOpHQz9mrnI6DLzlTAfopTOaJcKbW7Vntchp4mmXI+0zJxmST7P5ixPrC2cE6vhBAEc62QME3wft/It44/0w95uwUC4vTBWMtvWlA0oej1aVN6GvqK/6vZxgLVfjUy6ZXZlQL73qY1KGt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716786863; c=relaxed/simple;
	bh=Tezvy4Dg3I6P3VpmJbNvq9bsDUQcxjkI/MKVfziOXKk=;
	h=To:Subject:From:Message-Id:Date; b=haJp7TCe2nkWJRLV/5bb0nIgjEDU+q3f/RyjjzfvNEmRwZJazdKC22q8Q74oYbO7j2OnqAm7Lp8GETs860obrN75kphBbDGNaDgm4f/dmuUIcMn0sX8MNazbXLN3aCeceG9SPJTVKDb7XkHgzV+eAKglHzlLHZb9biufMhyZRGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOSKN8o2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOSKN8o2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F02F3C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716786863;
	bh=Tezvy4Dg3I6P3VpmJbNvq9bsDUQcxjkI/MKVfziOXKk=;
	h=To:Subject:From:Date:From;
	b=kOSKN8o2UJ8SQ+J8aDQ1skK6d35OkmpHV9C8Ows/tYYQtJ05WDSnqC/6Lvgv6iYbq
	 m3x5lXN6I2JBey0LzLYvJRUGOYzvwsbpOP1PYf2bf5G6V2m139zehs/xK+/npqu6bX
	 BllH2Rk18MV0fiDZhlr1fT4VAnaH8Etm31sq7SaFefBW42uhKtTl/zwG0J58FCexi1
	 hDo+o7T8f9KUs540rGVy+4j5Hy4+dhc/YTn06+4QCLAAKYDLJxDpim0T6i8AGTPx63
	 dQkLL4LyQidbPA7mjv7qwd8FJKqVIgahM1lFQil9aT+X2AZ0zVJOaPCxfEyXhfyfW4
	 xjplfy5c18SDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D57FCC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678686284.16122.12802381883379059899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7da3034dff4cc2bbba2c78d8baf3b76e591243746efd69550b8259ab591450
Date: Mon, 27 May 2024 05:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716786862
