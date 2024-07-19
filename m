Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326A32746B
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 18:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721414155; cv=none; b=ev+dXiHOVmbAptHuzpCVICLqBfl2kVxa6tefjLtYsS3MlBoG+dLLzWTmDz9Z0CLewfzeKHb+LtVph96H/V8knF2akXrDN2+6UK+YdfKR1iahB41ElC7PzFpOKSHPIy+V8TyHWy8IhTuXg0zkDPX2O/rMEES9UT3j1biqliQp9s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721414155; c=relaxed/simple;
	bh=/c2YWq5UMaCQ1I182pPx0GMS5QC54plUeYH3w1nEM/c=;
	h=To:Subject:From:Message-Id:Date; b=HtvRVEnO1MgfMssfX1nMdRXo/Cu418MGA51hBr1/1mWx7rdmVWkWFONi4ieiVPN6uzO9FAeu40Rv5pQ9G7vS6Mu7MCTx9MRgMJajVV4f1LUimpiT4gVifw7LuqCTUMN0J9HY29rrHB1zldeb4oIITJpJtTYYT6aKseh2uhHOw6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gecqWW0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gecqWW0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AA9C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721414154;
	bh=/c2YWq5UMaCQ1I182pPx0GMS5QC54plUeYH3w1nEM/c=;
	h=To:Subject:From:Date:From;
	b=gecqWW0/dDo5/PfIG6IBgb07XAqXkW5Wp/SW0A4sNh8v+Lc8okYsGI6szprIMl6/T
	 xTcEibuJTCDFvlD/Xdqyj+OGNfUXaVMtVec54VJLiljQ/QwibCNI7uYdK5dJYiU9rH
	 UaAo/kEIdnjaAZ199B6MeZ44U0hjbkrZogc4MsVmskLbM/gQ0l+SVkBC3cFiXOE/6b
	 iEHKMN1B3iC9GZgtgDH+TcY4HJtdpQ5AZp7aH9hNjXiE64h6h7e/y0hYZwD7J+1mMb
	 VsF12KVFAK312NLyqs7oRsXIub1mTQj/wtJdmdN6rRSh7qRatPnmo8z4xhlo+74s6f
	 6+adNXlJmZz7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7693C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172141415366.17408.16447540647430371549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff144f51574831297689e8c499906521573d10fc9f8482947a3cb5e72de1774a
Date: Fri, 19 Jul 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721414153
