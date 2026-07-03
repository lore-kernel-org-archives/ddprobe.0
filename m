Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E24736C5A1
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783064914; cv=none; b=QbFR3fbFfh5LPqgoYJeR2lA9yGbv0Hp4p4tfjIY4f3QOqwt8b9cyymTJyBD8H9FJLuXnqAc8HrOmhbO48wHKf236Wwc5KOgoBSk8BUSC+FxPBoWRUVkeb3Ilfbpsbw+ubJk9wcDqPORRcfPOAKU/dzgVibDwa5zweR7U+vn8UXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783064914; c=relaxed/simple;
	bh=lNP0twFSkzO7JlgQh3IYPKPITjO/k40mHgVMvhyeoXA=;
	h=To:Subject:From:Message-Id:Date; b=MnxqEZaBYbkmXbQqq0atULEP7plOjY+7Qbm/eIoc4n8qYReGYzhSXD+g4y3gTLJyRChKhvNIsW47bS0eI9LpQB0VsQRCaKq6oOjQyenclV6ZvTsQI3041zySgUoE9z7KCOGM/4Qg+AayK0648PIb1wu/o7YB7X8wmk1kH7vEa/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUDQ7yGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUDQ7yGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6C5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783064913;
	bh=lNP0twFSkzO7JlgQh3IYPKPITjO/k40mHgVMvhyeoXA=;
	h=To:Subject:From:Date:From;
	b=AUDQ7yGbRvTM7e0sC8cVKKtYGRoVq9im1Oex+7qGiaX0hvLWEIL50kx0UEo6wcPF4
	 M9cfeeQt/zvCJzlzKixXPJ+BjCl4D8NwlzKxg7BXHyPeN42bMhv2CkFS03MyI7ZNX+
	 rnbQLR6+5Tu7LEy3AM7KJNA3MVCWcvkl53X2huJI4Rsu/NglQXWCoXnt7jtzJBiXYA
	 LWi0Qh86Luk+23DN82KPZBVmy9eJ1sA5Ys0S+CBhhi9x0WiZhs+RND0peUQsMMt2aK
	 PE7qzAzeYT8AYsFVFEYFXxzioS89Q+IxjcR8+3Be3mj7z5yv2Umhn3HrJqeHIYNLNe
	 nwL8vMtCYEQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F8EC44500
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306491368.6829.17526869042229085168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288de080b6f8ae1c59f87f8d362ac842754f7f0f78c37645ab69ea7812a34410
Date: Fri, 03 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783064913
