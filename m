Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DCF78F29
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759609794; cv=none; b=IzgF9zd7HN08T3yFohoIcD4J0YRQgMAkCwnxBj4t9Ml/ofV4pLKQH1xRBiLV42H6de4QM2jd1b0ZHqXH6FQgB5C7TM1q0eGNj3ow7YOAIHoOcVxkHnkvvKxZnbTrI+LC5gIxL2kseRyCILBTldY8tYwJQIuiz6kNu75OV6b5Hak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759609794; c=relaxed/simple;
	bh=qotNKaU5ahZKzP4nVE9aCadmYVoLdKcLjJhhM7DUnTk=;
	h=To:Subject:From:Message-Id:Date; b=BVqh8MSiO2q9BsH6vskv8/Erybedn4keItmgiswC6pbo/tVub0CX+QBxSeJeymFj2TcBorud5Wotw7z/M2Ugj8OaFc+YLvynKfwXeI/on3h5VRmjceqqzbEmazlx0vZqE960KFSy3miEvgu4aVRlzNzTGaC1IIULnU3Ep0wHYh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oD2TijjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oD2TijjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54B7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759609793;
	bh=qotNKaU5ahZKzP4nVE9aCadmYVoLdKcLjJhhM7DUnTk=;
	h=To:Subject:From:Date:From;
	b=oD2TijjU2M46X2y5vgxyu9OnEE5FLRn3KlUhhWaNPmFVRaqnz6xtZ4AaJkWCN1CNk
	 HkwsYWylwWckroFlE7qgo6V+tI5abAgRxPjgOJfhTsuy+QzKD7cj1Y60PsuQEFYTMB
	 iAVVfzqwHPt4nXnvVZZ8fdrrxyzIyT1+Q2fxATY1Tz+EshLwVtbLAaDQPb+Wa38wVP
	 IrNONEC670szz7ZtpqgLkWASL8zFSc1JG46mSKP2Boi7uqLVmtlrKL1Z/9zimO7J0P
	 OuCZo6VeMdNfyZJ97tfXA3lFRvWHN1L3MkjOo41Qp/8bQm0Bl0proWYcElfFEzDYOa
	 sd3fM4YecdurQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92899CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960979357.11422.11358672996093403796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b465b8591153057ee9534c9c9e7c3a187b5a870967f59db6d09869a8e183d622
Date: Sat, 04 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759609793
