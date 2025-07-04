Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284911367
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751602794; cv=none; b=NulPDO0ijQNVjwdpfAHof72P2lA9CLl9RFkxbUxXw7b/FdfKrYlGfI7vjCL/1OGcHVVOa2DmxuO+PIMkIKP1ZRemAtGB8lLA5xJEC40rGp6fQkBmroYZ2F6hyoiUTIm44aYFpGF3otU/XhPv6+cIKbZc45vjnVPAjLqxouUXraI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751602794; c=relaxed/simple;
	bh=Agb8aAznSOEdawVZuODJ17HBbvQy+AhjmyN/w8Q45To=;
	h=To:Subject:From:Message-Id:Date; b=lH+VA8+joNGBoF1N2kSQZAYGJIPIEwgXek7PrEVtMA+I7myFrapjOjqKRvyDgtna7K2XXzRO5TEC42MJWXRfa++wy11KYb5JO4ApKQhB0mKhGZIaqJV/Wuq8VFURie4RBlaLQt0LWLQ5vIj0O78MKw7TqKSzbsTfqQ68qqO2/rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktsCFBIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktsCFBIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BB1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751602793;
	bh=Agb8aAznSOEdawVZuODJ17HBbvQy+AhjmyN/w8Q45To=;
	h=To:Subject:From:Date:From;
	b=ktsCFBIPLPchwv0WLa314hoGyBq3Pf+1NQKYczk3qFrTc4Exjw7sNHaIKYCsATFQ5
	 hAjHn2/D3ph4mOQ/vQyHLNWFgbKloBFL1W5GRNZaM0j/vPh+UqPMKVaAJrlfaVrQis
	 iVA5ntGJKDitpwRwd/5mOyZ/V49kpbyZPn6GsRfXeeFwV4dgPDFZKCmKfDJ5Lk6iVZ
	 RiWe7D5ypmqkh0Il6OTjJ1F0gcYnMjvPoX9/SSpleQ/KIXiqRvcI4I4Z49kCHFaiqE
	 RbtZQbeZOhfS/zSFGi61eWp3u56PahFCfxHWWQ+CbYZoB8on5HZa5GmU/pyrbmASEo
	 mqm3xUeSr8ajw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93638C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160279357.13150.11321877101052476376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e243509ab8ab32702ce2e6f1c668ffdbdb5946e585435c793cf4f7e0e8c4e882
Date: Fri, 04 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751602793
