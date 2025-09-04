Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2208125486D
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756955995; cv=none; b=Lfk7z08WGubSsoBfBK9j7RywidqPetO4wfqFck04jAMm+okl/+ge5jP8aJ3aiGrY3GYDeKcJy2aSLDljxdKBlyF+67eDdHJgUSLaf83z/N93BkTqzE3TwEb1N3m7wCal/5GnfCX7aH7jRvKC4ii1dvDG46RZG+NneedaV3gMPfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756955995; c=relaxed/simple;
	bh=htKLOj3QC0O+FSLxiBvVN8G7RO4+eYzKH5eiBjlQE8s=;
	h=To:Subject:From:Message-Id:Date; b=s1HKbcYKes9Lnx+jthni5ACj+NNm8VefzaUBVMdmeib1+Bc1wSennH3vpsjy0Y4qyhipJ83BYsRq6i5EAAAM/1uNbTGHARsPfwL+dSFu4atQR/zpQXpl1f8DrHTn9hHB1OUl07sCFAreL0D5/xXj46sbGDgg0ROV/Dms9LrY+Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8LDsK8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8LDsK8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34E1C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756955993;
	bh=htKLOj3QC0O+FSLxiBvVN8G7RO4+eYzKH5eiBjlQE8s=;
	h=To:Subject:From:Date:From;
	b=K8LDsK8jFHX4njNfUPTcWDFXxd11qt6pgPikKv3eDBIHaY7W0waniIKPxYdP3WXHS
	 PhOcQCokdVyJNRcgH2SHN8uc9W34adM4Gn1havHo6miXayiAdYV7G2EO2LJ0h7ZhUM
	 ZPzI6BlqakmjKf9nJBbxiHQZDxGNpBGAh1yhcGel9g8Ei6+LpT1a+fnkIWf4R4aeX1
	 HqNn2N0BufePzdohSGKb2eP5zguARX4YefHqfi4q73MTiUNMxwXau5p3cWOTtEUU9i
	 7W/m35z0wT33VMgmT+Azk03lq2ai+JabKFDaf/KDYc9QHWp2AGtMn+yl8e+HEnPY0j
	 For8AhyNfbD6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF32CA1014
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695599357.24652.221145045249380107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3882c8f59800cf64e4c19d6515d485408c0ee0eb3ee9cf3a05b8c982bf78980
Date: Thu, 04 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756955993
