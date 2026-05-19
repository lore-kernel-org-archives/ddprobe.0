Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB653BB9F3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779225034; cv=none; b=hGzb4aNgO/Rmn+4Ke6kqRxB574ZwEx2hyqgVjJVp7U+PokA82jy4qSY53y/FJHI03MFHw1hNBuvzW15wjuFC60r0mf1ZAmOdKYgFsm7EEtWujgB/OEWCyuQqZ2DTWlobsxceq1FBd/hu5KPfLr+2794ptm9xtxdaWlyllij1sPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779225034; c=relaxed/simple;
	bh=LJZ+Z/bh4wusw/wSJ/4ryBPfimhTa5Swd6BH29c8Eac=;
	h=To:Subject:From:Message-Id:Date; b=t4JkWOZ9kyQZK9ZNo8u9tGD3X8hy30ORo+uW6TBmnvG5Gx6xmDOPMp1g3mFuvzivF/pNUk9Mw9oxT0IwtHWnlkaLN6p7kIFzjHak44qPtl+jiUcZsSrEgoQn+hbVU78fbsN+RPjENlSA8Er+J1sZyiT+QildkAxp+tEJ/E4jbwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWKGshi4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWKGshi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EE2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779225033;
	bh=LJZ+Z/bh4wusw/wSJ/4ryBPfimhTa5Swd6BH29c8Eac=;
	h=To:Subject:From:Date:From;
	b=fWKGshi4RqL28FH61/UdadTr6vKC8A80ZB/RjvU9W03uPpr58tYO5LJ16kCGwbhyT
	 zHR0IFcrgGVSZKKBJc4htFocrmqZHqc3T3WoYSgmlhASg2kVGXyS8KMfKPH+SLOzCT
	 jt0khjXWWTIF2U7FBbUV2qewuEGmVEJl+uQK7LXvxFuvAUh72uhGusdd3oAGabhudR
	 FJTgZNAW4W8FGIgxY+BBFCrNmemSVkQ2a61Hwu/A+QdytUN9YZsrDdve1R3Zm3GeFN
	 g2mdmJHeIcCyOWgbFJ4PM6iWb6GdTsfHYY8Dsy+B/M627KQtzPoUnzt36rDvHzHkC2
	 aiz871KV7+z6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB20CCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922503369.26472.290768417453721339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c456edf7a2b3fe3532d078e1255d83f639707c10f6547d42cea16a75f9f62e
Date: Tue, 19 May 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779225033
