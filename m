Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4BF220F58
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751103594; cv=none; b=GGrENSm6BzlJji1D2WXaPt1X4ArYTJ7huff6u3uWWl9HBVgfJHsbwZT3sKL40rJs05fqX8Byi+uUISi37wn17N2Hxc0kG3piqsEZ1nJlYn1bAmB/dBL7Yk5hE+19XxphZpg7fY2gBH2WIBjnvKYLoQ7RaFN/sPR6hFELmE7skQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751103594; c=relaxed/simple;
	bh=BB/V5oUybysjextZYmu3IdhyrQoLSe4yrJbMxd8cL/w=;
	h=To:Subject:From:Message-Id:Date; b=g8sqFh20YUYw1Cn7RBHfIz7KFv/JFyw2p4AE0h+HNrWbsyFw9JoVzmZZOLKfeD+eqdcTcPgPXBEUu4IVhrZb0FtI+g6ZzRwLJMEvPGo6Tasf+G16mn8sUuUOBCdTNtmyhZmt2eJf2CEsgc+rpYgQsFD1zkytJwHPhql9PpQIN8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMQol2EO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMQol2EO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2C6C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751103593;
	bh=BB/V5oUybysjextZYmu3IdhyrQoLSe4yrJbMxd8cL/w=;
	h=To:Subject:From:Date:From;
	b=qMQol2EOJisZUPLfM1IW8qusKy/mznZ0nI3KjxR2Vzi6XCzMqVB4tlojAJHmx1Lhx
	 UFjNx0jRvCqZegn5eSvpdovQ0EFbHlohf35iqUXFN6oJDXOEEjbwecajGfo3ZMCBPh
	 RmnV99H59cfYhCDEVLPnXjKQ58YcG2vY64/rNhH+Bti48xoR4AcPt5OLgqpV9QZhu4
	 ljmTRd2UbwgqkdOWQiH04EXz7qfOAGV9zq4RV7xQnBlT20MdaDBEOKubNe/KrC1m9b
	 6WRDS2pCrF8LHoLl5pZ3l6mLJ6YX8QuAt+AdOICakQRxZe9eC7RQwRWICE4tanIjN9
	 JzAWSqscIcrYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B92C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110359360.14480.18405805652077316806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9c117e4b77268c9441a4ddc1814ff946be03329d33a29bc0fb37e008af3a09
Date: Sat, 28 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751103593
