Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6B12E419
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727973354; cv=none; b=OfPzZlBC827CtNnW42iU/8fgCtsZcnWq8vS3ohMIwD0N0DtzeM3FXGRCrgBJ+vtL+BsiITANYbDB9K3X1iBDgaQBvBGQsI30tf/5oagcyGKVpJW2lXqAhn5rtPLuXN+S28QBUX7qMvD1c22A13ifvx8ScDGdqCGiHyT2cQ8K+W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727973354; c=relaxed/simple;
	bh=H/UNrfuGwvmCPZm6lD2FmkuRGch96veA8BhFc3PkAPQ=;
	h=To:Subject:From:Message-Id:Date; b=eowODbgkuUjkYWn00edGsZ4iOxG475DY77dK4ZjQs0a5cwpqydCWkwkJcXXE70yjaAJZ3PTEX9/XZ5rB0jcG29sEMotpfWU+zMhZ2d2ew/f8C/YL/+Bpo6kjgMtHZna36oo7Bgp0OkhGLbankj/FIySFMpg8sMfRjmkNtr6ojZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ug1gFAS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ug1gFAS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB527C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727973353;
	bh=H/UNrfuGwvmCPZm6lD2FmkuRGch96veA8BhFc3PkAPQ=;
	h=To:Subject:From:Date:From;
	b=ug1gFAS1kXUpri9z6Al7z8kVu71j8IwTw1z5ngvzbhtLXIa6pockEEgXTTMjTmEWS
	 aKPZbYau+2cMn1q0TRCkLeJGewxoSvYtaYVOXlCaIOPKT0gsqNjrfbqrakS/J9qIYC
	 DcOTDeml0s8/D7IiGkEzpIaYO5CBwRJOto3/gjjtFA0ed/QlCKmKmKsmRd1NsqHI2A
	 Ini8pPmlHfMlzQHfJa37VdqblA+pg8xUjeWBRxW2ubOmPCsTWRLADs7gwnV0P57Qu6
	 JemRVJ5F0IJIHM01025oS/lgx3S7rSE2OZ8VlIFeAIwLAkXSEBIONHg/HoLryAfXjX
	 Fk1noHSc9TzSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EADCF34B0
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797335361.28337.8026142379367601310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbefa0107217c27569f640693333fde9e3b1234bd5c78c796423f4cd137425c4
Date: Thu, 03 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727973353
