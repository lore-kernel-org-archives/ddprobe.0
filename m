Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148E3263C9E
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759438194; cv=none; b=nq4VsUsufPjDrIe9s/P9sewqKAFZsjS6pFWntUul3IlnSLttaazGuJH/hjzMwLXp+NuLy87kkAgNZDt+usEqHjYvqLnGzMtxzxQIE/zb2eqt97N5oKuglb+aJ8TIJGBIcWSHV97bizwacegbXoCQkJrZVTwz98o/zn25zNiXIH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759438194; c=relaxed/simple;
	bh=VLjZUvRjRzRNI/31O1ojoOhhtCqdmou9trv/t01qzuI=;
	h=To:Subject:From:Message-Id:Date; b=HDBgCQU/QZvpUP4Jih2ly7VpqeJax7Mn6tjgzXgfLzel0u8BrKmDz7SHFsA5jRhe0KdCejEutGHVjH6r0VrPaundICr9CJnECpt+thp+8zW8iocHcBcLyuhGvH9jXCJzdKyT+PYnGF/qytlUKLbfNr2Bkc8lCZwj22juF/ilzr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwQs5g7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwQs5g7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A868AC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759438193;
	bh=VLjZUvRjRzRNI/31O1ojoOhhtCqdmou9trv/t01qzuI=;
	h=To:Subject:From:Date:From;
	b=FwQs5g7AbNsS3evbSjGmCV+jzdONDyQYi/DGqxqBMF8f7/m9p4SSlOOzVguKOQUGU
	 c/faHIChsQRLexUHSLvAwdC3UtKJ9omcwkMqlW5x2RFxc26qntyXy6plKLAXdtajUj
	 EwQ3RRlUpKdBEW1i0f8RJc9FlamUeWvgRsN8fEsV+Q+R5MaflJxyJFc24QCw7O/mNj
	 k3CP3gT767Nwjb9lo/TAvRJALunulbHm9VXEVRiUiakrvKlMF5GE2WxYMVnLSP5rhw
	 yFeXSBQdcnPavyLgeB7Hjo/wC3zuub0HTYzu4ygCcZoLLb3SK8ypbxoGg5PBwrg93d
	 6FhpJ2AvLoMog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92198CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943819358.4848.8599283234783653637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c56a790285799dbff9b0176d0bd877f49c15fbbfb5f1349a13f81c43ea7493
Date: Thu, 02 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759438193
