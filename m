Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB6238DD3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728527754; cv=none; b=fWtMhlVq+QcvcL+AYkfI2m2QNRDQinuwrtJTy3xRFwI0mTuPzBdZbeNmyqOar60w8jZ/vOtrojXKNEjqCO7nfzw6bkQkSO2knQSHSZ4dN37gcRKtKtI+bLhqGkVUJND1+K0VgevVhPq7rMXL2P1rUyNzY2cpr0+kLP0qfb79/08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728527754; c=relaxed/simple;
	bh=rGSoaEv12DtrLH3nsbKFVGNTOoShfZJDNZvkbHxYyjs=;
	h=To:Subject:From:Message-Id:Date; b=bQLMqJaRvXJDQLGrN43qAVFbq9KxH9NO32+NY08yMmmhwJhzQcX2iparp3N4Y3FEl7GLUpyMU1NyUR/bO+Qnw7Nl1Ib0dmLitpYB66QoXp3yM31bg48KhyD5R3oubTsIT5iJesk0m80vxzslO29Kl7ny1IBkQ2kNuch2yjJCNTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0Kh6fvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0Kh6fvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66B0C4CECF
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728527753;
	bh=rGSoaEv12DtrLH3nsbKFVGNTOoShfZJDNZvkbHxYyjs=;
	h=To:Subject:From:Date:From;
	b=L0Kh6fvA/r9UuPiqjZBXwQByOKB8joxmzW173gQ1/5vOU55cLARii+Pw+VYckCiWQ
	 en07CNHKlSpI1lU+jIcYky6tkME+qkjGdMcFYh+qfMp9JQNCJhkt8AlW9XeUyp9vvD
	 R7SU89mE90CoIdVc+yDh91x2m+/dU0psA5UCXWfjh0oT4gYsOffiB/PlRDGewI+OuD
	 S+vWuaIwCPe6HA3hCgV78T9GIDriEToqd0FaHiJ7UnTTck7DknStgJbfR9xoMYjsnJ
	 oILq3sz2eSj6X6V0xsQijvm6iCmjpp6+ld6w4MWWeyXJPAIi+72uy2/vBRZmCRIj52
	 DlxDm/t5A3u3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996D1CEDDB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852775362.12524.30979944561340438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083eb96b0ed1e327c659409bd108c1c0df77a9fc18b623275cb888b823b58f01
Date: Thu, 10 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728527753
