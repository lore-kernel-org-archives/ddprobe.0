Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6805480C
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714004483; cv=none; b=YFVgaVcpidk9uzcQLsY7x1oZ9QVE9W5xP6Uy++DVIoAqi1+qg60/3uKF6qQzn8HYHUhSFv08/2RV2YzLSoJoeQQRaiNHt9pwEH9aiOIX6iftOJA7UW+Z2kDgpDWA2yZvwowvpgk4eLmqXcjBSqNNNVb0IkB/x2h8n9vhGWu2Fsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714004483; c=relaxed/simple;
	bh=fDyCXGjaldPec3z9gBH9DwnGMVBXK8b3ltdhd2idUos=;
	h=To:Subject:From:Message-Id:Date; b=C5jeLV1FtGYgDPSJDWmo7l3t4o8e5LlHYQaOwqRsdu4HtgUH8nVuYIxT3B42amcr7XS5xI3MBb6Gz4iUaMg6Db/uVtuz0e0zIg6auaL0dHlRfhzmUU55SCWpPZsx8plV/pJOlCHHYnOyQs7HpOgVjAlFYr1PRLYhXdtdCffyB1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTWZNE5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTWZNE5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8FCBC113CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714004482;
	bh=fDyCXGjaldPec3z9gBH9DwnGMVBXK8b3ltdhd2idUos=;
	h=To:Subject:From:Date:From;
	b=JTWZNE5WLZLfx9KqCxgmxJ4T1LXsJoAPdWS2pJrT5PCPumyxupJO1VLmwzl12t/+8
	 CPI6jJCAtL6RBOUfJsIf1VVwntjkh+dCdeVsopJaNwhDHWxlrOyYCZsPRcrmQz4J83
	 oWmxPyTbC/tmP72DvnrJWli8yNPpjHXTJBxeiet+oq9IOCCK3B2Kjwhw76p6VCqd4x
	 21bPuRcuiQ4jqA7TD2agMhIQgmRm3x9PpyXc/Wf8GjrfyStvhf6F9gWiYXN0CgtI8M
	 9iqDqMX+H52Oovxsvk5FE6zLwwNVXp72Tspb/ASj7W15JWh0VJiDDgf6V7EVuaYzlQ
	 q6lcP11UPY47g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8C5DC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171400448287.17578.11966819417882155309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef709fd747739c267b7749c98fd0d757f297d5ac9b3890da44cfa7f579692d0a
Date: Thu, 25 Apr 2024 00:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714004482
