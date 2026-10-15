Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9920B4FC329
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792063834; cv=none; b=MlbeVRtjnVUBBAVDqAVYNsTP+/RZI2mo2pRjY2fpfqwGz1mqGlETzV6rIetLj4JRj/eC8AZtIk4DoPL1Xnuu183Olcmg6gCP22kxIqxkeUhlNBAYLVxsFsylJb8q09Ipyks5xz4daPwtGg6I/kPsaH88myur9O1l1Fgyufz4l+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792063834; c=relaxed/simple;
	bh=NN0ZIo/Cvzge5MLNYhg0CKZHGRRDfH+a0kgxuejldYY=;
	h=To:Subject:From:Message-Id:Date; b=kfh7KFB7JiZFLtuXhV8OIgkBOFsIzt7dRDwuRo/1GETf7Do0K+cNAZ0IOCHdbCAq0koc1l7joBbhftJrYwI02dH/ecYgjm8oPy1+OBdBPagm1D/Y55T6rSysfph4UueATnWDuaGwjV2pkKagamGqvAQ/9zT8ukK/vin9X22qS4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeA7CwoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeA7CwoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D016EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792063833;
	bh=NN0ZIo/Cvzge5MLNYhg0CKZHGRRDfH+a0kgxuejldYY=;
	h=To:Subject:From:Date:From;
	b=GeA7CwoTtsBux9FCO8b3njxoZmKgipkkfFE1EoHZCwELT0n1ZAcIUI2LSEgMQc/x9
	 6A+1407h4eNYiCEM0mySyNkp3OYtZG1Vvbo71myNVBjoFjLZTo/kmAhz6IZ6PKh1gv
	 bS4V/lrAT6HYnHkU0GcMlxDcxPChIvF5iyMrmMdv2a3Np4oqKoSn6xUJTQGiBGugWZ
	 whZLREif4JMm8DLjH83FfRWIc/+XAkscjGQQluQOmhECvt/o398uDwznFnAxNFI9Q8
	 1DV4C4JRtKgD1RiFM1V01kIBqWFws3EaEH1IF7ZZNKwJbHyE4NRTItQeTjiSnsTe5K
	 3Z5nFZg4rBMZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA653CC6B3A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206383368.21968.3221471747505856229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6f2a4f46622a7175bda79a6f10e3f747d2502551a822f73ac0757bd769fb10
Date: Thu, 15 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792063833
