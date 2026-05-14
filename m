Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE911A6808
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778733034; cv=none; b=Teon1MbrriWfNHYQ9WBvbrngzH012NKhA5hXHZvnELUaYPHtKho+CyVXXvz4FP3H15FlvEjsBgkCYZDhYMEHETBNaVhkxMJZeaOoWT55HLqeawKBgmXnQqau8LWlUr4z2o0IqUeUdXrNxUep70jTA3A+27pwFwGAKDEipoXjo5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778733034; c=relaxed/simple;
	bh=poAgOijgRlTE+GSDYDUkvwWFdn8wAaoYXWLYJ4EIvGw=;
	h=To:Subject:From:Message-Id:Date; b=b2IIHipwA5rv12hIoS6KNRNjWkrY+CdLhlr3AvnYB8tBUV3bKJaeQLKZ8OXpICoFp+bzeDdf2/afnd+eEnDBRIQnZfWBdcDOxxPcyi9snS30dhj8FLlN1KSN6OnAkFVfkZ/8b5ai11TfMFplkxNCh0lCMRpEEcENYrtvN9icPr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i17kAwes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i17kAwes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A2EC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778733033;
	bh=poAgOijgRlTE+GSDYDUkvwWFdn8wAaoYXWLYJ4EIvGw=;
	h=To:Subject:From:Date:From;
	b=i17kAwesxF+OuDXX+fK+5KqRjNFUsphEXirr+d7OUtENGuteRerqs28oj3+nlennL
	 eISeKXFyCDgTT7ThmIqQTXafZmyWvstH4HV75mPQI3+pntx4YhzfaZAgMt8Ga760q8
	 JYOTon994sBQWwdGlVr2lrEZJMgxtxqLPAtcVCGmcJSySCZWvwKudWisQLbZFri4gS
	 OMBt7B9ALR+FmoC4LGU4/T2HGcginP/0NKQ/X11v9z9yfndaPElqMAffMxusNYNc4r
	 x+nJhLc7n3lF1ErQ6xXpIWjtp6KDcC+NDcZJwkNcqmUQRQTqVi3ecEx3BJF7gNTqC0
	 on5v+G3NBmA4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50CDCD4846
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873303370.5867.157495307672913158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c33361b78b9c6756cffe96f2e137d0455483100c91d1c00638d3f88d45282e
Date: Thu, 14 May 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778733033
