Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C42C3385BC
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784260114; cv=none; b=c3Ls5io3uVGapUtruc0U2ToR6/OEbZGqCd2Ogbf6MXWQubK+f08P9ANIf5oXw/JexBOGiH0aWztcHk7LTFo1hOdjnVl6Js59yC9sT4KITR0+rUltnlmUBnIO5WPDPSwuxSkHTHQxOvYeeM126aUNpLGjxWgM7sXJQXTYOW6F4gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784260114; c=relaxed/simple;
	bh=j7KcbzkXP1KTvTAZsANYJSV2wida1fwT/FIBH1cvozo=;
	h=To:Subject:From:Message-Id:Date; b=XPCamdt5m2K2QYzrfYzh/PY/qyphVgEgGhqGDnKOViJyXhnCpO/TIefYMCN/4p7WAijGijWro6VQ7+EjuwiXBVYaLZkGB9l8dQ3KXxb51dNVzSmXplyNHwySvOuzGPaB2ReCKrp/70YzW7LAxTByLo7Sw/nRiCm/aLuWTFXUWTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXKjW8ge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXKjW8ge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4F0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784260113;
	bh=j7KcbzkXP1KTvTAZsANYJSV2wida1fwT/FIBH1cvozo=;
	h=To:Subject:From:Date:From;
	b=GXKjW8gelLF1TpWajUJ31NlWURHw2Gn1CPiuosOFPMobOa4/K4RtFG/GVYFFFnavG
	 9aBpIRj4auOit0oybI+Ek2JF9H0fe+vumg7a53mg97j/dkbtYGzyGH1aUaE+LSlvPd
	 22dUjuEV3eQj/x75u/rYz+kOkyrLW6hXn6lL0MBRoDi3N774fiAnQE8gw7hVMor8ti
	 pmzmxBGmxeKOKSYVG8ck+2FWIx6XOQ8nqndzWIy+chKcvK1Tk2ZA+ApKw34VWtDU9t
	 tSkqJYr2Kr6rQP3YZkOhn9tTox1NwZaAIByoHAG6yyGOXJrWp3ZaN6+0yppOvMhE5+
	 9l7SScZAHYcjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8913C4450F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426011368.5082.9746096430534565387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6a3517685cff57ade4cc17d5ae6471f5eba19a04b02c668cfa86a2a01ec15a
Date: Fri, 17 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784260113
