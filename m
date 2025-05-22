Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6CC1EB18D
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747949994; cv=none; b=Bm5biqOPVIV7LMBRv79qaUMA9QGIBnVxtdfXagTrKKkb1sww6PsaP4mYo8O17Jxp/N+ddtYLZtrstDtB7DTyVQ6NpEE4cj8164jeeOcl/7vd9Yd9+nnS/MywKBSbKbr57BqzBWnzZX/WI0FCMslcYophB/fRrVFLpD8zBF7HIfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747949994; c=relaxed/simple;
	bh=9UJvppswjQ5uz+7NI3PHWeUGn3MSgKaI0NLVZcQoT7c=;
	h=To:Subject:From:Message-Id:Date; b=pW8m6APs2Ga4w9zL/Hh6mBx1XCXyJBED6O5MF/mLXvuInD7XA0INxIKy4ZecDsajoEsEKOl2hP2glyMNwTuI8IFArl9afE52O+YxLah663pZwy+ZaSkUgvFTTdkdNBbkC+3XetyrKFIqIRsgvk4GWCGO3xB6G9SWtHwHsjnS2iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnjDIiio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnjDIiio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27F8C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747949993;
	bh=9UJvppswjQ5uz+7NI3PHWeUGn3MSgKaI0NLVZcQoT7c=;
	h=To:Subject:From:Date:From;
	b=rnjDIiio84/sUTrEb11tjRH1aKpsYJ1Y63P8wxqCcuNlYeRUOi8kcLvJGHJLJK8Xb
	 OGPbHIIFZf14hIuFlJvtliVmpFXEfVsPtliORP3xzqkJKJ2j2Fn6eN/S0PvksRxBp0
	 a/gRkg0DYVSy7jcAJ4qOEd8r/xFHnmduKQC9beY+GCRVOogt+bQ0mPjoekQ6pU2G+0
	 NceqmTpXa07MEwDRfGOpVRamr3JZgePP8QeyJmKZoRMQUmZ05qpPlAUXg8C1SgXDt9
	 by26zW95NUPwlS0X0qIyaV+iEchiTYmTa+NzSIUk9X4GwEx61OjCP7Oa4ApXdcscAy
	 AMK9+y4lqIgOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F4C54ED1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794999357.4808.879294265227612503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edf2637d3463eb6aecc784bdfb16250633acd61981e3ca1da676960ce269e88
Date: Thu, 22 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747949993
