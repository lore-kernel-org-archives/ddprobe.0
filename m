Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3467841C65
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728446154; cv=none; b=Noa786sz8WGJoBKbdLc2mY2ufR67t4Zk23GVm4J84oHRcoE4cJOkMVaOUsnAEeHl82oLcHX5+ZCme8Gm+pD9grv8iiU8/eH5nb2JZClcH+YlCCMSRTX1BdWd2qLcluH8lo+tKGP0jEk1zp/Gy0eOIbp5iEbEFnL7eAFXqRBK/TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728446154; c=relaxed/simple;
	bh=OOqu2dBmdkdU6QEHFUD9idXX3yUwBKJv5brWsvWINQw=;
	h=To:Subject:From:Message-Id:Date; b=tNajrjWV1UtXqqmU46zJAdAYftDRRlAyo+0hCOyX7f33mZQTBVQzDGFWJ3L+83VPcBYrNyzEkJwKyflOi4jWSGoqhSaUsZbiHclTk1oLzjxnOyb149SDtJcchzSgklDsd3dgOUwGFnlvtfO+lJjjqFzLx4waHCwL1tfT/ti+MQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLY8Dzdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLY8Dzdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFFCC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728446153;
	bh=OOqu2dBmdkdU6QEHFUD9idXX3yUwBKJv5brWsvWINQw=;
	h=To:Subject:From:Date:From;
	b=qLY8Dzdofpm7OPt355ObZ33ujZYLUS4KihByBfySuDVEOi9BxkX39k4bcQVgaEzcI
	 7P2YXJ71LSOG7iv2o9youHZAfsQ8skDcr6cwGjk91B8rWpFe1GGTeDUUeVk3gJwMTN
	 rL0ljTClrHcokaoR6LloMCu+fhOqkDRDizQEKjVWE1IBtXbkH78606mbT/y9rM/CNu
	 KLmvAshc/VsLaVrlqzrJL8aTgB7dJUHrbj1WbMYW/I5eeE5iXQf00C2/+xajxlY+Dz
	 cjrcocv12b4JDyqLUhfU0wuTNFjZLEeW2gRHwH1XpgUqeh0afmIqzBQ7OlD/36i4pa
	 XcdIih8nNq0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF50CF043B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844615364.20680.15409680831512659325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f5427d41a2b8bcc3d0e280ea5a3686a32961a5382ee3711f237cfde907a990
Date: Wed, 09 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728446153
