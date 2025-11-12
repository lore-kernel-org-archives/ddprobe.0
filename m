Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A84338FB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762907394; cv=none; b=NYezKafOIwBAkRTogXTjZBPLpzVQWbV0Zk8w8oe4E5JlKDrzjYvRFJ7vkvcvUK85FzRyl9iXVTRYod0nRaaifkuXzCBOFZvLQHsKjJGHBxezM6u14RFL84I0uFuXREtAU55PKF76buprfM5xAs5xyT2fysVfMXFJJKh+Ja5AkZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762907394; c=relaxed/simple;
	bh=M8qgs6S55ihZnbvRXa+Pznit3xoTJdsLVb97wPwl9N0=;
	h=To:Subject:From:Message-Id:Date; b=FhjUaAHUWVYxQlKcmEsMw4l3srBcdYzkudJFnW60ju+IGHfc+xHca3aQoDKEwkI7Xk1rRqHfbZvKsruLeEOCyH2vx+p/dxxoxDvbOgVup5zqcLjmn5em/W2eo2E+ROYsWRzPzY85RAUtpDLW1/3frN++Qv+mvnQtkqyTMzTTMcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMkSBWWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMkSBWWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC2C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762907393;
	bh=M8qgs6S55ihZnbvRXa+Pznit3xoTJdsLVb97wPwl9N0=;
	h=To:Subject:From:Date:From;
	b=SMkSBWWxqhHOTs07wSI+Bdu+/z0IVoID/lGUqnAVF0JwwWXXuQ1yLTD6uZtjJeM3R
	 kAfBojXnmzIP1ZHwLoIdIBQ4+AbQLJW6OuFPRmykBisLvBUCY6bybPIGcPOCPGu69h
	 v3vR5ekUFJ+TG3QQji3H0tffBNicqa21dpL4/vkLS53yC8AyXjm4BN3M4PemKHRvP+
	 J6PLZ2xjtx/LtHuff+7w9WowQ6lyWJ5rAmeMvPb+nRe7nzyAfRDSrhXEyY9HdF3j27
	 YjZe1A4epLvDT5Q8oK0iuvLDblL4fJ5k/WEh4rZbD7p4qPFeMnzHk5t2YQyNDctn+z
	 Tf3jkbiK0Fm1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98258CCFA18
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290739358.12108.7275801738237731406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96721722a7fba48a1ed2d3df6b28d5126e1985edd685ea7e0915aee706d017d4
Date: Wed, 12 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762907393
