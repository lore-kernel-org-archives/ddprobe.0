Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443B91D86FF
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745068195; cv=none; b=WcaPat74WPztqDRLzfHQQ4kqjk7PQD8Q9Z3XeBolZWoj74Nsd8D4ZV/T408+MBSWZoh9SnQ5BzCaxVmwI/Tt16vnadzM3Ne6jBSpOGpTnPO/6I4QcIjnO6pP9KAFpeoxmy18FY2bBSQde53hfNI9+TJ293YtIgiq2sdNW1yc0Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745068195; c=relaxed/simple;
	bh=W1PwRSX383NOoPtnNCzCfVM6H21nJXFZkUIokkK0jxk=;
	h=To:Subject:From:Message-Id:Date; b=dt1d2U2IuVdYkSpUFPDPXA9vYeiu6yPj9BK/xdsXSZpeGxRkP7SNVISa+DLXgddhiBby7S3v/NhS9BlANlO5MHTnLfkuPrMWWCaqDdswNR6/V6PkDKRO1EBvo+dTCAZsvhyvtKHdkd8FOx3k6EEyDOm2N7Cilwou0yczcSHCXNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmddU9en; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmddU9en"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BEAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745068193;
	bh=W1PwRSX383NOoPtnNCzCfVM6H21nJXFZkUIokkK0jxk=;
	h=To:Subject:From:Date:From;
	b=fmddU9en3FkIKPq8+/KYUADUQjuNdHLYTY1vf8IJiu35gBw0hrMlhxbKDHPlnLERF
	 GDYV30xMZQ60sQCrxdztWG8qT8W1G5VTGBmY3pmc1g4guQ/J1eVGvndHdrEg+mKz6z
	 hNbzPLzgj8A+WzUaULyZHvVYV/I/a0SLW9aeIM2AMFml3fXFJ/dvBL+HMrvZC5I348
	 3V1KJMlEbpPEh/W2rS3T7A6c8o0u5h++cFuRh6ap+QMpsG8xMXMVuNHgdASN92WtXz
	 z3bvdJvXhtltCEKO5AzMQoH8txM/fHloEJYdu1v8+bujsl54SYu9d1t+waesx1iSZI
	 z8b5KMopi1VDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9234FC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506819359.23961.5420771725527088769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c1cc09691d98cb07e617215bec13297f6bc1e3db70e181a4a153e1222e4f66
Date: Sat, 19 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745068193
