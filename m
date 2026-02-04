Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5003A22339
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770242034; cv=none; b=sY0hCE7p6KME17Eyi1cIvAZsfkHUS6MEZ8zWYGO7EpEtEW680o/icHqiRIAnn316szqTQCXXiPOuC48RZlj8qivsmtDH4tNgZeMHg7PbWVJ0FqflM+IPtCLpsAeOHs+Ua+vXtSp4RjnE+x38z0ogC5tbR8+z19X9vFQYgVK1EsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770242034; c=relaxed/simple;
	bh=DRT6SQ1c/Ko1MAq5ZWdAq79kH/lW66f9Vp5V/hltYPA=;
	h=To:Subject:From:Message-Id:Date; b=b8gw3mn4nPm9GlMuphlcNiKoPo91TKkTU+uiJqimB0OqF0PsMMw9axdYIHZyIwDWfHzDg7Q/7uq07pV8/4ilSVawWqQkpEhEU8inhj8zHnJi4Vf0vS1sLIsklJX2CjH2u9YzFqBdmY4CNfiSj3xZdgBXwrQvBl5ZzMYYzYCZuek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUUtxNrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUUtxNrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07449C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770242034;
	bh=DRT6SQ1c/Ko1MAq5ZWdAq79kH/lW66f9Vp5V/hltYPA=;
	h=To:Subject:From:Date:From;
	b=UUUtxNrDEbsl5HMB6zPV1TyYHDPyIhs6zoc5yXHucuYbierHjDiy5VvlKqvY3qgvp
	 1Ppv5Uxw4/SXhxVc+WIZqU4rIY0XHjJSTbSx7bVmXiWlkLkEWVsXSKP7tgBom2sdzR
	 VTqkHPTxm4tmC5jmDqMCj56FIIoS/eAiL28HxMqKOaZyIkWp2p8hPO8kdUTx9EpYuM
	 jn3SPC2GiXJPHAr/QCbtKoxPxf3sx4te7hNMvGncC1mTXs64ww1YWMLpJ/c7VBn99J
	 hPQqJzzwek6XvJPYBUjto43sNyjg90kF1UdkqO4Y6utNaJKcHWVUpdmNbJ5qM5uVWv
	 HbdJaLS0hB/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0E05EA7943
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024203389.11293.395367076330555180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c997eaf339b1cde9e8c7bf4a35eb68f8a4c84cbb62726e651f8e1f8c2a842704
Date: Wed, 04 Feb 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770242033
