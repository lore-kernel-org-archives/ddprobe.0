Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F4C1DFF8
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714120343; cv=none; b=QySOjBQ5qF/VCfe7EAUhILA2USUOpjEZnmnPuA9/kV9YAJP2CFp+4rM+P+pEBEmFHBhM1k460bCUHJBJXvC41JH6BxE24xq7LgBoG1ta/OoRj5B4NMnkf2+9NKkMV3AB+sNY8xA0waeP4jUtEioet9nkrwANC3pmstfB5NADuJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714120343; c=relaxed/simple;
	bh=6vgWEIM1RiKF/LU7VygMlciQqT2albSQChbeQTJmGmc=;
	h=To:Subject:From:Message-Id:Date; b=bZUyd68dlIJj85u4ER+KDTaSc1XnjiSseyvkbPc2fnNyMb2mNh9I8ns1kjh+90C/CB2R69k5FDQ8GcyL5Jm6nhqHEY82+kEqlnOvxcCJCUSFMQrEucnEfUrH1x/aWoNfsXu8v11PXPgx2mqpjRiL4aQ93vZU8R0y2MXKPl50DgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVbNXKw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVbNXKw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBA4C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714120342;
	bh=6vgWEIM1RiKF/LU7VygMlciQqT2albSQChbeQTJmGmc=;
	h=To:Subject:From:Date:From;
	b=QVbNXKw0eIBAHT/lN5FS4Jkcpyvzu3dHS/VodiCmvwsa5Uai3OepoHevnyukqxgH/
	 h8R4xSgA8zbgXneF9tcfTk6I8A+jynZpgulekgaBb5rPAg2lGEeQGwaSXeLUE6CCPX
	 Ic62IQSWM3mb7CY2cSLe/yQSCaGsT1QIeY+Dh4o3F8qomw3W26uDkOV9GYRPjVHnSU
	 jHV1V3bO61CtQjXZwk7flw+SsrnwGlA4nVQ66YJo+3vClZbjdfiBgcxoTAvnoVKxw+
	 LyGRP0+c955TAffT1qkET8dN7MxWaWJVvdCxajSw4ZLlEG0KzA+9JRchHDlNatf33+
	 GfLnv7GB7J7MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C74B8C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412034279.26605.12960988436803890785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4708837cf424606b88ba70acf43a4b577f834f0701bef64ac2bac7b4620fb073
Date: Fri, 26 Apr 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714120342
