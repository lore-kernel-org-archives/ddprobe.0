Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644ED2BF3D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788432034; cv=none; b=AremjJchdLRhAqkdMIlMb2z9WysYa9boxfRq8DNjTMOZPCEV4Xm2THvYU6hAr0tOrJNDUk/oF9qLbzz4JQV0X9PbjD/356cp6BYGHQ9YWrbqNKvr17kwbaVmgjoxjV4j39bwPrzftiozyeNIgQHcEuH43/2DX3GJjpbWokff7TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788432034; c=relaxed/simple;
	bh=/FCEjW8bWLM9ZfXSu3NUCi5fDyaaaH9QArqyDRtSaho=;
	h=To:Subject:From:Message-Id:Date; b=uhrIWcFqQx1C7qiqUgBrgoeCK0R4aScv6hN/kK9wwqpiU2BLGYZKDKbj1Efk21cCKyP/wkpS01/FPCrHJ5Z32yA+SERHozlbMbLfC207zIirBXNGQZBQkuLAYZyYw7nNvQHtzgYTUlY42ZXpa6gUw5tgppBf0I3NDpEtaNseP2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJL6I132; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJL6I132"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB20C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788432033;
	bh=/FCEjW8bWLM9ZfXSu3NUCi5fDyaaaH9QArqyDRtSaho=;
	h=To:Subject:From:Date:From;
	b=sJL6I132R67Dyh5ZqHFOl2uHEnVqtDN1ipO3Pk5heURLOZQoEgurC/2UfaDA35uP0
	 EFuPs3Wc2nL0hXZFhOhUimfS7lqduO4sThHkpsIrgTjQcyMNUm4w5xTciiaR94mEFL
	 yrcL60KbeYxWsFA+pAhCVM4/7eHMACFiSFIWzb6hgMDgFKoL7UETyXYDK1YjbbRCTu
	 f+PkVmmmBK+woV8QMB9FWDYMWsGKA+gxqWmv/rGCor+ZFYbzzwc50QoUM033y16+DL
	 QqKJOCiOzAvbZOWEwMAJg9iTNhG728H0q+RJ08GOVcsQrSOirAeMVFHzcL64lYoW6i
	 35YRqk8GRMZhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B7FC624D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843203373.22473.11040655741098178241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca17edda1553712963136777b0963f1a937a2cef192f7f8fa7f8a7122befe615
Date: Thu, 03 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788432033
