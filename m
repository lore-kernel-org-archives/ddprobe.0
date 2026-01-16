Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D82730FC03
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768554234; cv=none; b=LJAVb1jwYjW1lQGfmMGxc/WBZPI3bzgO/kZpcPRqUgW4AUMm7mRsLS+sluf+sVjgQOugAKfKs8K2HqbbZcCJAjAp0wVRTGs84zUCWHHPuCMruwslsEu85HRXmQ0JrhNFgGCVrxP1v+SBG/7L8e/fhrgYJGslRvLJTYN3bMyhdok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768554234; c=relaxed/simple;
	bh=LBYHTkf8t+rtqVw3kQ8s5+ViJaTwtORiJCMecbpwvmo=;
	h=To:Subject:From:Message-Id:Date; b=JeEKaL55zeO99ZTVPck8O6JwqdoiL1C+m05Gh+QFVAGL0jM4W1AjGGTIM9z+fOFJqE6MkulayJxYvCx7LJsG94Na7RYiqlVpkpelecDxWgUgOb2OlMfiGf5/wRFraB2ntpcaXNa9Udfec+1uJXQ7OrzgqtZc0Aiq+13aEKZcIaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gK/SMJqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gK/SMJqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D85C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768554233;
	bh=LBYHTkf8t+rtqVw3kQ8s5+ViJaTwtORiJCMecbpwvmo=;
	h=To:Subject:From:Date:From;
	b=gK/SMJqPJNMt7QXe7K2BVphGOxL3Ud06ZgTdraE/p+73zgIHHmmTelkdGDRwk3uFI
	 VbkSM5IzC94biywX8mQMg4rhbmbeC0nSZcN4iC969L2ZVE5WDYBHkGet9Sg+ms6eFO
	 n4GtCK3pkPbe0UwJk39Yt8z4wVA7ywy1pPI1qXYNaqDlKrpWjFAm2e49zGv7bKOdu1
	 o/gFKWWQOJimTu7aI5bpJMwjYb3gpopUSKTwBf7Z00pbAbnF5D2+Ja+SWbh/rhcHee
	 /PIl9KyndxWnXi1HBALdrysuAdMzGlZKsJeTZmITJy5ynD0C1X7iREyE+KsYXoisWP
	 MY00WFEhbRZng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A34D4A609
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855423361.13606.12659506154124155346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7dfe3b222505c177603c3560ded8a68007a97ca526eec2200e8d63be30606a
Date: Fri, 16 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768554233
