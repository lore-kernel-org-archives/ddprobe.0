Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9643033CA
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770317034; cv=none; b=iBUvIkN+fhuy40AQjroOSSIAIneoTJBMi0SD+HPT4Hg/sRA+snvZMYXG9LZpFDENVKZ67RS0aPcmoOlLK/uvAsYxE8KorqueScpQ74d8i8ktNE9hGlY3DakarP98Q6qn+WKzb6AjD2JFagSMBOIw7jLY2QABErGOeBGZmORtUas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770317034; c=relaxed/simple;
	bh=kFtuivboBh67kInViCOjM1kXvXEqtSlr2QOJo6EeZQM=;
	h=To:Subject:From:Message-Id:Date; b=lq3uu/5UYw8IZ7Xs1vVYn3Zbr91i+PEi/PmCWneekf/hIF3q0igY29fMkZ3SiS28r8CwK8VXLUb6vtYNxI+flwefd6svAN5AeGavVnQLmtOupXhUXr3Ot+Hh4GrMmhjArTgebHCNWy+EYxKq+H/rEsmUnPYRXgACq5nkwY9LDvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJAzHbm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJAzHbm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7243C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770317033;
	bh=kFtuivboBh67kInViCOjM1kXvXEqtSlr2QOJo6EeZQM=;
	h=To:Subject:From:Date:From;
	b=eJAzHbm4JcceMeqQHPDmR7z3S/D4Bo7fVN0lN9AirWl7+tvnd91Iw6umKuxS2ktei
	 p7+QA9aTT9Qn+ciRrGdgWUrV9/FL6t9WRH4vVHx2b3ib3hk/I88iIjyRp79On4s85f
	 Xgwua/FTky6g6ZmMJ+wpyWlkH0zq/KeQVZ2Nlj5AOqia7txlJiblyRwhaUw0e5gqMY
	 haqDDcJu9Ql2S5geYRRa83slcDluwXJm6YXuPoHKIx+sfBwwGFGFQ+AHd/TAsQUowv
	 Qu8coON9jJ2zelL1bVBQYlEGUytptzwUXcmMYqmKdRE0aXH70nSDgABY2DBTT7A67B
	 v0ej8jWODLrpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97427ECD992
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031703358.32264.18378626986790801311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: accacd36de5f6de713c54dfd7773de3bb0b0f4be8099f3f3030e286fd605ccd7
Date: Thu, 05 Feb 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770317033
