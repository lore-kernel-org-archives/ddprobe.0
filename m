Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA21218AC4
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766316834; cv=none; b=VpKxeTpoUs6OQt6mH9mKq0FPdEqI3CJnRX++I6RmpSZPMuL55U9RHHglMFzzTWUEoDutM91HWOCstDWLgahEAn8WWm2FrrtiVYEFpNxRtECgVEtP+HW1ih/9rkbTmJQ+yd0EjhZ+bgV9VvAXC6uqobrs3mjqVERAyADSy2MN7BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766316834; c=relaxed/simple;
	bh=jMeavFnLK0b+e+pMDXnq3e4jtz5f5xAuQw2Tyn+KEUI=;
	h=To:Subject:From:Message-Id:Date; b=Al+ixCBM2nzwA58fyxvIRmwy3AxQ2wscULNrYT5B5Ry5o8zzMxYtbaOblj1IcdhmiLqK18LIxP+5kcWd6bbg68RM2AXmB/DgijFfh6qRLz04qToi8jEmda2iZ1VRI0QTXqVOfzejp16za4VcIffAayt1NM59nLujFlPnjfe3/PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfPgEiPL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfPgEiPL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C0AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766316833;
	bh=jMeavFnLK0b+e+pMDXnq3e4jtz5f5xAuQw2Tyn+KEUI=;
	h=To:Subject:From:Date:From;
	b=jfPgEiPLrHAMz2gKNy2Qv2fjqR+Lrm82xuCFpKkpti4+/IVFnvRk3xa36jVgypcna
	 PXuZ7EdGu715gN2VgwTLuIF7sICdhId/P/wXT2B9axniLvD7GH/w4q/Uz5jqAQGZMW
	 AaQgKjZnaX9kjqrN8TnLryUynKPKjOUfezwPkngEyINkRRAkSBeed3bNgCmTninGl7
	 hmMG2V29bkfJPAc7hiSyZHU/kN7+/9sHkuEJEKcQHkbFG7dc3Te2oURMdIJCGDGdY5
	 HMbXRm2XCsGW31v30Ky0F3kHpcL95zNQtnlbNuBrdAzL/jLFw0o7MGOHfkiHrNuxus
	 bXCd7cNN6V6FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF5E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631683358.16751.5301250576859459222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aeebe31c92e36d202b18babe3dc98ca0246d8fbd42274ce72a788513e3813bc
Date: Sun, 21 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766316833
