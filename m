Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F35D1EB5C2
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755802195; cv=none; b=Sv6c+TmUvJ73pi6PTVlvihOF0yjqC9wX839ae+f6/cNQr89dSPAFWngK4PLwtC2pcDJvaUcnCuTT+1jNMXYT9tWN7DS2+6NRDu8twgoMGY25OOZxpqFJmbC4r1HYD4xLDudASOBaUy2dCtCGrxcgb7Uz7zN5y+QEUfwIuI6tZJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755802195; c=relaxed/simple;
	bh=/HWZi1CWS+cBmdVLQ6lDSYy71GNJaGPx68JequDPY2w=;
	h=To:Subject:From:Message-Id:Date; b=UEIrNxE/W5wvfai/v81emhJVbxceE13rwiUkw+rVq1lLQP1tVFpXYFHFLu2FhlyTEFAk0xRyS4dB/XiPLzEng4RCkftLCYj3tu/I5ypEy13dPyYpUrta4T3dTfrFWYADso+YNnud4QHe/Utdl7IHIgeJpeYxgdl0VHDjYNZq/Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyEtYBQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyEtYBQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A74C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755802193;
	bh=/HWZi1CWS+cBmdVLQ6lDSYy71GNJaGPx68JequDPY2w=;
	h=To:Subject:From:Date:From;
	b=pyEtYBQl18yd6fBlcoAcGbL7dSumMzCwpHwrvu8z36pg5Ard98evLrSWxQpkeZv0O
	 Cao5mygEtfDrn+w8xW7Xsk64bp5sFTLW5uNRBpvBy+jXOKkt97pbsOL/QCMGXPRxiJ
	 nXhmXvEq0OnD1xUtu65Vaj2K9viby7Gr+cNM+/ucukNmlXzTuvEJdkhm085wJlbiXU
	 kdSeNVBWGmuEnGQNS6W1p0b+0xkiUlg62EOxqIh4ncV0cXTG3xKmjnDIssyi1lTsme
	 zEI0WjZB2e9CyYRXcBa+QDOUEXTetHCMCmtUDqrBa6p1dxN/rNVoe8rpWQ0o5hhbGz
	 FYDVqX7o/3FHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6C8CA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580219357.21731.2184995371701651312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eab77ce316d4e38fd7ab98809c6d656f9b186820cec1f442295a0fd452e87c4
Date: Thu, 21 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755802193
