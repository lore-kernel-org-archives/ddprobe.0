Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D772E2DFE
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762349994; cv=none; b=lZBFnyBdARr/raV9TG0+FTth54s6rwGOsmW2uVXBD3FG7KbFTqxnPTXqan6fSIdZUFuCS/F/hstd4C3eSAE5KBENrAZYQbbbPDc6MoqT8xGIwamGAfR9tWbGRsTMUfA0JGXB/px1ZRHemi8NYIBqJl1038oljGAflkn2IdGTWEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762349994; c=relaxed/simple;
	bh=a6f1Q+zFfsflZNDIxSDv6ifEA1iYZqdDR2dukvtT5nw=;
	h=To:Subject:From:Message-Id:Date; b=ujC0zghP1UzHoImKQc36AdqIAbxkxFRhojZLYHOxsHAWrzbcl8cPKQ1so/CdJ3bRQpiAcfTxy+STYLr2WaWPlzkF8Cg4zT35IG2ePpqFYlU9DQfa51bq5csRQjl+LttNPyU2nNAU2xE0FJs29aLfPTFs54/cGRAeE1gkqeSot+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKHaWwNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKHaWwNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D959C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762349993;
	bh=a6f1Q+zFfsflZNDIxSDv6ifEA1iYZqdDR2dukvtT5nw=;
	h=To:Subject:From:Date:From;
	b=AKHaWwNjEff5ZRxZ34kwKrxz602+DyZu/1w4tiiW+OU3HI6CYYFhXzeIYuYL8j1g6
	 ++bANDukLDCimPL0X8RzhRQ5QuJlzwcD49lhYOAbH9joSZs2Rq6YSyJft6ROKYXDr/
	 Y81oH6pwyh7Xny0H2TA7zGcWILCY4n0QYQ8aI+0xZNdcvk3GL7HS6ZM5PMPUhko3uX
	 qOikgvLsKmZ4V/8srKyb66z9+k4pnvvompJ6JoY3WVqTv45LxXARmsBwjx2SZK+Wes
	 tziyfniPyuPI8HnlwcR6Qs6hcpyUdgIW9sf5/eRJ22HXFALKVuapJ3sIR6ZYTVwuXe
	 GB4M7R0E4u7Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C33CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234999358.23143.14840565510803341819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb83e43fa61ef15003977dac255892e05b88151abc5434725ee28d658131b9e
Date: Wed, 05 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762349993
