Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467AB18A92F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783221514; cv=none; b=nvc0EgbZPl5M87Q5YO8ZvKEJXFOJ6Tq44MR8gNUS7tXBVyaiMlziRUZLengbU4NYhgI29xWSjEnwXk5CixvimzKU7xeUVzXUUtPHkD9PkFrAc7VxVguT1OAx6XZH7rUowHie2JgB17Kh8Im1ixmqtlF87LTDSt/IcD/zMXT57KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783221514; c=relaxed/simple;
	bh=Hjm9PsVurvuKk40fuDLuE0roU/Fia7KiqQV7ouR4IXM=;
	h=To:Subject:From:Message-Id:Date; b=alNMFVpIY9LQ4bUG4gobsnbItc42CuK1TbXabQbSW4+p91QGb0ZBsEX47DFMzRtqwC/iiTjExazcEeWo/YmPHqPE/sBBzeb8Y47tbE+i2qP64Nez60NE5m2tJA2pz+oQOUE0SA7GFvJfqtF1sfHC1KJM7CnLSev4XoxCEjanP9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qadi5GUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qadi5GUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC17C2BCC9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783221513;
	bh=Hjm9PsVurvuKk40fuDLuE0roU/Fia7KiqQV7ouR4IXM=;
	h=To:Subject:From:Date:From;
	b=Qadi5GUQwpShkd5mEhcPdezEWHHEm7RppSdBvXubQVsmqhUb8nWeyKxxwj6aO/4e4
	 +EiIThVa63JqhJ4Ssd6QuL0tbWU0u9JiZm+6AFGbRFOtB8311rqDXLnc+6fLTnrAoE
	 wPguXFWXF9VU5CGcGJS2ZO+0quNowFpsWaWCINg7XGzgg6Fbu0BN6lw/Ke1kqTWi6Q
	 1FsTnHAZCUBTBMexM2oQerSY2OVklg0hV2jbHZOWkP0CiZEDO+I5GBLMHB3SGA96z7
	 QRfHrElbsgDVnw4U3KsQqu66z3NtXw7S7uQ/r7Hnhb6YQ52T+eb+ksUH5eGGcEMHqk
	 x9lMocfCqvSFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5AAC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322151368.9147.9061619405080641092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdefd3b84c7e3a3e651c70c7e5836cb998a816827c9766ac2cbec4e23244c0bd
Date: Sun, 05 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783221513
