Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEEB13790B
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788747634; cv=none; b=CoOY/8AoPpcm5m2NPOat0a11mbzalqVj3fdHtp2DGrvF3omZgFAriqSSWAa7oEajd/Xi8qfVctwsvBA3i5V2jzFrJ/otg5FrrPhyQZYPr/fzdENrgrbRcF9qUddjklEL2lmyMRUPhNpvj0AsVMlLMTyt4xp3/grNmdBYqId65Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788747634; c=relaxed/simple;
	bh=Q47AsbMHYISLcZktWS+J7aoPIWJUtKRmgonoUe+tH9Q=;
	h=To:Subject:From:Message-Id:Date; b=U/jLL2LoEHtWLJ+F3C8E/1HBSIPpK/gvKaYvtY9TdCpCdEDa35ObX0VumBkMBdF3yEwueQdcbXcKCZqeTRV0CXGqWLgtWvbR0wwouvw3SQR8IqapE/KDZA34aSrd4Gp0+LdVICTfncu33caysSfmV7iKKI5lr+d5xleHZP0EJpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z35yv5do; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z35yv5do"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD29C2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788747633;
	bh=Q47AsbMHYISLcZktWS+J7aoPIWJUtKRmgonoUe+tH9Q=;
	h=To:Subject:From:Date:From;
	b=Z35yv5dojeYJOtlCYHIDO4J9ytCJhmsjbXomWlg29QUGL6rsujNPS0d5F2YQ/eGid
	 jA+GBoyVRERwe10cZrj5/zztA1AL51DOUwxtOBMURRfcDrtsjZOCw6qCZg17oAMO7K
	 LAeoY0uJut2nD7jWiHnzh/av8AyAJKE8Vy/mIApbhHblhO60WW+jkhn4BK+Rm1ZeBH
	 j2rbjYZ3F12Cbo0O/TCS2av+GmXCzTg+rOzp3PRQeR8dSdhMwh6+L8+tnXmhjaGJXX
	 dKxeyi/4T1d+OhGcKNZk1ykGRJVrd2+k2wgnWkNbGaU10kmYnaTfFF6hCisZTBvZOU
	 TY089dgdgHEuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7472C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874763371.4314.1213355125830333736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44851a2f09b7b059d292587b05c6e821beb6c845c18373decdc189d49b4fa150
Date: Mon, 07 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788747633
