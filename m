Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE133264CB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786791034; cv=none; b=Pqza6YAb+o7bC0idoCd3E9x7zzwJVE4vsJX4VxBOPZyrOZ7IOmS6VbfonR46rQPV90uzC19bekA0wYtXpx7rzAYIS7vBjeiQzp3URmDqYwIRb0lfTToYTiX30vxqM/uwaX8/LmBKMmAr24Osn3/XL0xVsRJvbnwKuNAVCLXD3tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786791034; c=relaxed/simple;
	bh=1WbFos8XwMLCbAI/cLtE4JlU+JpbyaJw8lLUuhY5tLw=;
	h=To:Subject:From:Message-Id:Date; b=bjMYqqBqwU4HcZYD8LZy939RxgZVMgjHrfPfodqBBF0qwXfxXkT0H/5bJHkVBaFpN4z1QcrLLSXyP2XFZTncLIaO2ouj8QzqIy6d5fgnWRkAZYn52NcN7lvXrgMfoohuCDqkj+7NzVp9DVgau0AFhNSgxJaKxku+T1y07BfWp+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCeBRYgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCeBRYgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA4B6C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786791033;
	bh=1WbFos8XwMLCbAI/cLtE4JlU+JpbyaJw8lLUuhY5tLw=;
	h=To:Subject:From:Date:From;
	b=YCeBRYgwSHDgFEzsBPntTVV5XHaJwJJVt8UWvkyZsV/AZiLhhTYVMrktUZ+wMrf5F
	 osHHN9bxQbziLQ3BR2KRHyGDgaqHnMVirRmGVC7M0RNqTqAB3H77AjBg1dT88QvMGl
	 WffGCc4u6T8F9B8sqZGaKJfp47I7J9ru+2IaYYii7ZeweVlakymxJDse4YX41Ty4KJ
	 96sKFnrdf3CBcVFQcj+4GpUyNWXrLOu2Ykrl8VGN6pWRzs6zYSDPpmW3DJzPqeX+X5
	 QXe51xn0DywyYL/Ds0hh5aR1Oug62uM3UcGBwiOrO1/9iVBqsuA/jWhWdjOO0ZaNw7
	 7N4s58bNPcB6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC565C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679103368.29280.7705678846135919742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772bc3dab1353972a9e7da11c0327321c459cc1dd87d78c692474c9bd188d5f2
Date: Sat, 15 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786791033
