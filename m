Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269082E62B6
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743731395; cv=none; b=IWYGpiEN1Hu2CrtfbODkH/zqgZ7dFVT2Ayn7ca7QtzQYB09mdq+R244hTkt/DanKku2SXojdkiXGQ4euU4TrhmMNaqzPgXdvVpr3IdIzIzTYn+tAWbNFFWfgAvHlngVqk5qYCsbtRCjvaWRR6NkivImCrDF2NEY4Qb9UcKua+pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743731395; c=relaxed/simple;
	bh=4ZbJCFgJR3pX91IsTX9jWXINnXgZ+VpLXqlrTeyKt+s=;
	h=To:Subject:From:Message-Id:Date; b=nY5KYS0bn+QoJBB/jduq1eoHJGVgIWcLk2fsGBr7bF0kuD9f1m/9yHHfxKIuqr68k2dt6/c6mmoVc9WuAM8LHEfYYQ3P5vIAV9PGy3Deos/LyaeifwklQv8TU/z12SvITjS7w9R+3OIJkllayt5KdEZCgR4gCyTNJ57lV0vrFKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnDhO0z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnDhO0z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00AAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743731393;
	bh=4ZbJCFgJR3pX91IsTX9jWXINnXgZ+VpLXqlrTeyKt+s=;
	h=To:Subject:From:Date:From;
	b=jnDhO0z5n6XO2EcT/VoNSjdyaAb+mN4mMdgVLaeF6YYJ3v+E9M2ym866dJ/ihy37x
	 bXGIYe6E46LovQ7NmcDgV+/4jmSGdKe/ToFDQIvOJJUTBW+/eyKruXvDkncAVi0c/x
	 9mnLtkqWDCPcdZ7ewpfXSjzQnZPDgC7ZSFQ/c0SxIiLCQ1Ez6ON5WqvQs+gGDinYi6
	 R+X1ris3RQVWOZpQUkJXW3sDaLZimrKr4G7KS6am/DBeNJDCend90NXpqelpRBQ5Iq
	 4EtP1FPcEXSKoVmAX1qXvKTEgB9/rlwLw9xDLxr5Qeeq3FZ9ZyXrZmHrNhMcXVwtTB
	 oskETL7o8avuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E92C3601A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174373139358.27884.12114615273814442658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d237ccca3c2c591697e8843992650476b1c407dcc9f319bf3d3e5541b6065d20
Date: Fri, 04 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743731393
