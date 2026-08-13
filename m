Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ADE36C582
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786648834; cv=none; b=eAjcSKeolhHwwym0Vy4VA96cIvDLDAWsfv52Fr1HR/dRRw7JHqEcPJZbVmkmD3hGAtSB05N5f/4X34FrlYq8PqKg9wYuz7+Ogeaj3CZ2GU+U7MTQEm7p8217l2RQGQDlpn+0fEpCnVZsfl/ubbG81d+RNbqcwc+MpqCXBZR2/HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786648834; c=relaxed/simple;
	bh=KB5RcFf0lzy7Ufm6X4umYkM6+UZySiLYpWYO15IcT84=;
	h=To:Subject:From:Message-Id:Date; b=c1QBx9dkYd0EPgmP+zdukTI7R3UtliEnyEMckLlZNWfAZ37/f92cipFfvbyAJ5mntyt8OtJVWla5KL9ucsXWDuDTIyCsvaisX/UojZ1wDuAOV0c6jYd/QkPkuPGawqSpHNzO2Q0g+5mKdUi5PPeJmwrMcq2eysVwLZ1a32QqHTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9GwEWKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9GwEWKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAACC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786648833;
	bh=KB5RcFf0lzy7Ufm6X4umYkM6+UZySiLYpWYO15IcT84=;
	h=To:Subject:From:Date:From;
	b=V9GwEWKK+UbQbN3/6cV0BsBzbIMdafbJkejwTNF7te0h/th6MYoKGMY4FW+heBivP
	 rQx9c8h9FFAsgFqodVFsOftBgB1+pA6ZAQQ1L+a9t6e1aK5nwyM9VbSen1wEmA3U7d
	 +FmKT7qNiY0afiYBXczYaKTAwBnO/V2mTZ/ra5KXlCwg6ucHcrQ0hvQDmNxhTjAnNl
	 XRFMMam4NoFkBvOaViokLsrMIvL16TJCSJppaJvilKuAJ5nZoK6NQWCsIfPz+xJH5e
	 6oIaWbL30cZ9OfQuxCe3xRLDBU0k6MIEogPZMEu39dBG0arx/BlJCdoX94DfT1dTXa
	 QnHvAGB7KG/tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA38C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664883368.10441.1309569280117916488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b4e071b3b1d53fef0e129d6b1f3a41e770698e549bd4a9a58efd5ba220de5b
Date: Thu, 13 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786648833
