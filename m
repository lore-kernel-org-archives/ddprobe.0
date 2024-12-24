Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B78519007E
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735031754; cv=none; b=hpI81xdRUnf/8DuIEOYDvRMRs48wfJoap07bJEuL3yBywi+sCOyHHurJBLuiTq5r8TRtdIx1KaakExNAdRbNDk5wyMJOHCdlYf+VQWbYkx8okBTN7GMWeCDteZ33XCEdyFJh7+AAncf2VTjJjEIzVENo/WyerhZmBHECCKEOmP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735031754; c=relaxed/simple;
	bh=CRKYtfxqjgfjP+nXD2cb6sxuVUcvpxlb+RPb8qASlvA=;
	h=To:Subject:From:Message-Id:Date; b=YwDcKsbvg8BDKnWMgcMlQtOISe1LkCBU1dWMLjMThJqNLySFPAIzaxufF0xKtDhF3Hcu6Jx9yj1fmS6RreF5qNOVRRPvbmeuCzFnxEpgsajfGXKYvjRLq6gdPNo/ZWVR+uUJnqO3Q1NzjrOonGVI5dHY1/FFgoWrZiJeHohSZDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFZj4wCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFZj4wCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5FAC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735031753;
	bh=CRKYtfxqjgfjP+nXD2cb6sxuVUcvpxlb+RPb8qASlvA=;
	h=To:Subject:From:Date:From;
	b=NFZj4wCjcofYJ3/cXlWTpopooDAK7oOtjCos0QjnMVoOvfjBVEQkcARP6OP4gSF30
	 +zkkXM4wjgL0m5ZcB26Z+6qEnVloRDqn3EslBs/lBy7OZo38hqDWLS4e4lNlDitDRD
	 VjAcu24dtZEDAiBPrAvCuWjTwjvKGV162TEIkD0SAaCC6yntzAUadSmRQsFGrQ8yif
	 l1yLZ/+Yn4y4E48r2FClx6pVJ2BUBSX/snh6TlEQlMge2uHcKFsTWl6oFkW/WuSy4n
	 z5bn1lDWgj0ne40ncsMZ/Hc1T13AMaKw89Fe9a0nXre9YJIKAlDoHJ+nQsNSavgSdF
	 9s2CztXAM6E4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A46E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173503175359.26686.11146777208412631785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fd5f6b2006c524bf5889aebc7265ae01c294fbcdc2c4d444fcae663ec0d7e1
Date: Tue, 24 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735031753
