Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F32637DAD7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788638434; cv=none; b=VRC3sZSHm0Zwz1kEwSuBTB/L6Cs0hjH5/ITHy/+LuBWWtT1t8DdAeNA9e7MW4Ng/pD1DnNuLlWsNgPh8BHGLV0l0aBrsos4PFmWRKIxJhRpvd6/JcizVA7R5hUApiVsVCXog5iJ1XQLR+SOlp/Rc9uvEQj9+d846yYIlci7VZ28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788638434; c=relaxed/simple;
	bh=8W9/SQkd1fXpusL2NVPCibFFWo6ZupRk62dqrvE2iq8=;
	h=To:Subject:From:Message-Id:Date; b=B8mXbGLj32UX3CTxFsQFz15ZzKQqgzCbcvE663YpiKGEAW4HtGkmR7IdSCtADsJV9ej3tkLXQceWv7BpkPtPbm+3IKOCpZfEhOJS3WVSDuG/cknrJrYEeGwmIrkq0w6W0wvfD6oS48raBiotp6p8cboePMtaoqmCaOGB1zSFSo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw7rQVVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw7rQVVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD585C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788638433;
	bh=8W9/SQkd1fXpusL2NVPCibFFWo6ZupRk62dqrvE2iq8=;
	h=To:Subject:From:Date:From;
	b=gw7rQVVwxKpkTos2Xv2sxilyfo8Q7j+UE+XnzH1ScPmU5EXC9uOPE2vdWZ+2DMWVE
	 ROBE0rDyMWnWdIm2vuv0H9GzTk2IsVFuhqVvBPmK5XOhATYOG5OOCWyyubzrSKV4VA
	 JUhE3vgqGaE2tXa5IwMX4oIN+dYU2goa7K+xLzqOuOIzMHnNjRHiWp04Or0dJAwvoW
	 4gvXdTuM8xyxadYhqsx7svoVDcGJj/O6hys8J21/DpA4BxuX+b3L+mFR8+ov+vRIlr
	 XFe+MW4CxM4pCh6OVKuU2Lat0vjMnenr6ZVJqNnMYgyDJlmNk3pH7L3n8eCkaeVlKk
	 OKgzptD9ZzNow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1C1C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863843369.11840.5631437402880737889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71389a991f5495b44daa008b7fa005d9c3480f146fd510f917f72d527a39e8ff
Date: Sat, 05 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788638433
