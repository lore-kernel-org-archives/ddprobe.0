Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2210321254B
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759590594; cv=none; b=csNzOHYQ55c/TXz7IqSrnP92Vry0hVJeaLq5ps7XWpMJg6c/AEUSb/456hmqWBgDhAbpO3ouLMEw2cZrBZiHWrMxMKOl/jmI0MVViqbGnNzSw72qW+3UwKTipZf45xW5lrZG0s1WfN3byCUD4eBJ/Bddq9sOPwl/NFSUYczKw6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759590594; c=relaxed/simple;
	bh=1zc+7PKxn63ygl3PRmZJWA/YRw2HgPW27x8R2z8M38g=;
	h=To:Subject:From:Message-Id:Date; b=ojweLN7K4G5+MStlJC5KZmrWXBtk2iwXgAL62j9uQFnBnrfOhemRXPuxaoRJe19hAN3arRmZdPC2OTe7vL0dDrES/TGxjUYo3br88h9s9hxp4R+2ehW6SDaMKyHwIPiaRXNfgOqSCKgznpcLzDi3vRvbd+aOEKkXSH6iGEEbYwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tc3X8nOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tc3X8nOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7495C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759590593;
	bh=1zc+7PKxn63ygl3PRmZJWA/YRw2HgPW27x8R2z8M38g=;
	h=To:Subject:From:Date:From;
	b=tc3X8nOr9lI1TBtC0hfRnDCaoMMkRxjJMkVnRfa6PUah7aYLuwD1x7bajnv1cruYx
	 hFAYMDPsWYJ3F+AkhMhR5Qx6UXXSoS/GRNlGE+BBQPSsMYzIkMhHGn5u22XGcsOwcq
	 T9ck95S+U+o7IvTrvAv5z6qdraRVqAsBIQspha+c7um+8fT9rtRvquX9PoNZN91l+u
	 KFmv3HEk+XObhiYUiU+2haUqovvZLleW6opUf82dO1elP+WUsz32S22hCL2u2w766Q
	 1/raoEQLuXa08U27hzfOQbItdrRx9suriHzJllWh8VCDcJbFw4Wj9Kt5NQtOxSsXmo
	 UAqrO/R7n72dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928E4CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959059357.30333.18368827506029681575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c10bbb3617c890b5248eabd4400a4dae3b6b3774e58404a5aa05eec4c433739
Date: Sat, 04 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759590593
