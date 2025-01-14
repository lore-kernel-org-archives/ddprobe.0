Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394E61BDC3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736822754; cv=none; b=O0RIckl9LUELC/mONrRZCpt3DLWNFHMkfko5lSRKmk2jPPScT6LgZKRWlI3dAOmD9Up0PMdK4R6Dbd8cDaxqsp8fIPDY6atvKgC+IIRXlqNeEhkazfCIaiX0ygT0JSub7bo1+W0rSFDnD77JEPRph231BpJ6mZx3GeLYY7xnQ3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736822754; c=relaxed/simple;
	bh=mGOE5QBUbspmEb9ufDZC0ZJRBvEpOYb1my9OLUknSvk=;
	h=To:Subject:From:Message-Id:Date; b=f2YUl3TDizKPg5yL3OJta+4oh3QCCcNRUxrDMkuAfDMJ/xxGPf/PZskuC283j+bKHZ5pNZERd3T82pwzQsKnVoxMzu4U7lc8+3bHwHmLK7X8OvhZcbn4GUx2GiLVlr7ymft+hh9TY0i7l6dV3AMucr1nxzFRRjxKti3N/MreOmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoseYSER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoseYSER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CEFC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736822753;
	bh=mGOE5QBUbspmEb9ufDZC0ZJRBvEpOYb1my9OLUknSvk=;
	h=To:Subject:From:Date:From;
	b=EoseYSERph+3liXhsC5+tUJuQ6bom0+K2hfzkwQmFIFIFZdxpS2DOydWfNf709YCp
	 8BIZLwnRORH+AB/MIx5oKfQ7IU38wOb38S0/uUQHC8/rO8vNdaCVKBI1WtDjLhDfrJ
	 4Px4+Tlzm8Dm0o/5S5W+ivSxQxZ7fQ13/0wCv/YwoVoseaoOK68Pn0swHm7eVgIe4n
	 d9ft3c7WpNTQkGfOdHsYyCtEOKk8vVl/ZQ2f2gJjpSpFgcWYfeb+ux413nl2q6hsu9
	 QAJWyMkgC2YIz1BxGrWeaT45UamedidQinInEhP+ff33cr6H3UW543EJzeQy5XfYP4
	 YcRBtpnmMgUUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97516C02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682275361.11959.10903059123786792638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e18b217d34496ab5262effd9ec4a8e2f70b2ebd79fc4dffeb61fdd3164df4c
Date: Tue, 14 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736822753
