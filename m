Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBBA2C1A2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744984194; cv=none; b=YhiwSE/OBPmSCDXW1SiVF6faMjHk7G42b1mPg3ONLmsWGRvYNFMOnusd+MCftIR+h46AdVv/fJINT+cXXw8y8OGzJTfgd2k595v6BHu57JPZT+zXepzMt8VzUeWQlrwzqemv6jcFTVTUsgS2h5FE46EpUUcbAiWmu9txw5YFi3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744984194; c=relaxed/simple;
	bh=573jyCALvz9M4gpIip0jDvHjnbsB2CNOGKEM+7uzpvA=;
	h=To:Subject:From:Message-Id:Date; b=tRAyshRBW20RrQo14ycn8f6IKdn2H5nzNpu6PkdndkzXWYqETJ7puqemFzXa8uU2HOm6cOMXv6YAjRjwxcRmanmkJo5IxavwJ5Gw4SOZpqLYBYUDZsnmtHRWLwPcEGQgIka9Wfw1MKvEnt3/cOObSQVcEOeMcMj60nhDr+BUtEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CevnGb3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CevnGb3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C81C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744984193;
	bh=573jyCALvz9M4gpIip0jDvHjnbsB2CNOGKEM+7uzpvA=;
	h=To:Subject:From:Date:From;
	b=CevnGb3KcTX+pYwDDkA9J9w+r9HHVLcQ33bPW9f4+2EX+mXTBF+FRsULjqsIN7VEK
	 8LQloniq7RZ98DXgTcmIDdZFIgune2u0kT9PCyx090Mj5CTtTGQzI7pI0Q0GzO3G3z
	 XnphfNKoaIiQ31eKNblmBomB9fK9W7+X0tDoXdDjNxeHuE+/9MWrsEZ++aPCtRb6z6
	 JlS1TSKX0kXto4AWTakbW8bZKEbuxJ591bilYnWBIl6+fXcj3q4wmVLM25dAGy6nVY
	 i6kewiS2oXawNuMIYnWnmcqEpKCDxq1uC/xJZgxA2CXDEP9fzPsi4+RiGi1eBG3umc
	 VdTqfiyDpZbyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9205AC369CA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498419358.19118.10309798196169722413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7feac65342798e1b09614e7de2e9ac8859b4eaf91a6924c6a99eb3c1255528
Date: Fri, 18 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744984193
