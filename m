Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2588020B7FA
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739435334; cv=none; b=CzHeQO9tl+9Fo+L04AzDfGrepXuzD6TzPJJJ4SwRG1O8zEykrs8Gt/UdWjQAc4aLJlmhhFljeGqZoRS6x59wQUEW9y/1neQgKDU+jdKzloGAo+8WUazZd18zpYRDQ916BjKsIAsbRqKsgQsr6w5E06Hn7aknTVUNF/PGwmahs3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739435334; c=relaxed/simple;
	bh=JfeSC2vs8n3E/3NsZS+7UtVe1DsYMWxqSzRgnOvoOSU=;
	h=To:Subject:From:Message-Id:Date; b=HgUlcDrhrH9ToqSRuN8rCEa/ZjSNVS2D2sQRpsTUwYxqCzTendJnEFpnnPjIhvdYtP65n6Lye+SfpfVrbEtw2SsynFdobHbW5K+kjCnHhntZgbrOXRolbFpIwYZEvA0S2WGE07XGDYCqRyabu/JAcjbKqB3wavikEQLkNRLQAYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Msnq/HSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Msnq/HSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8190C4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739435333;
	bh=JfeSC2vs8n3E/3NsZS+7UtVe1DsYMWxqSzRgnOvoOSU=;
	h=To:Subject:From:Date:From;
	b=Msnq/HSLfOYe60HB0DjHCqVskXKqcIlZ7PT6pcI2QZQ6RMohOns0bPRDGKkS+itu8
	 6TPgJVINwvSVGnMpJyM7n+t4RJ58iU2PAHdSU0Hcnnm4GHsuuAlrqf8neG/0jm3A6Y
	 V7BZHLAmpRO+7eB6Gf3vUWIxjkedHx1ID9b6Ue+idD2b5fU4TsL4xKSe0WKabv0Kre
	 QAivWTIDUW6L1tidoUwdKbk3xNIkHN2PJjRH8atND56cbICKDKTRvSo4mubqHp6aEx
	 XzB4DqDPGBV1imcG/svTTuGANxCNmW8Rt2DqInTISeJ1KoCkF9aF/So4uPqaxtcQQa
	 GNjo6dwEc3Q+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934E2C0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173943533359.19005.2114961742983867248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d06aa7c88a082964543420188c3a1a92addf7ed2ed3bcfbb094436b9c38edb
Date: Thu, 13 Feb 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739435333
