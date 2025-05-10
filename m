Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A643243370
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746880194; cv=none; b=MyJ8IaR2TmeKoijuPt21NsxmkZkQWCYpps7JsNiBx233T3Aqu1pLh73qrcFAs8qUpcJS7r7rQFZBiEe7CWa9f+NP7TPt4/FG7pJscpWM+yh3bHJGb6Jxytx3gnvZerPbo8owFKU9gXdJ1WjpzMPrGuIoNAddYd4n5iXhQc/wJdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746880194; c=relaxed/simple;
	bh=PGCgtkdP4KBehLWib3aW54m5r2HZWh/Ol7aSJMxTpgw=;
	h=To:Subject:From:Message-Id:Date; b=QotrvrXyyMZCreWpJcnaypWCTdtmMXvuH3FT7qgaGfXl1IOHG2tQum0w5kfGXQxo7ZdeB2sOEN4VTjes0YPT+LTthUMlr9zcLjF59353UgOnCe48+4tZbdNiGP8hpeouTw301OqNtPcQ0Oq5SJzVo7UrtFAh1gRdBOfxyEVeM3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doJmDNuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doJmDNuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A8DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746880193;
	bh=PGCgtkdP4KBehLWib3aW54m5r2HZWh/Ol7aSJMxTpgw=;
	h=To:Subject:From:Date:From;
	b=doJmDNuBpnT33V9eA79bR1uekiOvuFZjIpM7Q23crPG/4/SQw7VCYBmZnp3e/b4lO
	 loYfkJMUPsSLCzrKVPlD6UrgkOXqgTD24IltkMfwc4SxCs7MAaeVjm/nM5OzGm0x7K
	 vs3Mj7HFuu8QlkJXj5l8ZlVMI6bblAuOQ86XhL3ZI1BvnruesJjI6TUT3wvQ9ko4N8
	 HMUe76/mEovq/7WFa7uMwW4nDUekQ8xmrypSpV2GLGzhFmgpvamw6Eee/O7KGfORsv
	 U0fVaZB0m7im6kGgJNiaqy+SIS1MLq0NQW0p/9I/1BxIzsQ/K0vgc9WoPX7O+AZe19
	 drPJrEJyxUOKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FEDC3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688019357.29109.7802830180808739541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb521d43e3223730b7fc7fd85e675cbafb4a39ed55b4686bd93ed331a2f81d6
Date: Sat, 10 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746880193
