Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA401DF269
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761843594; cv=none; b=ErCbZV9ojnOsJKIokWfM5h82Vcbz6zE6rHkX5xQryC6UQFnvlxOaONfGqBImD63Q18tok5wgkRsDiAMcOo423rstlevZggVQKXTQk6MIRLybYy0/L8L7Zd0UFyKoCOyj/jGtOAzY/f3JQlKO4mGdKsHNK8q44IGoLUgSw6mOJ4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761843594; c=relaxed/simple;
	bh=iqRKntiFGBwtRLKYzz6ScdwxWnCt9X14fKD1Yb3OVsk=;
	h=To:Subject:From:Message-Id:Date; b=Tu+PAIf+6wI0KzWjHpKQbouF3Zj6q+kUX2YwRJw9gJ16Ih/bIj1ZpltV4uZAuMRwyHZDvZFQr4bH1CwwCqLZPMer5T94KBaM2MmqrNRBcENbTUnFs3LgZzFCPsV54sHO3g69fjyfnKLHRGr/+/KYvIYUtnu02+lCjIcoCH/vZVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/IETDP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/IETDP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D42AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761843593;
	bh=iqRKntiFGBwtRLKYzz6ScdwxWnCt9X14fKD1Yb3OVsk=;
	h=To:Subject:From:Date:From;
	b=u/IETDP19dMuxIQMewerGrCxLkuMBIPaWyuPmhiWPpFK7ryVYrZ1JlxV5iJVqH1Wz
	 74qr2kwIJ6fnnqUxNEeeR+t5LXF+n6oZoFmx1eM2TmZzdfd3/GuKGqJa9uWlnDLsJt
	 ii+IfxdFpe4qIaOKnAi9sh9uGy0FpfiljD59e3VcIwImQg5AFB1V7ej8fYW0FC8PV/
	 YP4vn90FEk1R0omd/b6jO91MhB6XZq/fB/E3lgOXVdKta7DgRFeerwxGQgRgqJTBlV
	 wnFp5p8UygtsDbvMHaj3Gt6VEnELNVFjltdH/Od1CxqyyamMGCp17z9bCwKcCLyt6u
	 8iw31BCnisf4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905CBCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184359358.30350.7948331036196955993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59e4cffeb142ffb7ec4d7be3d805fe10800011559db980bad9c7f22e8f8a613
Date: Thu, 30 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761843593
