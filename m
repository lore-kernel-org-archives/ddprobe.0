Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C964A17E0
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733529953; cv=none; b=UJ4kyrpUdK50dQpBK54bTrwPbI8+qII8r6h1xtlQ3lOCyOGCIjr1cAtfiz8PkUzYDCEmRYVGkZrkv+fZJJM+/luj48wfrUGFSKeJ6AzAH3Vu9owHdqYlFH1QXUcbA3k3TtgfB9Xd26wnzycjd7Aqf/Fk8pCYDw/YcS5nDWFuoaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733529953; c=relaxed/simple;
	bh=DUykfvs5lbkKDNlSlrcC8372Zu4Grd8jJsjNAF4iY1I=;
	h=To:Subject:From:Message-Id:Date; b=OUvDiDSqkjTSj/RFTDrSTn/ZdDKv1/vBtB/4mpF0TMxrgTQ0N7ri2l9dBDwiEZdPJsemf+iEZ/1T7pGqoBhe7ByhX02DdQf1MRdLc6LWfrHRLmLoPH0XsbquZ4O1n9a0grHzzidjamFKxEXRL1Dl+ohgtnHO69dFsdpfdhhIkYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i46bYY+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i46bYY+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D0BC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733529953;
	bh=DUykfvs5lbkKDNlSlrcC8372Zu4Grd8jJsjNAF4iY1I=;
	h=To:Subject:From:Date:From;
	b=i46bYY+7FXXj+wBXwtHGTXZvFRWoJOMAL0b6ROcxoULbYfjNr6jKawFEsAI+rP5Eo
	 8wdt7sz1wbD11iZLvD6G/RDvc+FmA6oCANllZQ1aAmhJ8oFMQ/WrUXt/Z9+fN+QWIq
	 Sj50TpSJG94hgOUY09f/Nogr+2pc7Pdnrvh0pqvdVnR8WcCjZQj5psiWkDXBvPM6Cu
	 OYl/OckbliuSBf6zM3WfQWWpZ7FdRHBQlWEK5M3epXx3V/la8Tas5u3Skdl8PSHaSG
	 YYGGHOj/Vraocjpb5W4txJMhUAKbTdUF1bbt+8wN7S5uhxWURxfV2whlJ9YSBl3gPd
	 L2pwgiDsY5jyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973D4E77173
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352995359.32003.11355137152296478337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efce10be0d8123ba792453c0501803cbe6915a9c433465fd6c009548051f5f6
Date: Sat, 07 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733529953
