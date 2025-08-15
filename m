Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DAA23C503
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755227994; cv=none; b=ZLCimNPodXs3HqLr2MmG60XbbBuIfAu57vKtyKfupQ94mrOPfNZEzwH+nurmyFPuGyTpDpRzzQPLbeyuBpUkEcJL94hEi1e04i2EOpicC0m/rDMx214NXGaLcznU8vIU1QgaQYNknnbi18XtwCoJJAYdJDJV6HMh36PQGHui8Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755227994; c=relaxed/simple;
	bh=x4l892tPD5MLxe2Cms7dArdGthtvHhq9IVRvuivjkj0=;
	h=To:Subject:From:Message-Id:Date; b=cETqDTGEcWzlW7tU85/TMaAG3LicN67yoYSn6qnU5OGHtzWR6mJJRDnJ/FOzB4/8u9v071R4T05N2Oh01FiY2jTOvwW8lZ08HCpSvhvSYi4EiQzt6GYc0yyOUell6K0Mys/mSMxismxBeQ+BZcMdlzu7EQv5wE5FwadgiNYbMU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyGIzRGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyGIzRGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A667DC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755227993;
	bh=x4l892tPD5MLxe2Cms7dArdGthtvHhq9IVRvuivjkj0=;
	h=To:Subject:From:Date:From;
	b=PyGIzRGbHxhmHLXp7BJE0J9Qbh25nbtjOA0rG6n/wB4h4PI2I696DPBym3b95n54O
	 np3MiEZlnIB2/ud38pIbqMxtVIUAhN/k7wePSHbyKbqsS/KcSJsPwPLRJ0Lx1dQucA
	 r3v+cXHEDSDPcQOmTMALUE1mDSIJUEdtzdegIyYG/WePUf+O0ad2fyhmq5cPJFbTq6
	 jtrv4n5NPfU5NSle/LMCctyQVFejQndkipQ5jyTcTANj7t/vfQyzLJszyn2XU/X9Jg
	 PWax0MJPP/lyNIKY1NByLRMV8TNRU/vmYg2HHA604pEOz7dkt60SAvs4OnZwS8Wr8j
	 6l40PAHf9/xBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93880CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522799358.9111.15472266328638273250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9756eb40e5f070bb1366465a8e9e9766784624b4e33bc10a62cca7ad98ee5d78
Date: Fri, 15 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755227993
