Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2793B1D6DBB
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736970954; cv=none; b=hNsxlCPoZECLusTuYa1IF8aArtkzKK0MyfVjTqZSuaOGq8ks/4cPytPB1NvqeahcfZyBDdVYe/CSCCZ1zu1uMogZg5tygLHKEN3vfKv8CN7lOUEz+tUX6hi4J33QtbBsBCJnMejN/0ZpXNC7jf0VVEjWGvs0qoIkkBIoR8l6BFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736970954; c=relaxed/simple;
	bh=bDla0zHU7mwmwscYdNbzpNg1VmgTWk8cFA5aujgZprI=;
	h=To:Subject:From:Message-Id:Date; b=knODLk37KFLTJPxc+Mr9sQClowATfu5Py84jMpZ2IAn0jsPDOnh0cEeeXN2fe93BkrYyclksNnVdDRYtpaGYsybem5ri4AhwyHsRDJQtuKhAC2jIVAj7ytvDD717St3Hlgazet9vcDTPdmKZDeKxvDMK3j8VD1UTqUJoMaH8Cvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cURUT492; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cURUT492"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE44FC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736970953;
	bh=bDla0zHU7mwmwscYdNbzpNg1VmgTWk8cFA5aujgZprI=;
	h=To:Subject:From:Date:From;
	b=cURUT492N0JT5oOo5E4824oYIFTNYmf1u1jWPqnvimg4VImXlVTUsZ/HpSh1BMXTN
	 dr70PfutARQnT6Eph2+HfX+eeQf73/dvIxID3P622gCwSz+tNT5sGcs5VF5+ZGcpa0
	 Y/ZbmyBQ7NoIcE4gxFYUTBqc3z2KWC+Bqxr7f3gl2o8E4y/n394mw+BRoZz7u5lhLU
	 PngkqKsKQBB1xDJROHppBAvCpD4nyh7n8K9iHpwr9804sYyFJfKzypeLg3f6t4wQx3
	 fkAYCHxXHDgXWYd1I7y2Kh9LEg9LCV9Zh8guykme9u/vRFso7jkbuibmE6idU5XGiT
	 wyC7666iF6NiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBC6C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697095363.27834.4072772128953199007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 870dcad66aba34b2b9f43a258383474b15bfdad0791bfcc4007138b7a3de58f1
Date: Wed, 15 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736970953
