Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00821143725
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731192954; cv=none; b=CEHCL2PS7NudCmt7ZF4E+YNpYECJA6kmjov4drO6A/i950n1dS7OV2IrGCHRmFSFBL88pe/PJVmBCJSPlLcwVGfLxoRw1ggxPJ5TIk0iSEVJnWsv4ZfIzYRHrORq3ONPqR7pWFQTFTddnzaQ3+MAEB6LL7/BUB2c55VTulm2ciI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731192954; c=relaxed/simple;
	bh=5NKoJlFsmY0nAvqhzh3VL9i38JX+6wVHX5R8bQ5DE7E=;
	h=To:Subject:From:Message-Id:Date; b=QQKUOOx5G+dCoKmg+ZikQqneK4pvTq0q3eWJfr646nNlax0FsT+ubELmRe+262gE7EW4nf7kQZv9sm5iegkGW0R7fVFl40BQRluseObE6cLiEpXSEGQzI07xNzbBl1c+YLIW4g6vC/r7Iv87VJSkg3zDVv7WpVfjszUsYbkJu8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbU4bcRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbU4bcRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB14DC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731192953;
	bh=5NKoJlFsmY0nAvqhzh3VL9i38JX+6wVHX5R8bQ5DE7E=;
	h=To:Subject:From:Date:From;
	b=XbU4bcRJ4PmWblX9m3SKyIAFLerp9Juu6vXz+6WfVMwOEstHB17doDrcJB3FJ/n6Y
	 13SL3if2quW4n/IFgWCrBWNod7m8ZLFYYXvu61ZogdSDHLyV5Xr+oXs9pa4fM9BHW+
	 qfawGhNo/KOPT+7LJKWSMJi3EyFrv2z1g25GzmowckR+DJFX+WKOl3RRm7Rukv38DF
	 KD4DnX94OaJ15zQ7XaEYjOUXy28TM3O+rpJcOq4W9EMdo4JNqGU+HyJ+abQUOM4xzt
	 r20dODRQxdIUxvTgkt5hZMmo5hcvNPjTKcVw+bJQpC3rp4UwQW/8t3kvqkDocz4K2O
	 0pikr5vyR3VmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBEED5E387
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173119295369.6951.10367825197018686196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3b896036fe024d91bb5c9374c4d7f26e52d53064cbe24602167d7363c45f7e3
Date: Sat, 09 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731192953
