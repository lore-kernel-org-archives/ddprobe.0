Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB2319ADB0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738061154; cv=none; b=cb6VY7KNmUdvt8D8SoRU2X/0VFntY+eWElvTOmMIebwJoMcfZQ4elehK09DakkxR4kJAl3A1NcdKHRtD4zhQSHdCEzoX1JDs+rlaOTEfAsP69lW+EObWL3gahyjgspqod+vQdQDAw4OJUmc5pp1gMJMds2MAAbaMUscPTtsSsCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738061154; c=relaxed/simple;
	bh=zGQGD7SvYb313aAAC9BUxEcOPFjt9O4zABJOx6HSjzo=;
	h=To:Subject:From:Message-Id:Date; b=cV+bCSFv4HAbxpUhMLIzZ9XezumOaUwWcTdDn6Y6zA4yH3oriCTBodN8P4+fa3X16jV+rXKg3IfRtGs3fRtur+5ZWk/ggZUEZBM0aYjeEOo8vE6inqcLHB9YWw8gQHxcUU3oa9084KfTYzJdzCNgDf8+LUFbChfWcNKWCqR1Jos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0mvoddZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0mvoddZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B686CC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738061153;
	bh=zGQGD7SvYb313aAAC9BUxEcOPFjt9O4zABJOx6HSjzo=;
	h=To:Subject:From:Date:From;
	b=P0mvoddZGiZxziEwwgVdSeK1w6IDIjpXt+RTldE9XRnrw/dqT+N2po7L0aBdmIakc
	 PW5wlM7vVh4yxra3AgHQPdnQfk+b7MqsCldubUuASMPAbK2h/zy4QRufgO2eakrDB3
	 l/nMXJadRQFGGBRUkb4hHx89CHjnwaJH5j4NrnHIb7Z6n7F+bQUJ1XR3r7ag0Txpml
	 mTh9zw+ilap2MDGquosGQPEXNtu0j3dwShDA1h1fzDty7gscStsgIUG9nCbuSMKor5
	 GEGrfLclXaHmEUh4zRzZxHI9+W9WOEc6/bcmRp/i8FXKLLu6M0LEVQU7NfpGCXxhxO
	 /7W5VkIqBIpDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DED6C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173806115363.11353.5071778952581990560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f462057dd2733c5f5f36a0f7ee9cafef1ac7d1f957a441a790f4fd552162eb6
Date: Tue, 28 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738061153
