Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E9D1865E9
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732695354; cv=none; b=Wu9yEIPH8wvn629gTdg8a0qvi0q7Jra574KWXPn7eS9a7rEysZR5GgpRdIPnep5j7n42DOhFRXzt7jfVhjpX7NXE36agqr55ApFz8mXUZiCqlUFUuE9H8yVLHFHo5aotuzJCwe6R433MBugBSzdhfXyksQvnnilMC3nvwjyv4qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732695354; c=relaxed/simple;
	bh=Y8xLGlNKvuxkx6y/2ZHZbbD1PwVWqoLRnOOf4lZZ4j8=;
	h=To:Subject:From:Message-Id:Date; b=bRvQuXKMID29dpqpF2XnJier6viaMOvUEauZGp+KZOytaeUEJ+vbXwLcrhBxDwsPqsLMEF8qT/O2+iHhfJL1/trSq3iNBAiorJBvpG6domZW6FJKeUzI61jeNn7yk+ML22ybf77HaIKEEwdkjnGvjRDcyXUmhcrOupqIYqTOOIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRfCWu33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRfCWu33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74C3C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732695353;
	bh=Y8xLGlNKvuxkx6y/2ZHZbbD1PwVWqoLRnOOf4lZZ4j8=;
	h=To:Subject:From:Date:From;
	b=rRfCWu33TXn3Lon+Fci377p6NdsE9rBzEjCQQXTfXMUTcLTTGtDMTLHmIp9gcF3W0
	 WGR7PWTTHBIYwB+I7x+DpuUtEDTqfIn2TcTn7LRB984JJ/4Y0NAKTBZqgOj9TK8Q41
	 huTO6rMUobHGkT/SLbU/8ojMFSdwg/J8kyxjBGUffNqxoLY2m6jqdJS0txhnO0cKuh
	 x+f2xkL1y7+rxsA5PgjDFYEzuLLM2NVNgKXGP+mYccov8NkTRTV7HGe4jcodufxzWO
	 ocMviz+wRniBQnlKrCWS5XPzNKLxjM66AMqXaTTjJNZUQnIHznG5+2lNIwu8vJhfaN
	 Rgyh56bJSCN4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BF9D609A7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269535358.11669.6795444650690565327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1228bb2396809486c3ac83864d344ca94682965f7b67f83a4dbcd34acf65e981
Date: Wed, 27 Nov 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732695353
