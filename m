Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C5D258CE7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769610834; cv=none; b=YWYIOGmPF20uJ00g5ytc10h2GhbH2r0Us78TveX7nC0Nr6PNnkiTNLeeVXDCxCVmkmnI1QUKEQKCul+aorAqM2UOZn2ApGGsXzuVhyXXJ71GiGSwD+8ynKtxIyvrGJ8qzJQAyj+7bVbUWHwWgjw1C2wNjlG09oxV0DhAD0YBUWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769610834; c=relaxed/simple;
	bh=skAshncgNiXX8511eu9vqU27E46LsLpUo3ukjOsBTd0=;
	h=To:Subject:From:Message-Id:Date; b=mXknTpGmfIXjYqDiYrdtgWqLqtN1ldvT8CvCUI1kiQ4UdI+8JFRpCv1+NHx+tm06ekrJHtCOKM+xnPQxOUsw8bEClJhXMwjgl+ivt5ad0OJ6F/lCAFXhf/x8dkXuLvOEONKNcaYGRRLjN30S1lzxb6VyGUlqYerVrzFzlFLHn9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pncxk2Cy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pncxk2Cy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECFAC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769610833;
	bh=skAshncgNiXX8511eu9vqU27E46LsLpUo3ukjOsBTd0=;
	h=To:Subject:From:Date:From;
	b=Pncxk2Cy/eOHxMTLWcCGwsRgx7JpHN1uxuR70JxY2hA8hmQYCuAqgQYCGkbD7w98l
	 +tzghZF9HQrOnXtuiqKmOC3+dVeNZzsc5K9IbPE8DNLrE0yeE3fampm9X2ccMFZa/q
	 VEemMiE7R1SXMkMOqveCW9k2BrwcJ3Er8oZoVcj2ncvd9iS7pvWyXjyzlBzpmjCs36
	 qugIoeS40QibiFcxcKkHMBCty8QIKTyFsHOeCy8aOXgEY+bOLnb300ITNC13r0Lh62
	 DOb37PzRgCrJ43ngxWPicf3UT3ATse/f7cWBo74gIjJq/fV87CKqvu40dXDw8k7tMw
	 /zC830ZpTuWcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F7D3F071
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961083358.32316.958423547517777141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e4937c98b256624c03f04c81f49e0be234e2886827632608b994bccb8faa61
Date: Wed, 28 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769610833
