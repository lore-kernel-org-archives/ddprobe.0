Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B043793A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773834293; cv=none; b=jfc+0Ww5RjPuHKIQR4WlrrfpsLq9g2FR5jUh4Zbhb0Vpw7EKAxV5C+loYlhHFrzeG5x89+rxoUeXsvm4Icb3SKKtBz/PIgqkDhgBZogBCiYBF85nji+5UaBHm1PNeLBx8BUBZZuQtIPt471dS8+NK6UmEnJxS3FlWB3AdBzushw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773834293; c=relaxed/simple;
	bh=0CeF4J3h5fh0mMtqx/fC5wAU3zW+jRaPXtIO4p936jU=;
	h=To:Subject:From:Message-Id:Date; b=LPT4oKUK2tFSZirdpNTsNGYCpqKCQZ+3mvRkFZpIqN+/yaFXXCL6zwqyBd2okdCzU3INcpAfeDpuUSL5UTZ0ijQ39SpbIqU0gwjVuFmK86Jw/e0wB3mrhW6ASTP+XynKfM54sG0mmmyvExi3wrcfjrF3xFSzKdCwck+xtqkVQTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ny0EbPMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ny0EbPMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC4C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773834293;
	bh=0CeF4J3h5fh0mMtqx/fC5wAU3zW+jRaPXtIO4p936jU=;
	h=To:Subject:From:Date:From;
	b=ny0EbPMYoqH+34cPhF+UV/Uyfcfa6Y4BYafdQfyhgAdrzasQsI2ePT+aB4Qk3zWEd
	 qVgc/DxGKnWjSVk1YAmFtwuUmPIt+Dmsp3rBwr8EYmW/HKsodA2AEOfRIeIIpS7YuY
	 vLVYwHoWLfgy6ajLyYC6V+riJA31BRdI842HuYPBCkKOZSDxERF7zOhYplSU0cL3vF
	 BHe13U8GtsyYcwYpfj2rjvhGp0n4BvudMU9wHVwjHvHonDJDIiaA6rgKLQ0vM4YlUA
	 metikxXoFqArq9yBKhALvHK/HQcevgi5ccAXduGi+xhzxR5nWuXU0mrYVBAPHNwTlh
	 JIwXBi/cNrU8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ECD103E167
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383429359.4791.15702088864516076828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a232e86cfca87244d0cfa95bf4e710bc7ffc0fabfe1a00c2e03ba774bcd15f
Date: Wed, 18 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773834293
