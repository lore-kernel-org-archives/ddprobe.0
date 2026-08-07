Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED903D25D7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786087834; cv=none; b=PMUBUCgQIWmGxRKEuHxPKEZ1+mn/C78A6G3JZeL48dO1nCk7UStDq9+1MXNh640HuojRu396v7tNJ6Ug9teSykgR6Ah9E0Nf+faSkBNdL/ecVMuzm0y9IGM0vIv1e+QXp+FgqXcNKpmRGIL7JUX6YJslFF25TFAYRkdtmWxYixc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786087834; c=relaxed/simple;
	bh=E+PUzd6BE2FWbVqv3i29BNVsngVYZaafMTlvNEwg2iI=;
	h=To:Subject:From:Message-Id:Date; b=Iap+eMgx2kQ1IqpT92UDfK1bUrvwDDXUGAxD84VC3CRigqpmqRAT+NuBKPbTRWnGe8/NywgIGTOnY8VYc6pt55a3vu2TfxFVQudFid4zKWpVR1u3Le5mobReOOrKEWecIp8JwEZk8F3wJt2/rCKMRSF/peQ8H0K5xnopDpYd/NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3T6IfbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3T6IfbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECDC8C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786087834;
	bh=E+PUzd6BE2FWbVqv3i29BNVsngVYZaafMTlvNEwg2iI=;
	h=To:Subject:From:Date:From;
	b=C3T6IfbOLhUkO2N6xuyxjtNvnGuttRvJmmYE3tOQ46m0fAW2IF4XH669xP0xTJ5iL
	 9mseClMAbgN+7/uamSjImnQPNS772XmvCOCvJ6TFHf37OUD6/axaEz2r+eAs0bOyRc
	 WYNkurNrwHeSn/1marMQ1VJVyhlMsMVaQ76Cwb9b4TapZTQJZrk/AA5jfVnJ+VfLnI
	 /nCf/c2yEMS+xcsNNPsbCI6g1VQoQFvmdcw9lWo6PciIKBy3Er2AgCbWGmj8L6RyLw
	 KWb5mFMZ3NVjcDILzbNOrbJuoyHIrrsMTr5QCJoCTlwT/Red9TNmeEYGg7f5JaTnCV
	 nUKeyrwumkTog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8BAC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608783374.9995.568699695265843363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6c7440416b8cab0a5c2b6248beaaf93625837473f1feccbbe528fdcdb63ca5
Date: Fri, 07 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786087833
