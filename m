Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EF21CAA76
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736771154; cv=none; b=eoQ4gQky+zcrxazJlog0lP0OnmkbNkg5AHTEYKraLxCMGW6ulZyCY/qlH6WXF+vgUoxSbBUiUdiCJGUOg1U8IQtY3GJjQHIMBdedFsAmHpWgGSBwwMYn/L4XJCeQwTu1Py7OiatxFNJC/QVecU9x44SWA/3QWAHaPSrz8ENemog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736771154; c=relaxed/simple;
	bh=RpQaFiME9E92lSKG0HRLGICQUyMWxgkmqjn2wEmQqNo=;
	h=To:Subject:From:Message-Id:Date; b=KuXlym7NCn4P6sEbUJd/MCS6+++IRsY9a9JqDxQIq/GefsuC6TNK6gHzgNjtMNc2t14shmT1D4VZ3xTzt5sqs/0EWmHGLd/UraCTHOM7ZrGjjG80rd3UXZPplyS3YpV9F490ELsRokBNAxp0T2xDcvf/F6Vb+nkKLrFCq/W8x1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqApqX8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqApqX8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19B5C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736771153;
	bh=RpQaFiME9E92lSKG0HRLGICQUyMWxgkmqjn2wEmQqNo=;
	h=To:Subject:From:Date:From;
	b=FqApqX8XGDMBYZiTKVrmsfDwz2bwU8o4yUdM944XFU6+ldQpNGdl+a+Lq/WEm3NDU
	 +odadykFW3DaEXW9+WdEnJU4OxRc+js6CZ6dRx60CBHRmM6CSg9mBPeCQsEaqXbDfN
	 KBw/bJp6nQtmHJewPb/qqKPbht6dWuqWhahEPDcME8DLpDQxjfl2KelgYxJPYV2Gpg
	 7fhTtYXjItjOMvx1CS4+N5doJA4NgXTSsLtHc9sHfJem/9zz++Zj3QXS2kU6x+lNPV
	 gzoNZVe1vEJBygng/HCuL6C1uCXiTArNjsOMuKYOfmQ53knuYD8T0IHY9JdV2rPUKg
	 ZEkCspJ+7Mt1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D18EC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173677115363.2232.12198067902861332600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a039eac961c72de8f64fd28dcc4d06194070b120e86779b3632c284e8c89a8c
Date: Mon, 13 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736771153
