Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0472877C3
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761060594; cv=none; b=K8Rh+p5Xx7fCjqc6cUsrIe8/erksM7Ng5E22mXbLGEO3y4+Z8/pTPoJeJij6uAaf2An+s7/YHXY320JdrgZxp1R2B49fniYk5cslqE4Vgp4nEzbPzjVfhVOn2GLJ/ZTdtDPh5A40xeLHO5BIJkENQev+vGV/tswYESJ5JRnyk18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761060594; c=relaxed/simple;
	bh=wdR5lV31u+LMvj/EfQdTyRDVgCOC2HNjB0RbFMkv3rQ=;
	h=To:Subject:From:Message-Id:Date; b=Vv0nUFObDXVdDCkKWLTAzsPvFS9orDklr7VsuBW8i9bJBBEeH3Io+vrDkfk7tnr2JuYQxt0t2Nj/lTshjImReSokI0EZz6UuxuhcX5KbLCy2ydUvMPxiiUWgv2FRauBZbzkFHCMg6LQfRMpErX23ruHk2AF72jgpsuHyN9Gollg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzxIi480; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzxIi480"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AE4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761060593;
	bh=wdR5lV31u+LMvj/EfQdTyRDVgCOC2HNjB0RbFMkv3rQ=;
	h=To:Subject:From:Date:From;
	b=RzxIi4803SGR2AawfP9Efp/Cerc2FHbXXiVJnfzcz1qiIAmKtl5/7rbfp5CkG2OYN
	 PPADXWyaaDCp9m/TkykJsH1soi6f0LvUtQxUEXa4WXcVsa/Ec32pWLo1uV+mk/TUUF
	 KyaFluyU/CVYA/ZPRugHllMwrwS2YA3xh5U42jrvWWNoi5PTD8xXcGJ5/p4yimcpeQ
	 9QsADus0iqjdaYFK199GEJ7TIQ8LO9OB8reaCbv3CD0nC+JMtX2fY/B9VlcYZ3YYCn
	 IHnIGlmrdlVVWvVXOCBn6C+m1M28XUJA4D+OF2QAkaax4DonbD9TCq3vqKsE6EULvF
	 dur5NQHPyL24A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90295CCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106059358.24306.4658284355377733134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2817e9f91c7d3f87c0ddb9c7534798198bf230c862c410c79e223c88a6775b
Date: Tue, 21 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761060593
