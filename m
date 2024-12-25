Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B881DA21
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735145154; cv=none; b=M8xnmzsjMeZo5TpfGqP/tBMLGhmvC0UtqnoZIm2fT5v7mxaFIBuvgEjVmt8Wrh+NTXNz/18olj2NPgMwQQoW9ZKZOzZr6NAtOfUnaEVvbfVttJg2R4zVG4Wn7fIAxcfNQVTFuRh9e2ekjeKg8H6XqRMsLXCoYgtT4wGH5HfJrZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735145154; c=relaxed/simple;
	bh=vI3fF2oTArdZP69DcuEUv+x6VewACGw3CWI/igw2Zi4=;
	h=To:Subject:From:Message-Id:Date; b=Ck8+tad0Ukv1YOu56WFDri6sKamoIwSC3hBsjj1oLl/ZwZnKJR46owXBgctjJmJTVK/AVRFp8r7kH8pa1Zll0V5Y0YbWQe31+je00ug5ijzuIant33RHMQp0DOmt20uqL00wfVaiJIRgMWWshYQ1G6ixMjSeiD3ttFgmnQM6RYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpQsl/0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpQsl/0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEC1C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735145153;
	bh=vI3fF2oTArdZP69DcuEUv+x6VewACGw3CWI/igw2Zi4=;
	h=To:Subject:From:Date:From;
	b=NpQsl/0Z4C6HSlh5yRRfH8SNnboqbkPXLZrCHv4G4JNn5LVy/9dW0OsKVaduDipLS
	 81+aMag06XtGH+9EgXViGM2WCDzyWSmnpvgTVsZt8pSNAQ2BGJkZbHJgxT+KyN4tGm
	 lWXNHUiamcRW0Yh0DwdGN6xzCgAsv89X2fajn3p2GJpuBRAfyBU/YrgIoVn0/fF4iB
	 WZRnxUc8VtS8GXTaCQ1Fw25M7+XsIskazWQ26QTOc023v7r9Yf/fd4Qk0/wLLVCpH3
	 cJi8YFSgI4W2M7BB7TpwqUdbN7ecC03N/GPk7SB/Iq1G3EhnlmJDpWDiwcVMKvv9Zb
	 WZe6PCzFJPndw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A63E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173514515359.28264.3048597587714992591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ed84e06bcda7961677d9b76f53d68d8da9614df2751d68d8f2151ca449d2e9
Date: Wed, 25 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735145153
