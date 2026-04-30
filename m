Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BB281ACA
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777591654; cv=none; b=NhDVvjHh0K4MiSMPtuvq6ndI/BJru8PMbUcv+HO/ow4DJSTflDhTnS86HzmfETrK6H1AuTfDHu5PlD4cuq8eEqlbfv5HthUWI2k2CyeV2AmFUthfL27Y7og+S5/tgWwJ4T7KHVNhnYqwgV3o45zBY6YorLsVMxYoLzI2/O2wkbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777591654; c=relaxed/simple;
	bh=yZhbyjjtb2NS+Dt86aeczdI470fh+ReyeNoxoq03FQA=;
	h=To:Subject:From:Message-Id:Date; b=aqyTDkeKxDQHxsXkBHToNymaDlDVVxIjOfmn/oYIK2k9f6/AJB7sgNp4cIvLfMCdaq7LKUnNiPb+mNRvkbYgNi0VDcGH4trMSL7ivAKHRrnrfRclihFdWEVGaeBGeS+B1SIQ8bClFtNt5tRaIjgxGu5Urfm3nesi6vYFyqePPWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HShqyKYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HShqyKYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C52C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777591653;
	bh=yZhbyjjtb2NS+Dt86aeczdI470fh+ReyeNoxoq03FQA=;
	h=To:Subject:From:Date:From;
	b=HShqyKYo4gCZx7HyqErLLBsa3Z6pbLpB0bUjlq54s03IBDfU/zKbGSqIl9XXWV/oR
	 ka6Mmn65Yn3bLIjSw32sThbFZTvLD33b2+TofyW+7gy/3iw2MjkRpFKC6n705kaign
	 Ulta4RN8vdFkswgq3Yqvg+S8esfzZLzWyfyoQoC+DDgOUojD+TMmn4LmWlozphDFaz
	 1S3ujrTmEW1TeJ+1j7dqmoI5Irt8U2J/wp/YG9u8XttnF7gLcSDP2Cn2Mf06/Y346t
	 1nAcypgqnq6yV+4SyMUCvPXnE7AWy1nxB8DoaSB513AxQ5pjmETbMDyFvk+LONHncK
	 y9B+48fj/eBLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF57CFF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759165369.19007.18023466749508075768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2547c55eee82589766e20c4a44448f47104001fb210f2d1f62ff66cedf0b5f1
Date: Thu, 30 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777591653
