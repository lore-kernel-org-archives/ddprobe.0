Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB142D3EEA
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770500633; cv=none; b=kV6YXC8kY0CvWr/uCjg33tH8DOKHjUVkLlqmgO9YT1VAJAbFJ80gq0a+mdIVL3lXYCYvHXewGqXzbe4260T3InJD59vz8K85MX+QtdHAdiGgBp8rrKAoFpgNeJ9z3YeNMNMvmRQDk33xvbyLe1kuDZA38vY3ey0KcKmcPb7AEP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770500633; c=relaxed/simple;
	bh=+AzH044g/a/nHvoR+x1s5FYcg3PNrF8HrFpRJM+bNFI=;
	h=To:Subject:From:Message-Id:Date; b=UvIDdZI7DjlVzY68tm5Mh2x01fpy1VLTmiDAOZua5qEZOLIr8GsJVGKTuxcUyWOPCIkuV2wv7ARyWMtVCw9GSNlsydTZvt2e+AkTQOUOBDuyvoipt0tnHPe7ELz9KgqrIa0unNsZWuce8Ry2Ctk4ABd18LFbKXvalj2q+CNFRCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NM0Qn/dy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NM0Qn/dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA157C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770500633;
	bh=+AzH044g/a/nHvoR+x1s5FYcg3PNrF8HrFpRJM+bNFI=;
	h=To:Subject:From:Date:From;
	b=NM0Qn/dylqZ2DngmEurCdBKO+vf6Fb/6pn+r7oPydaX5XevGoVAwXqEg41CwagSNt
	 VObvsIFBfAzPiRPhuZ5XG6GgrDlQAKDWgPxBzlPKmbNfX5JtPQKBKL4OTvzSbJLygT
	 awpeMaU4UVVRD7L98T3Nj1sX7POCTzHk18fuzKB7atappZubSxR/quBXn2og7c9dlD
	 zCL6rluF+6zn0DgQ4B2NU5EDigbWPSPGfKMgV2e7mzA1CqxhA4e4VUPXN6mcAjM/FN
	 Bo2JmHescYSCdQTKQkAOa0u9KXyaJH6S1nN/aJqqaKRbQh9LcBt+PxpvYYqVG+oZIU
	 W3Xi7/HNqiqdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99116EE0AE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050063359.1198.3767124910146070425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a0388447b537bf812c458941a157b548c8363a97e50e31faff5faaeba1de91
Date: Sat, 07 Feb 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770500633
