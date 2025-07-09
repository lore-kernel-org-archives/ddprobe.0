Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F7A1F956
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752091793; cv=none; b=AbjSNeKHXZz9bz6qsva/lg6xh2HrL2eXHnl6qDpsCfUrpYkX1NSbwLETpGqrLtaW0U+xhbZaKYWfy0bGc1M+BX43mjf41lLQoIcCQCjkJiVyU9coXDFg4XSqThI4sMEnBY5YMRmriKlz0KHPBbEhuuEvTdEzVqOFLmkpwhbGjI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752091793; c=relaxed/simple;
	bh=c4ZDRvNG3RmtQ2HxakXqZWTGp8c+cny+1ZiP60B5vPk=;
	h=To:Subject:From:Message-Id:Date; b=qYsLv+VPGlP6ZtgAJxq8h2LW+e87eClQv9CBhSA0wlQrVcmaBtW2Wib4VlyA+Sy4+HCSZ9rPMOdAQk5TXV+yDVPatwUhdYwj9NGZ5pforKWQ2cI1PBOp/fsTRffqdzKLmoJZZVmpgZRcpQb3C7RYdYLyzrSitMfWDiB2vYtFd8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I320Cfux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I320Cfux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A216CC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752091793;
	bh=c4ZDRvNG3RmtQ2HxakXqZWTGp8c+cny+1ZiP60B5vPk=;
	h=To:Subject:From:Date:From;
	b=I320CfuxfbFzVdprtuboQB1x4AhHGsscvYc9kLNkXDggx40wyaG7XaIwspjK/rrzr
	 K1lVLRLBJvI6lltlFsLzxoN28+i5h193oNV/w5Zch02qwnF3uTC1Dy5r8HQMlPFP0X
	 EOCQZXK4pXqNR5vWTLzJyo9azfoRRfbnu/BG1IkxU6bLss4OVF+fEM0N8OW1EXgu4T
	 FfJO0OXfcLKin+mUvOJcHtzN3Hmm1M7SdqQdxlG1VsG3mJapiR2h3HP06FvFrmuWvr
	 sc04+z8ByIg9GygU9uH+niXheoAz6k/8cP1h89gEYvCiRn4s/BuYHOqv7oZxMwDxXz
	 V1dfYU5SVX3dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E0C83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209179358.2956.14125229116245854151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547bd9576de2e2d1cac778f85177c2177150b49ed6e501c403bbe8a64dd437c2
Date: Wed, 09 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752091793
