Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EF720DC5
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711099697; cv=none; b=InTEGsXDxwoFc0gNXzdblFHpdRfVKJpuz++/GeGmfJ9TXxXFVBpfDlOKwg4OiQ6c3zzoxOCj66sP+pZ7Aza3vtf4TNNwocGej06tZ3UOF6qr/pX76+m6Aduy3bDtbSitZUstW7YaiubKXPJjJn7YMObdEO9NZiITuWvNecerwC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711099697; c=relaxed/simple;
	bh=PYsPauemtzO3anvTHjseZeF0TrK9/QlP+dnQV9+6QBE=;
	h=To:Subject:From:Message-Id:Date; b=igYDvfaban0N3og9Fv6b1NjGuEX7FTld7Tk/g8kOanxHRCngyQ3W6/Eer//+CG8RtvH0+kBmkSp9IwOvTVwfCg2mwWJI86KDg43TELUMIaLkhKJ9FpB7/8WUnX2klyPJlQKnalvbzBO1PYiyhYz12k7jsLziRmtf17ox3M44sGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dm07QlwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dm07QlwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79796C433F1
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711099696;
	bh=PYsPauemtzO3anvTHjseZeF0TrK9/QlP+dnQV9+6QBE=;
	h=To:Subject:From:Date:From;
	b=dm07QlwQ6nYO79oT59kNxoyRrZYwLQB4UA1IkVsgEbWy+h7zmIL5rs5yARlqEWPPs
	 /Dk4Yuh9bwiFh5z+t4/sgayXi0obOwZRcEDvbz90N18ZMcNFNsU7eQCGNsIOiTlTBq
	 SjIttlt6DctlvlpvXyv60+1DXX0954K8BJkPgTCJr3grYfJwRXyQE8dELnwM4osDHb
	 vFegJhD3MAFzwFslMjDlWyBsTx1ErAzZAvXUHW6ACjiyIRQ27qg9hPFkNVQcvRbzQZ
	 60MPhWnLUoVnhdBWwXkZXNNOVis1+qe/bqklUBjCjJMnlSHXIRWSNBY9is2LRJPpko
	 aJrujEHsz+yZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AEEBC47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171109969642.6376.14006938149305246130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d88c142fb60fa8834e030852db228d84cf995ed4e623aa44b2546b78094f55
Date: Fri, 22 Mar 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711099696
