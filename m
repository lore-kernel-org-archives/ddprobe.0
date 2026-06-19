Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBE21FA859
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781854594; cv=none; b=tNZ0hpR4vsmAHDa5ZNZ+fzH+uAr1VqT6sdIC4Z/GcryOHD4w63a9tu6IebQe+zK1fm4GKUrBRS8UtZYd0hbrGdYjUw27zunLB4iPlyXKwD53C+PMnXYx3HEzJ89vEx2mvpyG7G8uT2viCGid3iYndHp0EL1dSusg2+rzn9IBOWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781854594; c=relaxed/simple;
	bh=1xyOQjrBsd8XRor/oDFSky+ILsXJA/Wy7DlhDqgvqNU=;
	h=To:Subject:From:Message-Id:Date; b=MEHbXpLcIaO534IX6rHNOjPRI6C+Po2mBvu4/xJVGL5g+gViH2sr0JM+oXyM3gQ89nZwox5ujaoolrNY7IjWE1Q+H9YCjVDOeTBYbsR7jdbwvePeazn/9G2shMk+rB3TwiyYfohluAq2RITQ3i3dS24OriuEsBzTN8nLVe3yfMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBtJG5QJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBtJG5QJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE13CC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781854593;
	bh=1xyOQjrBsd8XRor/oDFSky+ILsXJA/Wy7DlhDqgvqNU=;
	h=To:Subject:From:Date:From;
	b=tBtJG5QJXImq2EaENpVKQWkkliz7jkbOu9Uix5WVOr16jqiGMzC/vWfkGjyMdYyq/
	 Vox1K1Thcsd4cbO7Vy26aaYoOnuD+Q60B/rCS6ydMGyrEggdmRu7CAKZVU32Y3OvzQ
	 Zj68UdtF4nshr9eGTIZKA1RaWvITkAbClYa8NeZx5azUqFzCmUx8t/Khja6NnQ0qpp
	 Vt6pkKSimsYmMRMcOmzG331pKWrNeJfbrCSG3xawPWBUxY45xSoY+3h/Wg8+I5pk23
	 HYi3yJ+7dzULlvuWrI/YEphpEzoBCuqYICj7v+fFrO0KBHa/q9GBj3Lqkx0AtZcjcG
	 LPVlrGC2GhdGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE26CCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185459376.19666.7637013478604182255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c051acb1c6523807f160473e79c9c9e7ec88e6ec8409715146da27d3adce093
Date: Fri, 19 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781854593
