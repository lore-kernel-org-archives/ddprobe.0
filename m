Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF981CAA4
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716575003; cv=none; b=Hk/Tr7JHoaUerfynwHKv7q1kpQHd3hivHXgtTNDaV9m2NMJ6HezGqIIRnn0a8XIiDJT6mJMFopmmpREjDIl1P7iQlvSbl5iRXflH/OdzzQdsBkeHTtqNQ+UOd8MxywvUwW46ReMzeTIJYii7GqJ5Y0ON7gxTWC/E0XVS8TaUgdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716575003; c=relaxed/simple;
	bh=gZg0aacmL49kE+y4li8tv/bytQ1szFMqqndZyFfV9/8=;
	h=To:Subject:From:Message-Id:Date; b=UNzbinpreWOJltWi6BeBs4gnnfskS0rTdY4wc7zkifOM/Q0aDJJNNfx3y5Rq5lu+JOL3/VqVYbjw3X35zZ2A52j2+Uehgq7YOVMe5BLVMWZvuPY7VxfnKVxFQXmTB4qzfv5xIh+Yb4uo3xQmoa5RucQxWpbTtEkjPHIB9PervlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVQxt8dq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVQxt8dq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D263EC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716575002;
	bh=gZg0aacmL49kE+y4li8tv/bytQ1szFMqqndZyFfV9/8=;
	h=To:Subject:From:Date:From;
	b=pVQxt8dq/KXEEN1TPCekKlfcHXQvQapcRIerA0QyzkVhAlcgSUN869/US9AXCoyAU
	 +MM+ITisikXfGftIXN3p5of1nbHDRe+q4OjHvaZqacb/hhVccZXPWo3pE77BsWxCzO
	 xOWaW9Kr5Xns+BeK8gtx06cfnKXYQkPeAPP68FYi/ykq66uI6MH9mGrYdw0IRVqDvY
	 6wxGUCJAF8dqgmfDe0SuT1VX17q5ni3Ic4yLGE92yQVPpJ1xl9+YfA7eWMqOELHYbp
	 GFS1JeHAz0isNxk5HwKurLisqr1T6/qtQaGqfvBiPC/YAu/VuAn/Eg0va9A+5xE0da
	 vyz4pC6QKcGsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B1EC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657500278.4582.15525920230301713748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8d548863a20d9feebb51bea0608d2fc6ed38244a6bd88962445f79477b13d0
Date: Fri, 24 May 2024 18:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716575002
