Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1832F40626A
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777552654; cv=none; b=s38PF5TlVUzQxwNBFPAgaDxZI/sdspa8L232ZRHowvAdniQqdQcK0xL2R1rx2KGEFdLyG94tO4zlCqc46hDtHMmSDX2oj7G2izIW+LgqSqILjgWaVPuW3shGwvlvSIHBCFUARFbdiQUtXlHEBSla0gdoRdlHBhIKTI707eZ3QxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777552654; c=relaxed/simple;
	bh=7q6k3n+XO41F7kHorh3TFp9x59ZZw3K4GY1C0nL01+k=;
	h=To:Subject:From:Message-Id:Date; b=mWQ9zEkt1eQulpUYIJMNRxz+j2iV85wER2iy6VOUX3tVO4p+1U28LReEQ4Xo3eSn4t2IHWKi1Rwzgpl4JULDXV2C5GmhCwvJG3xWsi+K1wNDlNL01+kt9/rQ/tTAI6nSb75KGeaZdcwhQc3dEpIgFvloOcJIIS1Ud2RFBjALCvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/6FSF42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/6FSF42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88DBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777552653;
	bh=7q6k3n+XO41F7kHorh3TFp9x59ZZw3K4GY1C0nL01+k=;
	h=To:Subject:From:Date:From;
	b=a/6FSF42T+eQ7UijkcwZm+exwQ6cEtLjACiZxg/dsNQDORDY6AnZD5bAUrUf5CJbj
	 lMVXXc0jlUUBMtwUSCOerDBGSkpNPF5aO/u8brieom0W/q6p/1aGFLr3tximnlzIpI
	 tdxoBTc3Azjv3jNYb/DPmteR/AAjGMpcEeL+O+x6KGZUbpDzpMHwMV/+S6rNJCpCWy
	 ES4XsyAnrAElAp6neKg7ixvyyw66SS81YhYjaSkZ5agjfor0yUF0aEgKzg+1n2g7rx
	 R2xXwII1GpbcF4Ruk8WsSpgwk0ANJszvPMJA0Xl0TSpRjg6+nbq0/xU/ujgr/itjDf
	 MGuOWZ1rNXBnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA624FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755265368.11834.8174116057427985954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb444a40e8c753a0e70dab960f654fc2672dc4d73266dfc5ad60c0514d206fa
Date: Thu, 30 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777552653
