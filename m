Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235B51361
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721532954; cv=none; b=W9UoL3W2ulOKuNIAN9LKVbMzyot1MLCorVsLgZSsKUQVagGSPX04URYqNajtbmSUjh7H4H9qzsQgeQ9/606/+q5EiL/9k4BqrNeLwn8+abWUmJ1atoY1XmEBMGntzh7mCoAa8BewDVjR3wn5j8AOGWK//AT0D49FYptc24l4Vzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721532954; c=relaxed/simple;
	bh=rYUp8sbY1d/lALTxxpBMyakFnJHYDqVWbjJqYbqeJoE=;
	h=To:Subject:From:Message-Id:Date; b=h6/KqtK5sj8K9a0YG0HniT1ak1LYizvTB9qdgk5SYD2mM4nKLjNDbbcHsXN2CvnobldikEDcMVwnROMax4hPmPBNInmprwkUu0CN/3Q8QpOG/OGoK8Sji6xoawrtymbUn+Wv5n1T6Ec8ozAaoutCLORsyAUIEPxx1J745QiJ3KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbYfIVKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbYfIVKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7811C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721532953;
	bh=rYUp8sbY1d/lALTxxpBMyakFnJHYDqVWbjJqYbqeJoE=;
	h=To:Subject:From:Date:From;
	b=cbYfIVKPVLpdOPCehI3ZZVOqzQUEQpbP6LR0V1FAdiDIcAtS63trCyajKG1kFrKBx
	 03U+uNnS+thw71GRf32v8cHdMNlzo7PZuqw2mBbMstrfN2hzm08GzYXaWpl1B979u6
	 Q0rR/7KH5wdTUuMd+AtwtNY6jxCV4FYzlG/S6Sy63qRED5zQYtf/zcqdBJBwaC8r9s
	 i4etFyHW4lS5I8vfIauYTu0R/xayZ3J9siAXp2EtduuocmU5rspnlfwwahaqTEW1g0
	 iFOMzV1MTj5PalBa7urAu+RNxcE0lZAT+t3wCswoM8gon0OGtye3y1K1NxjxLvME9v
	 BF6KuCwLEoweg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9288CC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172153295359.12856.10035815233370209289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ea729f29934db97b2f63ec3dccf0ee4a445acb5ffa24ef3abf7a70a1d9155d
Date: Sun, 21 Jul 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721532953
