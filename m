Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BC778F2B
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789027234; cv=none; b=Hcb2b4fN9VIJCPsvfBR2C4qViCnPdR08g4fVSh1upL2csUnlS6Zxte6cDgdHi97Q9dFRl8ZA4T4ngj3OWtwyw0DKLzL/5B87GNr6kHW6AiVO+1SbTNB4vktsAgZGF5q9RRx7/5bJymWdetaTzx10qm++OPnrTnhOTXtNaWgHwaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789027234; c=relaxed/simple;
	bh=vae/x6zoaMwDk+OD67sbsqnA3k8wChSy8dkxg2quOCg=;
	h=To:Subject:From:Message-Id:Date; b=rzaYxX/JhHrTHH/I3ZMHSECMgMP7AiB9G0k11zUc3t/iaObgk1ndfrFzveaVOx8uu3/VK/DZC28VGU08yhq3hp3PyQ1twLXzE848BkE9VCS+ImYso7/JadFA1uUsjsRFMM0IkVTYqgtZNsHYhIhAbxxj5z0DPR7/40MpKgRXZbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idunHxMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idunHxMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1024C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789027233;
	bh=vae/x6zoaMwDk+OD67sbsqnA3k8wChSy8dkxg2quOCg=;
	h=To:Subject:From:Date:From;
	b=idunHxMRbTz1YBZJkskvChjDLvxP/yOJoE+TeNfdmiv2wYl/pI/m1LTu494qdGO1v
	 kgDIKEgtx3xX8bWVhkWOdDmQLPjY1tKDzXy1p9lzSvpW9FOstZLnzZU0WPhrExIMqV
	 4gfD2sG9iKSStg1PMdC7BGwER7XKjg9KfeNG0zSyQSggFOj/BzN7JyDFJ1tu50CJxB
	 Sqzru8yVpnwFeX7pPRnHsL7JYtBCP4LaXsxrkVrmWAlIVBuZ00X98PKQLgmD07i4G3
	 dL9gpDmd5dFxFwSE0o0MjbB6tWaF0I/JifrSyUxh0WY0TQVFTyYCGz/qVXPSMjDJNT
	 AN/ewjp37AoSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8E4C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902723368.17149.5453791203092120658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2387fc136b36ebab67027e18e4413c728fa621c4c765a8f71b61b94ba13818
Date: Thu, 10 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789027233
