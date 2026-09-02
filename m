Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A925E35201C
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788325834; cv=none; b=QfFdgAdo/pDza2OhuroAz47IyXtPhiXlRC+2ZCWqRxPNWWsqkwMX1sinQIpaz4AoOI1z9vZSxhPtgz4JEhnoi8xqP0sUc8FjK2KFHnxDfRnJ276Pkfsqv4nlrdgmd5Rj3B2tMFKYJkS+c+N8BB/QJ+u0zPHzbLGXXwwYsTaK6qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788325834; c=relaxed/simple;
	bh=arwgy96Jd0FsofF/CTvcPOA26RQ1RfVTFVI0RmlrxGQ=;
	h=To:Subject:From:Message-Id:Date; b=nj3vupTI7TnA+bwc0S9r5QsWhGRtntiWTrDDhhuujlUttRlbQBgE09Ou4nC1PbGD5dI6mVy7J/11przFtM4kjQY0gButoueA636k7iP3idhVZOGuvf/9f6yMSapI2eXooEnfUg/axVc8Uo1LHgizW7sMGChS5Lg/NdlXfgeLHMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZWIbqkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZWIbqkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26D5C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788325833;
	bh=arwgy96Jd0FsofF/CTvcPOA26RQ1RfVTFVI0RmlrxGQ=;
	h=To:Subject:From:Date:From;
	b=FZWIbqkGTLl2GYeglgg+fC9NNQh/svAND3XPBYfbMdXeaSRCHdHg+IqUaA+aeV8Ih
	 61KD0oSbiCcJe4P7d1J/JIzP70u1vyG06VdPBFa5GvbnsWUZ2dpj8TRugyC9HGUnZJ
	 rKgcdLGYeeYfKY2Gs/eUTZTb3arIFT6IPfc/Jy/VSvQdtsrDn2FSf20v3z+vegA3Rd
	 ompOffpWr1sXxRy4xzQX1xcmfy5iM0RFuZTeTFDzGoAq5aBjY7GGQt6kTRoOI0c/CG
	 1shyMjBu/FDn4cAxnmdEQQu86bAFfjpGohrn1D9it6fH/0n/iDLdBHxsenwx+Qb09Q
	 6FkQ+ltJccNWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA54C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832583368.32622.6877659276563133432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4983655f1655b9e5510e641f605ee16ddd154dd3387a30baab09ab2ba137612f
Date: Wed, 02 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788325833
