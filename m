Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2D820C477
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775460934; cv=none; b=kOw2CQPH6KjsFa2L5U9K6F4nbQ/nsHg51G9Kh44FYRPh3XSidAn6naIn56Ka5a/T6B3UceW4i9Fw6tJU+1axOUfMtN8Y2WFJiZNvnhLuPSc3rER1R0DdoRznbTZl/tBaQbFUOs5CrRzs8VjxmqgxGGFcu5kzZd6KKsiYcVIPwQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775460934; c=relaxed/simple;
	bh=bKAvAXCfw8WdchGNZaPGzE5GDjtlPpqH0qzgMyDGWOg=;
	h=To:Subject:From:Message-Id:Date; b=bqWqGl2NLRy4qxxHn69StlMXZLjItxhD6if/d+Tl/rkOJVhEfo+bc6wXBxhOM68m1nsCUffE+pyB4ibCLR1nYB6qG1CfoMQUL9r+cn6g+Y3WNPHhehYqlSNQ5IiPIb1umEPvGVDSe31UXF8Vqqs/rXarDL44ocq9IoLRO3BrXPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsN9ADaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsN9ADaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9BFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775460933;
	bh=bKAvAXCfw8WdchGNZaPGzE5GDjtlPpqH0qzgMyDGWOg=;
	h=To:Subject:From:Date:From;
	b=GsN9ADaX6itGySGqZ+EbwocpOt2oJqC/CD21swEzCrmMVkk2trnFKQuSXHjuHBsMh
	 o6oT1h9p3BVsikvTDsj1kgXOEWCLFuXdqcTHpgn9N6ZeuxISsB5w3K9WZBASps5VEW
	 IKPOQhmm7ql4o/w5ibDLGbdyOa9NOhblrBJ/soMG+8YwGV6edRb88acBQZfHMQ9kxQ
	 gnPAaC0GteW0Y+Qm+DLzfQ3hL8NW49axgDdMpYcE94ochJLHC6wXKVIk8vguTL4LJG
	 YNavManuMcT4WWhHdJT+mt831J2wkm2dEPSioxKkZmfBqpm9MU4XMQFwb2+W5FY2r5
	 96SrxM4yjNxvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD869EF4EA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546093370.22400.2877123918421420922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2ac9ee355fe8e9c8ce534d655d71b50dd8bebb85e44c0d1f2c0fd2c5a09b22
Date: Mon, 06 Apr 2026 07:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775460933
