Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB027602D
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741509535; cv=none; b=G+m0PvwPu/ulFq2XYnZNAX2B81kohsZXSydUZzrS/6kxXIXjUXpy4zkpBpPuuCexZJkDIrBa4SpD4H6L8MPQd2GPQVRjzUDqa8n+t7r4yXTjgW1HVMyxVrJqZW4KxQZiwiPU4z2f4DcwMaSY45CZN3ktRx/a5zw6lDgh3r1rVzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741509535; c=relaxed/simple;
	bh=4WHINa3Jnr+Zel1rr/ieAc1axS9flcCl5DQdfEptfss=;
	h=To:Subject:From:Message-Id:Date; b=s/HSONo97E8lfpt5liXYncNcLVIm10RaCyi/1K9dxqutYxUQAgpw0TDmdDWMl7GXK5XtIRCluIFJ20cCFOtipu16qrT7CBnsltyNuBuMDQKoDjFtgGIzAkLTca7IKa1nJruZehwWksivBwNp4C28T+98bkfw7aigvzURTokQnCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPfmbp7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPfmbp7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77FDC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741509533;
	bh=4WHINa3Jnr+Zel1rr/ieAc1axS9flcCl5DQdfEptfss=;
	h=To:Subject:From:Date:From;
	b=SPfmbp7YSQsRBS0z+Y4cxz0jXksbbEaM5CiP3M5qan37oX86nQvCb6QM/dsLkcl+o
	 zIBfO/KNh2XErLO0oR4Bg1PK7a/FXu6I3zI7VLojjJm6OzGIFMGNgpfAAF8jtEnEAF
	 r/Mi944daKn59I0QIVKF9gOG7iM4j0ptwRTxDKO26RAhqhAY9m79zaFPXjffDMUfKU
	 eRDt+R5EkTMHJUJJDl6542yfcThnV/ry489oUZDyMkLGLOhh6DvJQR9ijfMNbhJ/pc
	 YVT6v2yoOaCg2KrHdo87hH3SDdKbCTaTULPRIPnFKX18FOEJSJ3rp5dd7+9yzM9pn1
	 nHZ7t1ALHHnYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A274BC282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174150953364.26009.18168275742263760018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e448cacfbd861c9ed7f28e91b551901d65b13e5de34d8327b11b30edc6202e59
Date: Sun, 09 Mar 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741509533
