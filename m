Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126D73B78B
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706761097; cv=none; b=OR6fT/tLYjfLmpncNi5pLmC2dwyj0t9AsDM8NUTR6pHg16r+CnI4endxPcd8v6+zuxz/scnr2PNBW/Uvw950XWO9XWVEwX3MvucAfYuz/ZRr8+EKnKMq4ObuAZBBfldXbo8J9Du1xNznW3zdf+pgqT/I0fhitCGVlyPtDZIvUnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706761097; c=relaxed/simple;
	bh=rwD50a12whqS78dKdpjqsGiu8BiPKZttfAVYRURgjts=;
	h=To:Subject:From:Message-Id:Date; b=BltiqEd5zjC0TiN1hlOH4f/60u5QlK/Hwnl4voTwFUSklSbzoRm3Vtdi0QlXAq4cExOg5GAjCX4q5XtohxbssNiGcKo1NkxZ0XeG7OGjTDsqNnPBvjewu1EBjn/EDT4SBuQdQvA8qBEavANfaC+wQjVRE+eMzjIg7T6MPIpXJTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMYR1I3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMYR1I3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85506C43390
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706761096;
	bh=rwD50a12whqS78dKdpjqsGiu8BiPKZttfAVYRURgjts=;
	h=To:Subject:From:Date:From;
	b=KMYR1I3N0EWnxgqVAsMuDbqJjpnitwagBKw7UW2/j1Sp0ASpmKiZdQM6wPpPwDxgi
	 VJt2lxIAS1lI57/UoCZgcclkSJgfSZb9UHZDQPNWfRlZ4G1gCuOVfJbsrd2HHdf1W7
	 D7q5Nqte6ZIsNuxtCKoVQBMi45MmQouTgN7sOJcjEd+ktNtAsTc9tWXJlsjO/y1k+a
	 8AWIFxFpX84G+jMjHt4gGqdzjuCBP9XI2JVM113ymxhWBrYqshdCxCSj+Kae6pwjUZ
	 9smzteTLcEgy2GiVzNCQzwNqTYytFQkaI7cK/iNmvXembwWV/Xu9bRdaUAcNNzB6wJ
	 m6b6cwKT0EFug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 676ECC48292
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170676109639.26302.3984681520843942070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78753559f211c11ecb3fb695d318df968aeb658ba6b011d7975f3791f946cf2a
Date: Thu, 01 Feb 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706761096
