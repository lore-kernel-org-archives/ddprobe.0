Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC8C15539A
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755901194; cv=none; b=IF6RRYoA7u4zVVwmABDnPjlSWsweNVZLY8RzwmF97IPLFlQpVQ9qrYxJC4lMs28EL5YNeE6z/w51eGKijXBsPHgOCaCxygKniHTmBXv0FHELEPYpqfmmJqFam+UEqNvJ4jdigY8aGJjTW4sXIjle29uo4odpPczjjHbEvV5dG7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755901194; c=relaxed/simple;
	bh=mdn6gX/VG1jHcvPzzfKcsPLf5Kf7kOejJN6s+B23CPg=;
	h=To:Subject:From:Message-Id:Date; b=c7nhrl+hd8ljTgNFUneiN1Mu8ZG0KkTiBifdw+VdTxNCOhWF2rrSkou/0CfCJNAWJQ7CJr5yXtKR0NKBwWvPJufPAFEY4FW8LZmBLMBTembXX8AW0SuAoSUk9msIcz99aaj7jTNHPwUDCPKjBx02795P9Mie6G5HCRGd9W7zqXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcG7YGpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcG7YGpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FE5C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755901193;
	bh=mdn6gX/VG1jHcvPzzfKcsPLf5Kf7kOejJN6s+B23CPg=;
	h=To:Subject:From:Date:From;
	b=CcG7YGpR8P7SjMS6Q3+J9/iFfVjfbR89gNg5PHkUM3qrpIfzkbM45zpBPmZ5kankX
	 DS23rrAwDfe47Zcb5S12zhI4d+NQQiRDM2WSolcMa3d/+wtCnPcgD4XbxhCW4q2gyz
	 wVT2+4xBon1gKOzPhBDtPBkQ0sZy+E+2+ZPggUQWjICueskGo272locJS/+AQ71r76
	 xb7eYC9RvCAMo6HPl8VtGuBKtBkZ2upAYRN7AYqyRJMfMMgeSLyCr40LMuntSmj5x4
	 kywFAwYYUY4akMJGwFCBR7JIOlk5OSUlArdYwKvqtSbjVFCKP+r5rgcSISJmneVt5a
	 p1mQP+I656PCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951CBCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590119359.11407.12343096375024034903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3398cba51e0c1b4441cf6adeb1c3deff9ce877fa77b6c9b5ec61e458bce6ab6
Date: Fri, 22 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755901193
