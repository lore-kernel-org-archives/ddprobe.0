Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B96A36DA1A
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791417034; cv=none; b=ol7wsMOthhPUNrLW0szcytjOwSpYmuz2IDsWPH61EkQsxtH3QPwBOujiiwJTLU3HEehnWRjJI7a/QWkaACeYdKGLXbKUH6+qeISFwyP2+shtBTxbkOpsEqT1eFfCJ/JSm1/yS1rxeO6CComhFDMEsAffi4nd8y0NQCXUblrLKKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791417034; c=relaxed/simple;
	bh=1yN6JnQB7xEaFJ6Hqfo5UtwtHrCLoxzLiY4aXqx/AzA=;
	h=To:Subject:From:Message-Id:Date; b=ecFE496vn/m6c5f3GVqGPXCaZF17AEJFRQX1UbnMpAeHHbhM0hSvpgTEJfsC8iN2wfUL7hIyOfJu6jENnWOXMMVOVRrvvG21ufmlcmXoG1qohech4GNNIZNTSj/zWa239gKOGq4qyIDxEEwdB2z4nlIggJjiDVv+Ka4f3od/93U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnBJftbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnBJftbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC151C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791417033;
	bh=1yN6JnQB7xEaFJ6Hqfo5UtwtHrCLoxzLiY4aXqx/AzA=;
	h=To:Subject:From:Date:From;
	b=gnBJftblEgFSSrG3dpjOyMnc8b/r9l1gw7jAAgPfVdgalgas4oHXSKJxbDvyYBukG
	 6D2uVCm+cQZJppuH0/od+soQli+9jxlRIwDm7mFs3UmRR8++Ab/r2/dvaFQHxAYl8l
	 gavizkMkd18rN+fcLvOMPYaxyY6A/KumS63mSClpNr2NSbyhMZvYH3NtEdRBSXG8nF
	 cC374BwDL0hynD/DKKJ72Q9q034oGFoG0zKFZl3xux4uUZspY45lKDRuUYjOgKDcbv
	 ieUuc81Ney6TOWPSHrqsTtxEGppxIK7btnPPQwpx/Q+w1C65m6t0eqstN9qZV6mSF1
	 tYuX/KElb+B2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA798CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141703368.22714.2297415262951939846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f1b7bddc0242185b78961e1ca9adea6827606005143e3555d4ccd0acfd6bef
Date: Wed, 07 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791417033
