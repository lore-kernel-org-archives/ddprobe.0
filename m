Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4505118FC97
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787905834; cv=none; b=j4TcxX+1qjhV/FAT7vlHSi9OAzDOtVu0XCgPrkDSrqM+2znkgKOPE9WSPzeUmbzYMOMv6W6FYAz1gx5b0GCXIhDI2RJ7e/ekJyV0pIQYswCRHlzDPcEa7sYmLRukcx4NU6uhfwKVJOHuWig7TbBpjgiinSjC83a0JSr+zOYpUYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787905834; c=relaxed/simple;
	bh=TfwfnsETO0MtIErkY1G4esWZXIAG6k7SX3AAI1+pIBA=;
	h=To:Subject:From:Message-Id:Date; b=pycsqVcxAn29kdF5kDDaLs1/amn1Dmo+EBtSz8AooJHypdP1+DWvxNxiMKKBsFWooDnpa9Qto/eUErLduN87UNU2O5i+Y5jtLlxQc699FcOElCe0J3UFxrTqgb/edyJ9ELWnz/wZrP4XbF9gUGKrOVOJHhoz6YvHuYKRNnqeBpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DowWcBMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DowWcBMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6ADC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787905833;
	bh=TfwfnsETO0MtIErkY1G4esWZXIAG6k7SX3AAI1+pIBA=;
	h=To:Subject:From:Date:From;
	b=DowWcBMWjvUVBkuXjQsoLE05HVOAGtXYniyztPh+jLd7eZH/2AOLNbTg3qtL/LFOT
	 VqLQQF1mg+VjS0pI1qMd3Ra1v/SlHGXYVlU9MBkI9eCa2QY2Oc3Q+GVVR5ThbGrnOL
	 366qVYfJc7J3Gff84MHcdRodR0Y0DwobwRUjNF3kLt0Sn5aNOW68w5vrs/LWE82WM6
	 XshIzHaSUExvxf7w+cSNgqQJKONzAL3XpjSTkHgOUbua8aAIhlROVSQp/xVSYE8mR/
	 p6xLvaX7d4Em0QAGihXP+SLQM1Qt2fK5nV0DlNY+o1g79RWuQGb8ZDeoij5objBTjj
	 3ceEjcog8CgXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6E1C61DC6
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790583368.30558.17036458453653671880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846eff59749b8ea74c97b8ac7f4f27d545d43b7b24ad7de3e2b13425c24f2471
Date: Fri, 28 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787905833
