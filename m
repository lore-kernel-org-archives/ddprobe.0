Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC0330F815
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785843034; cv=none; b=bNWhU1rRIpbztvf3TSJrqzgabVFc3SVhGEWSorBx59Y+2HrP6jaXFLruqjCwqE+mKi92DxmnAz1q7BbHpYTllBe4XdHr9yQGfK/UctTBhBnqHoc15VqB3TZvn2UygBbQCuyS/EL8C1+FQEhU2fQNOQjtiE9JNgNCCe9HiF0AjFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785843034; c=relaxed/simple;
	bh=Q+nii9fYr1W3eYTy1SDsRJqtLKlFQuLc6mrOFXVtCW4=;
	h=To:Subject:From:Message-Id:Date; b=Xfq/R3N+ZRAZCt/SUNns+STjodofhcl/sfhDyWWW+Nzlj6Q2c8OyZ9G1MwInEItpMgcJkDfJnzWX8cHU9xL6iAaD07ylu8SLbcuMP0R3Z24z42ZBi7VMlTiQ0loV/c3O8sgu6Twqq08rgIJV9/QVs/+x2mZbsPcbfqvKX7eomjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtlwhILo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtlwhILo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFF4C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785843033;
	bh=Q+nii9fYr1W3eYTy1SDsRJqtLKlFQuLc6mrOFXVtCW4=;
	h=To:Subject:From:Date:From;
	b=XtlwhILohuNDWst2+dkcSI6NpTB533F67SAnxWaYnL8/dpxEsCXyZAXTbMWRUZxWT
	 9uWk03SYG808nh98nQAJtW1TU5SRGfJRE8XSFeA2k85M10Ba8AFuUhl3lx6JXXw360
	 YtIyiIiQ0GLu4CTzRg58s/f91Tx7wbcJO2YWUmBHpRGra9kv0OCsPJr64QfX77iFhg
	 VuFp68RIvCuceMPB8y6kSf3+B2vrtNDZXntCj5HKd7tCWxU9h4wOMRSK/MH6dySRt4
	 lE0e3xx8adh07fuFxnCbdj/wZnuoR5MESzGxAyVYoI1xlUwJxuhjRn5o42qqRSIKLc
	 uSi6/QEWM11ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8D5C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584303370.28234.3900954607109919365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2478343b153ec74f1a459b6f9fd3a9aa984b9c644785d8f7373983427ba22b9e
Date: Tue, 04 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785843033
