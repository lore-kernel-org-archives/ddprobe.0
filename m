Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594F73E1203
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788416434; cv=none; b=pQc6nUbCBt1kMhvtOtmb6Cq0JlLSj2miN7hrThDZCGbk/mi95JwpdI4QalNsUL4eYGXUxdXpcbWgHAhJ0xu8OUVCvW/N9O5IAas91Zdwszd0ug+3J3+HWNob1D2dJFAGQDHPiQ8V9/eJ48JixuKxmC1qKE7baSgINtOuzqRxKRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788416434; c=relaxed/simple;
	bh=5Vroyt2Ih2/qh6UKH9sfgmPdB7UU+feIOgQDAxr2aeI=;
	h=To:Subject:From:Message-Id:Date; b=ZfVp3TyYj8Il/IYngpaNRoNFXd0a4yAXCbirUZ3Sh5lSFvloKfS2E1jXnnXFZZFmeRsJpGLjMm4goPyvdgoGeuPIbpDGc6/yrAn/pVm88eXGLjVl1302/ryhQDTfJlmhz7SLbIxSkSIIHQqwKz9doBTweNkMCWSGtr1IeZ9qmy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6018CZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6018CZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2DDC2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788416433;
	bh=5Vroyt2Ih2/qh6UKH9sfgmPdB7UU+feIOgQDAxr2aeI=;
	h=To:Subject:From:Date:From;
	b=q6018CZMxZcmoDEKB1HWbKp0YjaN463g/SPomRlob+d/RNY2yCSC2Iq5Kf8GOho0x
	 aOhCp8peguan6yYPAGJ6mq5z4mJKhN/ewgBU+zoQuNkGMHsyLJqr8LDHyMFGRxjWh+
	 ThWCNJ6CFPD0LDLKYfLAjhO0Ta34ICengODTwxF17rKB2z5AA1oFhisObiEOpBUmIe
	 fMAiBYxb9EDw9fCKKFQhzKNsd1l3gL/O4sbH43tjVwpxbMgla6/hJBpc3GEwOxb/TF
	 QHRu3ktPKJdzSPFYg4epdcqGQYTlwZFKzVWIv91GXovMlZ1iV20ooNgvEL+DYuIOp2
	 9Tf6I9HErLRYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB14EC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841643369.5939.18388767620247644781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed017d5e3e09f0f2df183292d0b6e1cedefc1163852422543fb7b35b1bc34326
Date: Thu, 03 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788416433
