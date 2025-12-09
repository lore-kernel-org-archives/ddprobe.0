Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CA8274FE8
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765271574; cv=none; b=pafDcbh65GuU976PtyjEI9WCnjG9FdyxQ0Yg+gzkAHP4q9ouie+gP3wgFNTqO18dG5sGNDiakmg+KENI9CWoptIUxaBTf/9DUey5jtOwcj+bGzMZEH6wuwMoCAe8l7oMlrFy9hAfhNVxPeYimeg5LILgg0RFI6TKOrRQxoeuKDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765271574; c=relaxed/simple;
	bh=Q7RQGPfFkiJs/bHL8BzV/INJg41BU0YwOaKWFickQbA=;
	h=To:Subject:From:Message-Id:Date; b=J5oWdOy80CQ9MlOF+gj3QVgf1PtdU2YxEz3IsqFbWYs9U+iSlx2c3/TshLjhyj/Cjoi0yQvl2ubUoakS6GLGo0akpUA3e4m+uQlF9p8Rr+BV8xz1P+5UPFmBl0r8UlCRF3BTF11xf1OiLoXrncgs7G2hZh2hLXHxG709udaNVYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEqD9i5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEqD9i5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED24C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765271573;
	bh=Q7RQGPfFkiJs/bHL8BzV/INJg41BU0YwOaKWFickQbA=;
	h=To:Subject:From:Date:From;
	b=mEqD9i5s2sUf2qHdChUaZlUz8ADiO7M/RrgNs11xv3dGns/rkTutO2az40GywtW60
	 D5Q6ofXoPwSRqiyPKeQtUK/FHSldMgIVzvtwwi2Y5ds+cPJXU2y9XnylQksOuh0kfN
	 LSpcoJRFDq0Tq/hw6ZcxaNf/kcOx3XCJp4uXKx94eHUnmkaS6u0q5kA0U6U4g6dBVy
	 TsmZz1I/mI2y6e1B7sIgb0QyF0Eu6xZjWXozCHqd3CFRLXWIlRcBZnSMWWaKztpNoN
	 mxMWHZokXLNtzR7/Y4Ja5aDuTYUgBeTjskgUOd8enPTh9B9flUpaovnwA2PSJo5yJt
	 uVBxo2IjPZ7ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E80BD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527157360.8140.10214198064075000264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c5d6610841646c3f040f111d885bf7dba0c3d6c9900bbe0da379f6a5b507b7e
Date: Tue, 09 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765271573
