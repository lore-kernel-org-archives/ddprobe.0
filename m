Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B1030EF7B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775556934; cv=none; b=nZNCm6+sqMIlYUWSeaflq/eXkPPZoxf6W68vT8vVAxpep8Ms6wUivZsT4whPwHS1I33D6Y7iGOuuGOgEBFBnDWjoUF6YFZLu3Ouh3oXEaOUUPbhrXz/WZzDMvCFlV17cWh37QzNUwTYCVs9wjCvoXrkYKZhty5f/M+Oiq+BjvSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775556934; c=relaxed/simple;
	bh=YWMCHx0oGpWY0FD2Lmyc+2RLN7Cve6R+tXlI4Hizz/I=;
	h=To:Subject:From:Message-Id:Date; b=YK/G5LizE5Uf8d3fZU/eBgoKKdRZz26JlLODyoapvCmE8fyb9HEbVrHZVOJO8ZufKQ94sapum/97l9d6f/Sd3WSVdOpODvZQ/5Bmz7mfdiPccspOKrxd5upHBMngL3U8+/b5XjiADudwnhNKvjb7yIV0UJbvB2os0LGx36g6W8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/5IuqKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/5IuqKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB927C19421
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775556933;
	bh=YWMCHx0oGpWY0FD2Lmyc+2RLN7Cve6R+tXlI4Hizz/I=;
	h=To:Subject:From:Date:From;
	b=N/5IuqKnZEd5u12wswR2a8zTVVveXblISpLAgOE152++0es4Jft8eEEBmGibB2kRR
	 Lku/U55dtCmaCu3X5I3YGyL6+l1gl3wurKZnN+Y4nSiIH1c/Ts+M91Usjp6l7+N+Jj
	 klvuhKzfEY/xeWQu5LDCrxkCu2iIcjtmc9NskUqIOb9QrZnRlN5D57XCi+E3hnz2L3
	 Z3w89CM3VV0S0gwJW4/dn4RnWXJFqTA273o2TQFYArX3J4MXikug8y4EWlb5y2lPi1
	 F9IBFh76d5c4vS8VE8yvLcfXBznjvEVIOku2/hDKAL+Xtk6oAAKL4bW9RUx2ffSfI0
	 iVF4M3MVyVZyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA608EDB7E3
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555693368.12381.7998283160739727428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3aa089d59b075bcefe1bef5e789a336f22bfb4b3d5fe39b26dfabba4465be2
Date: Tue, 07 Apr 2026 10:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775556933
