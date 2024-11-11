Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F24A4C66
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731290154; cv=none; b=oXnB6AxrKZ/t6heW4n9HmFxwDsZv4q4slNXucj6AQMYKzvTEegc0aDM0GMMulCe54m1YYhMTPTnHUxRLogO6C17dOFQkAiyopes6upWLtbLp0kqhSZfW6KdYx5h2+rfLIGoO9mjBHTNTVV3rS8y36MC7s9xnGGEL5g/PTaz7pi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731290154; c=relaxed/simple;
	bh=jfwaJgpkwO1qvdVgN3Y429AIUGPD6T9y47E3TqMk/oM=;
	h=To:Subject:From:Message-Id:Date; b=eUROakVnS3cFHSwTmvePz1jN2XVE32qm7aL69GFuKLo1b3jAyx0BWDqwY8uq8JSZ7X4htudvDP0KgNUSeGDuOtHwuslZrVhFGG9Oa9y1urpS4yXm6auOSiutkO8U9fACU3r1BSqgIkfBtER7bzhGk6jikts4Nl+8DUH7xHwRtwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0pwA274; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0pwA274"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E0DC4CECD
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731290153;
	bh=jfwaJgpkwO1qvdVgN3Y429AIUGPD6T9y47E3TqMk/oM=;
	h=To:Subject:From:Date:From;
	b=f0pwA2743b0Xm4BbFaKbXmb1MFLCRtP2ZJIKx9pQIb3BjDkAFhi6lVkStosxjXYv4
	 WK6PRHGmKPAFiv41IPFcqNJkyl3uLxG/y7vrSxuV1Iwr5b7cC8+DaWfrXdRdGxR4OV
	 9QO08DpaBAd34twlXRpDFx6io0Q5YwJ6W5wyV4qh4SYPlKAF/QEYt91awnIty3MeC8
	 zaDH8Pp83QbT8yY0uSo1nEGMylTU0cQq1a8fhKWMyWmiPGmSnqYl5TvtSBBqYJ0Vod
	 7Rd2xrGYzoaIZ/+KYQs70lPaL4lo5gmN9o0mXKfBS52t1IlrqIxXDXSyog8XY9WCUd
	 ctxfTQLryYf6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F62D12D5E
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173129015359.6124.3197280210082982771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e7112d04dbfad582684105401ac8f41d0afa6226cede4881fb27808fa798e7
Date: Mon, 11 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731290153
