Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1FA199252
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745361594; cv=none; b=ea2+qyNkgPpxKfY4d9gV8cSh4dXfqaUH6dqblj4SaVwAn5PIrqBa3fEVTTh4uJIaOE57X2M2cH5CgkLVlbAkYNIF5HYSAJjsYY2pzi9MUpdlThHTKbGrBQ9eVJfS7uquQaCLsRjxM24M1AVP7UqEeUzFJdGFk+N+u3S/mE4vV3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745361594; c=relaxed/simple;
	bh=xqml9v8Hd6Ccls96X5bRUgN2Aw1TsGvvqhJAlh4VQO0=;
	h=To:Subject:From:Message-Id:Date; b=UQao8obrOMV/pRufoO33IZbKcuFL8ntjpH8BNyOQ6rVNULsFgJ0fx4QraX2y9ndqQ8vWLVTLSJoVPtDJa+biMXN/bgGeL5pwOPmsL/bn7XHj+NTUx2kTOXndmCQTfuMUIkM/aCkCUvsYjkvxA3xQ0QzJSaQXErZ/R4chRCbH7Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ad7eGwL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ad7eGwL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC1EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745361593;
	bh=xqml9v8Hd6Ccls96X5bRUgN2Aw1TsGvvqhJAlh4VQO0=;
	h=To:Subject:From:Date:From;
	b=ad7eGwL/KuzvcM90YSPcRSODXJThHRCWZOZOlmG4KPNDvmZYVY4rYf26p+Qsw7Yhz
	 qRGS5bZ4u97ytO0DGcvNNIiXlwIMOQ0tyDCdV6HTkIQ6whIJo/Df4M/ZCz9bGSkKFL
	 r0qLUMeDmNOwnx6sX1OsrkepevLMBXlZ0Duq7xS6ovo6P8Iw/KUdR0DxOhMV9BaaFL
	 P6tp/Yv8V7jk0C9boB20cf9LYQjSGp1YZ9MdXWL25Notqo9PSvSNwhiSsv2MEoegWm
	 laj1VJJEP/Am4g5VIfjvDwh3ISEwCIQZJw+HvtvAtewupC5XAHLuI1rMaUBgyp7rfg
	 /jhOmcc+Pu+/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A0EC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536159361.22075.9551697586550469926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613eba6588d8fc2a9d67f74ced963df6ddb0e59504c94ca12c96142540d28497
Date: Tue, 22 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745361593
