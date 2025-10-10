Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFD74A02
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760113793; cv=none; b=JJx+JPo2ikL4h5v0EpMDNGQZ1BPU/PoxlFBBIL8BR1jCoj+PSoIi/7Avc1rYLG4dHQDs1Z/uWT744bYSC6TmMgFgDd//hMgT/nVuDm9IFL2HchMVCD91TSBQaFvn68bRTLNvLugutyyHDSGOH3nja5M/0KzdzI/UAOcNynqrAwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760113793; c=relaxed/simple;
	bh=U/yFRkSQBbIMKnY0MUIgb3vNhSYY45waIRJPpWIFGus=;
	h=To:Subject:From:Message-Id:Date; b=E4Z61TwurMl8K66xVQ75hGZBAQigf9tuooIDPxZkILmhQy2hGmbiUc+7weDwsnuuOXlKVchbZMsP7t/Py0fQtZ5UGleeky+P+N4X0On6JF6dEQiemttswZdQcCmg/CU/Ik24MXnpS6kSgYLxFnChSLrcKEKC82Ht1u45B7Y9ylk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pA1vhG2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA1vhG2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E77AC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760113793;
	bh=U/yFRkSQBbIMKnY0MUIgb3vNhSYY45waIRJPpWIFGus=;
	h=To:Subject:From:Date:From;
	b=pA1vhG2EwtTxv2VLyYXB3HuZ3DV2A/ySKFHW4bbMkYVy6hTJoWGMAU7prC8Pzb3bM
	 p298tLQBtAYxTE2sOu/hkitb9tBuQI/EhW5x/XupFtzaHmVVDpqBknNxMsSlSNSJ5p
	 d5pojndnrj8u5GbKJSFis6YlHkk8+9+anAsfnbdMs19X1klGmmHcUvAQQXHvu/0Hn+
	 5AwXVIaJsdmHKscTGVm5ZswvSvvB/ImGIPG5dGlwhPFeNbIvthEXULblBsB74vZJzi
	 8374aagbfDl3qcBsN3SSRZR7Q2HG4N24AstPYLHwnO8WcoYMnT4B6EMFSJ/sGuzEDf
	 lP6nes/iUTJQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FECCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011379358.15667.10382132006293890923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2a2b99a2b12bd917de738ff06040d38980e73833fe27b55ddbc1b0dfed81c0
Date: Fri, 10 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760113793
