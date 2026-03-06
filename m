Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1002B37269B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772781894; cv=none; b=hFGywgIHiDJjsNEnCSfim9KowcvHe752khMio7339M6vMs0XXZpX8nAcgmhsToKlCj3EVMRQLxms8hVeB/HF/FR3MRUWxtRSNgWk90xvfttDwYFGQA3OnBG/9QsYziIwWHMDe6AyneQ+zSGvAoJBTbLNUATkglWqtvYZcAI42Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772781894; c=relaxed/simple;
	bh=XoRWWWAfYdeXvcfonAU2u7x8tY/aWj0xggylfx6iMl8=;
	h=To:Subject:From:Message-Id:Date; b=nII+95XxhQe7W3YgIjW3RgTsX4ud8CDLWutAo2doqcIqRfReQEhYpC2K1L9mNu+VmBoONC8nDvbDEvDOl6p8PWYOGOYGji3jfo3Ydf0g6ncJu62gbHA0bgYA+6FYwLk9vsLZQc1OXKNXnmdF/OBnoeb5oYwA9IgPptvh7x/sdTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orlHwbVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orlHwbVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E62AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772781893;
	bh=XoRWWWAfYdeXvcfonAU2u7x8tY/aWj0xggylfx6iMl8=;
	h=To:Subject:From:Date:From;
	b=orlHwbVrdaSha6n8xalcBJ33rCabQryVa7QRWpcbJvbTh8cpvbXMvbm4z2/d8mmWF
	 HFOIB9QqOwERsHlOvPpAoXtwNDzv7F2lQvhKpWy/CNLXynWPQEDNUZnGi0snuWF+LQ
	 7q+d0RzB8qpmGGRPbB/gLpy8AEZa2CMuWGyuP+tVyRzEgy7m+aJ4RfHo60pv4xs8tp
	 0UBlYPX+Hrc5bDcJx8ijh1z43OlHrpXiIcw1tCA0lUDWu6q3y/i85UlQGyzrn6SrgU
	 whlyUS+9t8l9bjiJ14+CtwI1kMf1L1Y8AqigP7f7fN9Zgv3Cob18H4j9BVjG53nbtL
	 gcbnjbYJtkAVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB02F01804
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278189358.15555.8462217123267371214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d41919691513866faf0be60df449bcd6771e0ba8dfa11b137e72a1621769bd
Date: Fri, 06 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772781893
