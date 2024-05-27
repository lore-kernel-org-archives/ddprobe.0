Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8BB15EFA7
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716822863; cv=none; b=rKNK9AOYibTbmMDTjbikZSx6EN0gL+WyszMIjIHGcaogctIaUHKI603YXaPQn6DAUWgni2Hps+F6Z7NwiL8iPOKQhFVPCMm4qfM/UaKVLh6q5Wh0c+ZPBspxV6TxKN2qubfnvIdCem9KKxkuDlLtLavt/wPKe2luYGknw357kCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716822863; c=relaxed/simple;
	bh=XCbFDtyRXvtMza/enX+y5CFFMZ5HqJVuWYvynvEO8iE=;
	h=To:Subject:From:Message-Id:Date; b=oZy5Q7GDqINhm5OHHtlfvl9sT1uGEd/YM3p9O+cbM0g4JVVmRipp7FiWMzdZdZwoCPOw4xcN1lzYXN1ghBcJBgg2M46tN0vp/xoH4kWvvpiV6K/d1hIIsiFJZfqkPwfcpJzx/NvQoSsv1j6z2fMV209nYzsVgX3FhdA+r79AKNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McT+Lrrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McT+Lrrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A95C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716822862;
	bh=XCbFDtyRXvtMza/enX+y5CFFMZ5HqJVuWYvynvEO8iE=;
	h=To:Subject:From:Date:From;
	b=McT+LrrzTwzH4wr/dzqd2obf7jPHmlkKHCJuts1x3jWLa9KFov3z8nHQVIK7LxDk5
	 GcN/cZCEj+QfxlepKZcV/bi3gtB4RNtaI211heOP1WMS6HXZ9My08cvjJTiECjApcc
	 y0WcL15wU4Cf0nBblsA2bZEFTOfGBmRPGhBcWubXnmllV+m8Suqww00007XHytKxiQ
	 J5YpCp9NQVnemb31Jh3fq7w9WFIUjkTEp/Ekekm70XWlCbj1j3+Zcdi+aeLTPAXpB/
	 21eR0Q7zHyH1KaSEE4DdFZDNapbqDyi6Hb3qiUuZQtxnS6ZG+lpAB/rg3dTWt8das+
	 5eYLeGmdRqhxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7902C25B78
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682286280.31244.3206838312617602179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d6ce24491684caf7bf55df2432c292a478fb1a0599b21d9e335cea9fc3d1070
Date: Mon, 27 May 2024 15:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716822862
