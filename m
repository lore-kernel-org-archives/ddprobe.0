Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F712BE633
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762228194; cv=none; b=IlAul2gmBIKcKBfIBEfxotRs5/Z4o2uGhP1IDQgiET6UnaHat9kVlhieesiUwDsZdpZIRkuXQHR0K+20CiZwzQrlEJFG2jr9XV0ey4IYvFwrN/lhvGiE5CRBLPkhxV/b2ceMse79rxBqJYyyKyiBn38pPoyglifu7h6fscb9iZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762228194; c=relaxed/simple;
	bh=v/2UXWNZpvwwXlNeuOZGv//6DxQMFEhKNbKeh2jhVgQ=;
	h=To:Subject:From:Message-Id:Date; b=IwH7MsORy4xTyWZZ5mgEYsijYdjGAwVTS+j1PpRFjJDbH6fmUW0cJhO3XCBMSUAxPmmEZOdtj/dPg7NvtUOUUGBaWF/8WgQ22lx/H/ZZGbE/gd/mqrU6xHvNk7VxjvTkLK+2eyVvsPbnJVK6euvQoxiMp3ruhzCFqmdYfqiAri8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKurcoVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKurcoVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09AFC116C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762228193;
	bh=v/2UXWNZpvwwXlNeuOZGv//6DxQMFEhKNbKeh2jhVgQ=;
	h=To:Subject:From:Date:From;
	b=OKurcoVsRsQlZewGUHsqcg75gMduP8Enpxo1yYKZJ9tRNyEhQi7uZor/Gy1omamQr
	 2mzfQQczA2IXzzfEXDcYQglHfGV0AD4sowh0Hq0vy2X3T/p1iOwNVtl8SxPD9aPTXV
	 Yat4M9ZEJySZUdhdSv/AKpfMe2ofYSDxIVy7eFYLvoQYOpfohtAeRNSV3edLt3DN8w
	 c13bhJU3p657JD0+tWgiUHx+mkUoYEeK6b5gAN9Fy7EV1gDkmlMj49zcK3tkjEvE0n
	 eE6XyCEVr1umWbMAdHxUzfX6bHIn/Ezi4QuoQ4Fy8+T/vI4jhoryfsNBey5SVHPZAw
	 KZgR6MF8utYIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D1CCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222819364.14683.868478490948357208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8827cde85959aa6b436cdf2b8731a0375d0936514f0e0345cb8664a227a5ac10
Date: Tue, 04 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762228193
