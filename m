Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3257262E
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755225594; cv=none; b=p0A5ufEECvXcwS+O+YUHmbMMI+1Qjq+7oHlhjx1MuGhceICy7IekaEeKSAU3vOQmD/R0UEfwO8bUcMceqUcycCYysMA/bHAFE+bFXOVFE07xg/MrP0cuwv0ktulZxrvXG43Wc265iNv/TKph/O3C9DsC4T6hfRAsQDgccBTs3hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755225594; c=relaxed/simple;
	bh=ErMwfPl/Xx4bdD+4RdDHlzpkr20M+nu4gRPMIzf1Ljk=;
	h=To:Subject:From:Message-Id:Date; b=L1CSjIaQH3X/YmZbfyRXvlWQYC7Htw9cNvFFo3/uZQOFAGVkq3a7pUW/HCvdgPQMZ16yA/QhbIKSiDuV04LdwcUhY2USisguDBoBbTOMFhophl62FNuoJeec1PsjRU0zbWSK56UOkS2O9wN+GM9LTjAg7/UmjL76kkzujAhAsYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5LrnSrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5LrnSrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D91C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755225593;
	bh=ErMwfPl/Xx4bdD+4RdDHlzpkr20M+nu4gRPMIzf1Ljk=;
	h=To:Subject:From:Date:From;
	b=J5LrnSrEpOscGQRQ+m+GS+NaCvwyI7U4a+swGdKjhcAzyU2ji5smHT7z35R/4lZez
	 CcvEXrmMotlSjvH9M3T3+aleJ9oAtZ0dFDr/9gWqj919wPVDPaDXg6VBka0tSS/Ew0
	 GyOKDsDketh0IiDlC3aoAtGAh8Lw840NUpYaPARsZrYcCPXrIcjDkoXfo3YSJdLAqh
	 RAmaIahNRS42vSTo1A6Flkzk8BB/nT7R65TN4QcJN6TSkWxiYQnvs1BukfYPdiuZBL
	 w685Ay47lqbmJs2880ViScgWebmNcj/hvcYgBvMOlwo2oicsrxr5HR131zQ0A9PrX1
	 1i3mNACCjuFkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F584CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522559357.12152.677379664226505136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78fb7ee6a7a0fccb788ab8d1923e18313edad06e119971fa336ee1379983f493
Date: Fri, 15 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755225593
