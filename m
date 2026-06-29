Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5547A34105B
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782727114; cv=none; b=Ty5lRF2MaSn6F3CoqY2ZO7ER9C+E3w3gUtFMUKsDMgYjwEf7cfjR1CMML2AaQ/jZP14+XTZ/zo1qgLxWkr6Y8dltL9ngj/JeZ+ZcM/uIqq8pO7jKYLqUXn9FoMWdZJW7+izbf3f9zwQP0Vy+6mJ9etLTqWSGdDwOlcNz+f5xkcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782727114; c=relaxed/simple;
	bh=DuCRCg6td2UwScoo+3o5OLabrAu0TsyXvMhaeDGoOYo=;
	h=To:Subject:From:Message-Id:Date; b=aofhkmHJE4etwTh6PznIJMJVGSrlyyAxmCsHYU9gOkRmnKVJXoml1XO3ENdIPwiKAOBBalLVqVXedaU+w7XZZHrupHTiezDZEEN+5nGI8XN8FEJ229wrOQnnylcp0+uIvDhG1sB4pd6EZVTIUhD8BHS8F91hsl9R+SRYP/a8id8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDsBGa/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDsBGa/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5F4C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782727113;
	bh=DuCRCg6td2UwScoo+3o5OLabrAu0TsyXvMhaeDGoOYo=;
	h=To:Subject:From:Date:From;
	b=jDsBGa/Q42wANdS42JUIJO8TNSdfOPEn7iJh2OEhrT165eJJwZ3xamzdyvrIn2tvT
	 taa2BJKQ1cszghuvVepK7tpz8ok95xBAeRnVOazWCTFlmcrQ4waf8VfViFVdRThW4s
	 pxeDupHESm/FnnnAm34dTG4yWNebNTZSm1AhtlBl39DdO0Xi+Zu/wqLlnDtUaFr5c0
	 r1DHm0ZDUFywUj6nd/WPuwGrv4Q7SozmFGVeo3SslyoMFZ3WlD664X3skcTv4tEdAM
	 fDhjAU0QJW0Gy7rvgofgjwnkFOnBSDYpbRmLxmklYtXBVeaLdRwSO+/8bXsGKKWwdS
	 kLk7m8KrdDZIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2713C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272711372.29199.251909671677480734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2743550ea0c7777edf67a8792af57c4ce8405281513f4cb1eb546a70c75c19a
Date: Mon, 29 Jun 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782727113
