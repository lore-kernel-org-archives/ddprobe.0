Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF751C0DF8
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722588354; cv=none; b=q2L5Kfwni9fK7Neq3ZIAnOWxiVX2BTdweW8iKBM/Nfo6ohPfrGD9fw3FaWRFpDTyBNodZ9akaI4cAq/LG11LxLNSPMLVMK6XVyI1qY0j1axowcIEmos5KjLtl7kyColfa6T8MD1ZxsxqTqo+8yx2tA7PCsi+ZCYHD9r3nAFrdIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722588354; c=relaxed/simple;
	bh=DAM7rLa3bn4JUQP+CSkcqJV6FopDbbrT/II0z3U1FVU=;
	h=To:Subject:From:Message-Id:Date; b=KpHjd048UtRvr8ZFVCdNtDF8RfimRGZJrpHfe1qLWZnyCjoaAcycHwuRD9Pb0GeVg9c0Xm6zT+DtmNvmGjbQGdJz7IydrSDQiG4QqzF1qb+5e+6gdnDMXlBsNCkKHOYjJXw2g4E7ym3NvsfhAYBBvJhMa1AWtKlcdSmoEhRmQ2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoS9niG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoS9niG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD36C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722588353;
	bh=DAM7rLa3bn4JUQP+CSkcqJV6FopDbbrT/II0z3U1FVU=;
	h=To:Subject:From:Date:From;
	b=uoS9niG6qUaXGL0SH1oFpcmHS8AyqYXD0Sbj36pzo3h5wbRqvBHz/ec1+g5RA4hn6
	 45I6IkFpLxbj/gHXaIK2YIywJr19dw+DQAFHnCdjadl47YTTHb4nmi5WBTWxsgZ/0j
	 We4lNC8LD3HuRIyCSjZzXww8AbumTdnZOdNK3+45wdZKNtY3uqtvLkP+Ma6z0HLM1K
	 KAT793vVbU96tdXlhUBSj5+IOePTMNZ+BvitqaFy0q3IJoxNOlDk0GScSaUSBIffx0
	 NRCI0fxkdpLTfh7s+2i/GxIk9JYnw8ieSHfE18O3El9kQbatGqIHVCJX1jDc7VFDxl
	 sPJdWr2r587Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B220C3DA49
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172258835361.6309.9022513419821286081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72db961fabfef5842755b5e6aea18541835f2d8105688a59ffec402490aa4408
Date: Fri, 02 Aug 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722588353
