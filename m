Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207612F619C
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756202994; cv=none; b=n3Lmi/clv+Z8LH0xM0u8drYlX22cBWcXzA5MLN5Pe80fx7k762vVumcR8lXAwZrnT3IWbL1RAL0rE2KnPe265UT3XdlzsCe785r+pH5et5vaLtJPo378xh/O8YOeVIBdsGydpmrDl8Lv4VmD661onq7ONGg/8szjmT4ZFVPKJrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756202994; c=relaxed/simple;
	bh=dDJMQ16b6lWBFJGFiS+rCggcesWMhQrIj458SHh7Sp8=;
	h=To:Subject:From:Message-Id:Date; b=QC9Mon2caXQxduI1yf9nYbIzHSij1XkQOPVcPZJCfrIE2/5yrn3OrgodZe77SeAtDKPaI0HaKdKsb2VTaqzsYuuQM3J48w23b8YyZdSItrPmmfp19j0J97ggXgqWea1v51M+e46CHVU+lqLk42Rna5sxiXuu6UxpNp4ldgkURGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2ttcIjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2ttcIjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10DDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756202993;
	bh=dDJMQ16b6lWBFJGFiS+rCggcesWMhQrIj458SHh7Sp8=;
	h=To:Subject:From:Date:From;
	b=l2ttcIjHvEf4tBaQ4wsNsVn/hVmqTsaDGTyLGYvpPndBZfM+9u9JQuW5HN64ZCO0H
	 gKXPu4bcsA69hr9/qS14n3CABj2g3e79NG1ZkC185kAyQAEQDzUIicO6o/h8oJeqIW
	 sd3xXzF6wVWcAunxu4xt/FjdMcv0G0TQ9hp+yg4/VfRIXOjRcOu5rNfzg6fKMUmef4
	 2o73f8qCLBQXK+oRVO/37gsfz7mdT6MJCLt7h/jn8dJqBPzIS7z3msWl+shGrOhqcV
	 79/Iv9U9oXvi4k3PT5P3JygfADtZ6VShiBtFQDdNdqsJEtvN9wvkzFK8w31fSbxV82
	 Y9F9v3mVebSkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F0CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620299358.18929.856257213288296893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ce787d1cbef5f2b4e2dc8ee2360aeb2e62d5a8869f6b5e18c297195c1a1400
Date: Tue, 26 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756202993
