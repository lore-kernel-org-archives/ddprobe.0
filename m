Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13DE2C9A
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745750393; cv=none; b=NYe3LC+WMsJsKOekCeeARR4+w41Ltuy5ZxHUmxNU3iycBhXLvWN/hVgQGP9dy3kzprLjv5bwb0g8+q2hWztsqn7hasY3aC3BRjGx6r1lsmJsUkoE/jSQQc4UAraftv1krWeL/Z3MiSvmERyLxl4e5dwUdb20gcjWz/+gL35JqCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745750393; c=relaxed/simple;
	bh=QFLXkaAtr5Rb942/QnbhvyBeCoXJTvoZ6CGBFDNPqf4=;
	h=To:Subject:From:Message-Id:Date; b=d2Uz+iV94557Ojnu0K6NtHbhS3VxDnblSt2+2gzqeyIn4yqgIH097OY9ImRO6DLUuN67rzD9RjK/g9uFx7Wkqmf5OxjG2djVgvte+IuT0ROJFLa+Jg6fCcu8jo654OlHlKIikpSDOAUaua6tCpmSJA6/S0k+Uv75Oc3WQqHydJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7I4zjAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7I4zjAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C35C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745750393;
	bh=QFLXkaAtr5Rb942/QnbhvyBeCoXJTvoZ6CGBFDNPqf4=;
	h=To:Subject:From:Date:From;
	b=t7I4zjAvFBfoagyCel1CnC7S8eoEDpIllHK1RiJxSXscgYh25+eeUfshWZdunaE7d
	 uPkprVecUOTd6D8Mfz6SFlNb6/m15yD9e+GODsIhn8DmEpMtdMfMI5l7nPdIX00CEX
	 u7/Tx2BdgW15s5ZGb3Z7XkPfEmIA+Ak8LbHtGuc4Rj9KHk+FXOdovR+4p7eZhshmoj
	 680I9fcu4YZRlmh2ZszRDwhff2b/4Ets6h1KccexXKdmkkR6i+tebxkqvRzlIsbjM/
	 sjQ3cFZK5z8Gn6gbR6BfqwE1BV2XrwNkY+LtxXLcjTHakxXazdOYvF0o6ODsuhRb5Y
	 cjWnu7+cD4i4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937BEC369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575039357.22115.17804905102625969644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561ae37e6ddf05cba7ffc6335d847bff9bbe67e70b724e9cb2a096a4d30f88b8
Date: Sun, 27 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745750393
