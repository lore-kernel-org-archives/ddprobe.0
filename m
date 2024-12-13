Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8D779F5
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734067554; cv=none; b=EbeBci/eCpZ2kaQotCfLBLyc2i5SWrx/ld/60FuanOAAIapxc4Oq9xq3jC7YsxpZJPVd30pilg83d1CU1c2JXU9y/52oeCUXbxtQZ6KQXi2P19otP23gIyPIbIuTUQXyuKUw44RNRppw+DCg+0ulFTdM8tCMMZrzc8MOZ7JQUDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734067554; c=relaxed/simple;
	bh=HPLRbktDiXnH8q/c6x6C1+sjJDpx9WnpMQS3dcOKQaY=;
	h=To:Subject:From:Message-Id:Date; b=IGjDhUNQ1BYJZvXq+HApSREoTSTVJOHTxxv5DLfhQA70/3KiQCJOG03bv35HjGtdVuTiXjHWYMPBXAy4gaFthVO6vQ1fg2emL8Uh+41BqfA9GfZPJUfys91M60svveC8dBHx2SMPNVGu9sDYpQSg6lWtSLu3Bpb8dxvXaiVbkhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bI9YAOO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bI9YAOO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16F7C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734067553;
	bh=HPLRbktDiXnH8q/c6x6C1+sjJDpx9WnpMQS3dcOKQaY=;
	h=To:Subject:From:Date:From;
	b=bI9YAOO+I7QMple0pPXjftGtujH8alXOvCc7D0rnfNvRaiBcJ5EaEltdfCnUyO7MA
	 hkmQ8pDh0KGzHsnRNyY8milTosBtaojCuQwcAczRsENf9a3b0CZTpT110JTp2rBhat
	 DpnkboD2d80okSp615MQHDAj6AQ4DWEjfkjqi7kPxjs3xcAtifWf0tBM8Ds59AthwW
	 9XgEaJKtlNM0Ru1r7Zl83bEklxcknOW4NmyFJVjbTxtrQM0VhYrqQ3vJpYkIATC2+C
	 6AibMs2xbpc0QIMSVOG9d/gcjKy9f0OGSfnCi03iw85RdKDo0Cg//cDMyOlDIIwDCa
	 WlUcfiI3Iz+9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FEDE7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173406755364.23820.6237168441204025275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4992df7b1cffa1d54309e58a9c1b831722101ae7bd9af57432d744c6a3b7ca95
Date: Fri, 13 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734067553
