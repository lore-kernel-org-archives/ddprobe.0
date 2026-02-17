Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CC036F415
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771350294; cv=none; b=W9r8t+KYKuuam9FJEa5mSLsHvSrtcm3EXqXiKXkUhEVLctwm4t6lhNA2lIS7KM1UytKEbRpK4dM1LsZGvNGU6n0/D3olQ6J2xM/XA4EyFCLj5LCKra2BgX3c+xYsCPeCtF+W599enlaXCHDBnroRxWALAgz+qB/GfpNHkOaqsKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771350294; c=relaxed/simple;
	bh=H7UsrUyKqoKK8FVEGDadSJRHcheN7riXgiqy98W1Un4=;
	h=To:Subject:From:Message-Id:Date; b=F1GjMAPAS3v/FKATImMpfOo+zamLlrSHgvoxZmmsMjn9XX1/koUUaRNwvU9dU099c7r8zEgW4ZIbntw8x0ArN2mfYJDKO/GFEvZpFJ/qL6y0KYsWMSu0cuSYXPfKE+w9PQ4T4qGVKpLUxkTIGe7htxVZWFJUZekASUnm/nz8iOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJUvFi4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJUvFi4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DACC19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771350293;
	bh=H7UsrUyKqoKK8FVEGDadSJRHcheN7riXgiqy98W1Un4=;
	h=To:Subject:From:Date:From;
	b=sJUvFi4A/u09Oa+ggYmEZaYV21BpMfu0eNfulzTd38k+TUpGZ3f4nmr+d0n42mjbj
	 14CbDe39fNvTIFKRBUb9BxQy+H9LJxJGxc4YwG1ye2NcPKzY5FQrezy0HKkIuh6EWx
	 cQPaz/iVaEoSC2YZ+RGVher/eP+3uhwkV7GFCpOaD/6VUpAqaheNv8HunOTV3nsMpJ
	 BHX8OQNFUtOMcIrANxqYVWtsjnIy2H6lcd/qXz1idgFLERdFwA4XcoY3iBv4KkTOH3
	 IgEt9ULiHHspiL3Eq0uKF6IQEMSwrjmMsKA2GHEmel3InJEKmHiq6GFhZDwFc0DWjO
	 E72roIHr5B7gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B9EE9A026
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135029360.32609.14529258204202171430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c2bc52f0c43bbfc86c80f0d1bb92d2820d6ebe48cdaf28d3560390e505f9c5
Date: Tue, 17 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771350293
