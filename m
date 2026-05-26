Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9B317745
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779771754; cv=none; b=bxaS2qcIBasgmZezSl0kNf8nUDT3aGHL0lK/zvBFFE4mORAjNPEs+vHeTLuCzwlzwD3u4fWk5kSfpyeYsa8gJCUg32Z33hQZYK3CZh5hAhYwQrXzX9vOWysAHELOWK9sMj5NffWh1Nw0IRTy+Dw5ageZJe6qy9Cyv7zulVQULWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779771754; c=relaxed/simple;
	bh=FbuRfNtfabP68rKi3M9blSAO2ljIPOLa1B2Apf321lg=;
	h=To:Subject:From:Message-Id:Date; b=Os6s1Fsh2gPh6Y4XEZ4irdekPAC1aBpatjSWuPW4JLGHvZpOZrc4QvdyCDvXEM/shmo1pG83/OW0s2TV8tdR2S9pktEQFKhCzODcpd6uHsazuAG82uGeQxJACtEGeCpLhAsR/EfAoAEiDMVNBSusEHjqsGRubwRvHahX2CIT0S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mP6Lqwnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mP6Lqwnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C223BC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779771753;
	bh=FbuRfNtfabP68rKi3M9blSAO2ljIPOLa1B2Apf321lg=;
	h=To:Subject:From:Date:From;
	b=mP6LqwnnCEglcLdSzziX71allKoUCNbq7WCwmRbftFSw/3W2fk6s7QMO2Uw4+/Hfg
	 8k0248bOBnUXRqXHIltosZu8Umq0bpnSi/YbQLNuVbrHIu+4biVMbuPbEojs1b4vhq
	 W6Sh578hICN4NGSzYWW0VLBqmWwcqERl36dfQ9y/pRcB8Lq0jKHSJZsq76N3RjxWOJ
	 UeMaKaOE/uJ4hM3ZIC9fnAKQcb/xSjgLiXkNBdU6aZWDwxqH28lo7Ml1FVgrLNT6bc
	 TkAe+zt90VGga/hjPjzzK+iMbdRHh+56vfkH69LaejjOVTkTHHrbMzyYU1PAYcVvg9
	 Xjrc6flvQIRHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93E3CD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977175368.27176.6080512118027810471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8cb885121133fbc919efeb165a0a61189e7165765d7db1aff333596cbc63fc
Date: Tue, 26 May 2026 05:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779771753
