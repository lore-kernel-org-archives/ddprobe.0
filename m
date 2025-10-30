Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470111EC018
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761816594; cv=none; b=BffP81tNJKRKwXw2qjXeyzHaqU9NnEgh7Mrqgh4+8SXGm1E9bBs4o7/j+vXp8C0732OmRzazrFivXGlBtOFLg8xx+tq+fa8e5PMiqblwFdWXiADLvyVpv50U3Olk/1cK8QgDPM3p6xygO0xOtxw/n+hP+wnDmg5/WgIZYXv50HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761816594; c=relaxed/simple;
	bh=ZdPsd5AZbQd7IybfUOBDDrvbiBLyCDD5cUWwDCGAuUo=;
	h=To:Subject:From:Message-Id:Date; b=Ii4+uxU/E9DZxPsRuIMKu0atZ3CiQZKCT2PIVGkgnedxuBA4oo6NePO3x77zEkV0FmTfp2QyB4DAko62VP6TQJq4vs0tpanLQNG3bJGgaDCJUzp5uBdvtkXokRtZOq1ljBiY4GxzSHQ7RgM3zBeMjUGIkNrl0ZeplUl0gknmuBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F10IGb6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F10IGb6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA422C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761816593;
	bh=ZdPsd5AZbQd7IybfUOBDDrvbiBLyCDD5cUWwDCGAuUo=;
	h=To:Subject:From:Date:From;
	b=F10IGb6/tuA4Gu8xBHxKUkXF5FmLOIT9Be0E6LpVxzFGy2FWRv/bJ27of0M3c+2em
	 PkcxsSMTCrO2KEqOO+jFs4I7VBEiiB4AlHBPqFIlD/4zKJFmrFcImF8YT4CkOeMIF5
	 ZHvZ+vA9ODUgVnQr8WDSDQk7UqFvCFvKz05JA2hI5sXuHAIHvni4389yoXg3NammLs
	 ddTqTC0nnW9uJXcgAtMV19FANhkFWuVBhk1jGzLb1POT0wa4iidHu0rGa7DyNbRGgb
	 YS/egjRGYAfry7z+7VUzZ0q7XxDHVPUtTPRER06cnlHpOc/6XrdXC1ErEjrfG7h80i
	 RvLnUnw+HWvBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90629CCF9F5
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181659358.5314.15517114769937899040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf9082a7295a13c78db6cd85f45bbaff3eb36c685613a2f5a4c3ae3a3e49550
Date: Thu, 30 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761816593
