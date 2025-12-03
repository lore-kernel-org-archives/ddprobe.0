Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35391E1A17
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764746575; cv=none; b=S8lSgi8F5oQOCDBjLokWw+VbH3hZK4apyDgdp0Z3l1YgvWn6APKEh+6+b8xQRtGU2v7IXRB+F+dQO1wIM5BEB8wxhHBe0/hYBC81S+QUt2OFJuapqu9zgUMgKVpmwIXjYSe+lnm7YlVe5A7IPnmgixVj/hs/ixLD7l4epka3zw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764746575; c=relaxed/simple;
	bh=FhwaDvvx7AgOCLcs8iBeP48SwBxYGrxBMKbOkM9l5nE=;
	h=To:Subject:From:Message-Id:Date; b=F5hutZh2RaTAcjEhqilMSEbH28D/VkYFKb9U8q4R4K03ndjLc3FR8Opy+jGCZ2bxjlgLdhKU8zB6NSquBZhBMBcCFMUGRnFouyhPz4O1k2Mt84eTVCBpCOKfnRcSp2jpfy21FOskKCH9sKcAgnoJqFzLyi4WTnT5WsjotIf99fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHRE7gMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHRE7gMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76B4C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764746573;
	bh=FhwaDvvx7AgOCLcs8iBeP48SwBxYGrxBMKbOkM9l5nE=;
	h=To:Subject:From:Date:From;
	b=cHRE7gMzhSJeu4xjOx4WONf0DQjjQ0gXY8WubgcSXkvsx2SKiBcpXqYl04m0y2uJB
	 g3AFW0CVaEfd6u5KTA5IogfaH/2aiMd9RA/BEEW9Hi29Id6zxBYm6HytGAZUMrAXYM
	 yMQNMMxfwR/LYIP8tYAzmdFcAbYZJkAON9K5VAZ/h0CGWI0hznVOTMG2YVu2TEItio
	 1h3JW1xDZ2ib4VPc2BBFevjupQOH7VYyVIjqGhPI0aCEzDTCPECoAsE6KuniSN8I8v
	 rCzBsAWTMBGiDJZCMcoR1shQddxbD279Qa5JWUJVQefqpXbi/YgF0mkYbx9JhygR/H
	 coIK+om3H35UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9694ED116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474657358.30851.12356090451340731780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf3cb7f19d057af44246e4d8c50f6364656ca7814df05c13fb031eed3be87576
Date: Wed, 03 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764746573
