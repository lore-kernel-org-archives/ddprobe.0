Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2942EEE94
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784375314; cv=none; b=DUOtbcI1KJ3VwooqKmEuqugONCcK9H7rBwfhe0Z/juvRfbKmqtXX6YdVUMIBa5mDuoC1SiMazDF2YK5FT1Up082VSJcFE2JiFozCtX3Ssvsyrb3U66OCRf2vOY0psnrrmVlUiWA9jEpq94ivcBJXCzH48e3i/0I7zoKt3/GMGLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784375314; c=relaxed/simple;
	bh=6q9padMILNuCO/Ao0ZgUiXnKVv0fy1yBbXeWRgXsF0g=;
	h=To:Subject:From:Message-Id:Date; b=EWT6n9bMKvFKI8j7Mbmkg2bsuTOXNG+KvhFhh3SQsxKp4tLHGGldmQlv7K5piHX0Te8Ck2gRqu1rT9o4H5wXdliM6d6UMMRRulOaVpiPzktn88kQGzyHBdntx/9qIVeLzeXVYUlgul6VMYkKSLtPQtFHB6LUi6T3ecR+t3bPi9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhJfgGXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhJfgGXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B60C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784375313;
	bh=6q9padMILNuCO/Ao0ZgUiXnKVv0fy1yBbXeWRgXsF0g=;
	h=To:Subject:From:Date:From;
	b=rhJfgGXM75ZkquTcwr/E98pJD3gVf8V75lZYR4uO5Z1Meu+ng16fIb4Wc/RJ/sCza
	 sRANSpw01QelV3jyuRys+ka9uSbxSyVK/T275sGS35k8yk6I+mWspBQfcXdXDtUPWm
	 htEgALgY+FK5yixFbS4HP5K86mg3v1u1r9OjOmXVvBraHsMI1MrLeDsLr/6T3JdaNV
	 VyDecUFBzbFAZIjvbq1EEI5W179RL02qTZxQ48BOFVEfpfhQFDZwvrxu5mMf37s3Ip
	 qSo1gOwWY0bIdjdgVLv01k3k5349mNe8i01rx1zGMdg6/0SJeWBxjteRMrk0/4ykTX
	 AvfYF/h5i5iAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8ABDC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437531367.22709.2152029412569135522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c20340e49ee07bdd594464ca1b19c466c133939c6021bf63650bdc3a0d176654
Date: Sat, 18 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784375313
