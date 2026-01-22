Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C5A2741B6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769081634; cv=none; b=AZTDZYReNsj2aCN5Q2Gh5tLkxC0A8DWGJn5J1yJ+7fSHUn91zHEYpRLlZrQIaD0qfy8KUk1Y5FEF+tuSTql1GUU9nyRwYZaaxhoXdRj09wGQ6Aftk6fvChkPPc2oSUrS4lYl9hr5LMwqh38FkuZtGS9Kui12zLwdE9grUBjrCLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769081634; c=relaxed/simple;
	bh=ptFaxilDjeNLb5E9YbHwahcjTHlp2O2Zm/fFEYWzyOE=;
	h=To:Subject:From:Message-Id:Date; b=NluXagjTVAqeKVWQHBnm0V/IJG1MpuQ9hUugqT1yMR1qR5Gs5OZCqol37Kn6jPjZuX3t6iElVNoDR/06mbwIzcReaWZxpkUfYbsxtgmQJe8KH1O8VGfYj2FlmV5w+7JbvnzJlIZqr05qO4CkBEB+QkLkWSGrXJOUP7sia1uY4tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0aTNEsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0aTNEsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BB9C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769081633;
	bh=ptFaxilDjeNLb5E9YbHwahcjTHlp2O2Zm/fFEYWzyOE=;
	h=To:Subject:From:Date:From;
	b=U0aTNEsLiINtp6vPR/ngotOfZ4LTQ8o2DVh3DcJ/NpSrLdI/5ykdJoLqMyCli2tsU
	 B9i+GgSBzzPOvkIkYkPs5fqc0QofGcrovUgrky5g6Acek1O6cYeWsiZekgMtzuPLYs
	 eIyM8hF5HACNQ/nooES3oXHcXBkBNxAio5xTOZgAM1hX49lgp4ZlLOYO/46wZ/XGtj
	 tnAVxLb+ls7x6vxIRZscPsBwFV4m4njkrCfaxQyONS15h7UxgdV3z035Y5Sokebl2J
	 BkNy+YGkhOyFu1O2lM4nob7Y9evg/QGkffUNVA2iVJIuo1IwIl7JUQHNErGgVlIj0C
	 KZ6QbC1Yi7pvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9171CC44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908163358.16602.8023648758818347396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17572f6a9e4670140759522d2cef4da3390c30d158c6e9afc33899e8f4df784
Date: Thu, 22 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769081633
