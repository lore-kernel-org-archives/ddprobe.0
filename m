Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8C15258
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741657134; cv=none; b=Wbc0CC0l0vcbN0g054eO+tpUQJtlckcp4fbfoGONr1P6J8B14W0eFGRGYobZz0sjFD2IZO73rEaAriuUne6CEtAhukkA1WKryP9yjOsBbCwtFk2w5M+vITh6l7dq9YviUk1y0KA9rfchpIm0F9f1CL81yT4clX/WEhi1Hv8jejY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741657134; c=relaxed/simple;
	bh=F96YPhq4YAn1Csqtsgq80e2czY2TO+kABuXVvDRQVVo=;
	h=To:Subject:From:Message-Id:Date; b=oTQaeV0wTtrZthIX/X73DmbUm5TSHQumyBjOHzK05cMNWNj+AJzQESKwMZPPbh2CMR7S+Js2VSuntpfJGrLXQGRVvf29qn9acYOpjMmj+ow10QCC1q8LRyl/uuBvhx0hC0Iuxh3RzLcJuWYrHaZez6B1fytzv0sLhsT4AtpDFMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnJhbgq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnJhbgq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2589C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741657133;
	bh=F96YPhq4YAn1Csqtsgq80e2czY2TO+kABuXVvDRQVVo=;
	h=To:Subject:From:Date:From;
	b=tnJhbgq0SS/kdKQJG/YnrD0RmcGJx0wUliWIH3srF1xanr3vd1fggBtjb2dw/QpTB
	 s98TsBxexczqDXHx2yNAjzacy1fckrM1lDLn54xHT9nogVsWe/ocQHcbnHzYqcYn1h
	 HcQtI0cnKTHPXKdD5vhwXSWWBzxE0Xh3mp2PV8KZ7QW1hu8lqQqrdDVSu7ZhAwe6s4
	 9GHOk/c+TNGovtF+0MfeJcVZz4gwub4AP8hGPYzTw4+OWslzbVj80q7g1AtEKA/yAr
	 9Ohz37Qq7DiwqwO43wI5JXjIY8MWbfWjHs5St7nj+IY1yo4ThGLjEeYHBbAVtYIl4d
	 rkZ+qTTknN04A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9FDC28B30
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174165713362.8673.7373140748812109572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2892c476789b9dc4369dbecf64885ac843d8afd6a5710197c1b17e041bc677
Date: Tue, 11 Mar 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741657133
