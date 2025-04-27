Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE5B224B0F
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745732394; cv=none; b=bKrx5hRTnxxylXuP+x1YSIDDipvkWF4WC/Xft4dXf0PTvzmbAYn6QC/S2AdEBOjUtYN7z4hd8fwUMRB0+4HbuA3XwCHsn37twcuoCpEESbqV+Oz6789OcJ33p12yqG5N0xpjjPI0NKTirTHPrKLaydK0GWEIOz/uyewrwj9kyic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745732394; c=relaxed/simple;
	bh=TDbJnc1rlOzgCW7K1HcQFViWNK/A8wpc0cb+sDBSLZ0=;
	h=To:Subject:From:Message-Id:Date; b=nff3KwJxHVDYaUGFrh9EUQV3M9Ppsy0TiKs1kgGst0s2DoV7arkQ2nxRRc2o6Ea2+r790o9tQzZVGWtYLJxxQSZRT9zcn2AtBvObH3C0bFkaklEPdBOefaaIvEkJZkKBamQ9Htx1fCvvswpRnuo9sqM4gcJBCaxPE+FEc0Qanbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsdlyYlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsdlyYlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C00C4CEEC
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745732393;
	bh=TDbJnc1rlOzgCW7K1HcQFViWNK/A8wpc0cb+sDBSLZ0=;
	h=To:Subject:From:Date:From;
	b=jsdlyYlO/xHKhlgNsK9pPqb064cJ7KPOUMclaf9bsgiQg32JsU70N/Mvf8u06FKcU
	 BpTFMFXHE8kT8fBNxm76oGXG1XfhBcQshzAyrlKJPWjSOuIosMOl+hSlZB9elYfNK1
	 jG1MzWhPu1RWNRVcr/W9718af9OCCaK5WfJBMBaKB7adWFyENqV/Z9o4iLRTxmCSMn
	 etHnABKNNxL4rQmpzKex/fTcFnD3ESa4Rz+8N4n7uUNRq/WWjBkpDG/FUxAjCmWTef
	 WuTMGI22Tu2j1Wf58nRPa45HeKJUDH+lQWyoMyGmwoIlqaTVA1rpAzSl116/jMooz9
	 Bfa7xPC9lauPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992F3C369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573239359.24622.12965196105626698635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d39244246a575fa8ac62ce66c7b8404d00d8440f6f7d1777b1251ce7e85dc9
Date: Sun, 27 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745732393
