Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C24C3EF670
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791537034; cv=none; b=LW5AhrQQH3PuoNMe/x31ztIjTkqR5rpijpJ405REh4jEZtl8zFYN1WcL4/SPHm2C5fkjmxtTy4+yKY7TTJySm8LNia+LQ+akJbrmCCqMyMhGlgHUxXv5aUVgrFQI+ZUqlcohDctJWgHtFcLZiRkfrlqXhwiji3j3TlpN5stcPLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791537034; c=relaxed/simple;
	bh=bcgqG37RNEO2/RDnsJSLDakRA82s/32mhLibRQR3rqQ=;
	h=To:Subject:From:Message-Id:Date; b=DRTB8bHTglDQbPw2dALSZRwiBxUMd6OSUQuIW7l7OOMKHjOUEXk3GipZgt5pk1g9DRWxtJ4yQNDq4ZUh0bp4lCtT3ZNrBkXX0wAT4SgO3SyeiPpxzdQK/VURDa51T3YQ4jP/elsAifzvZlYUyqtraGbI0diAofDwdXExTXuRJpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/oT2bJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/oT2bJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BBDC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791537033;
	bh=bcgqG37RNEO2/RDnsJSLDakRA82s/32mhLibRQR3rqQ=;
	h=To:Subject:From:Date:From;
	b=J/oT2bJjZZXO9OPLGOGty36T76hcFvBlfm5v9D9nh37eSW97i5azPOZNCcoxef+t9
	 1F66nnt0uAKsXuT0BcQOyT90iEYpmmpv/+wh0htO6SD3QTKw3YOmYUW3Ibt5N1wimj
	 1XSmZ3f3s5dJnEAzQw/iw4DdwQ7wS+ADKM7kx2oEndEUUUE84WIbr0V9SWeINn+UIR
	 1CdiTTGTZN3SFauaBXxKGVZR+Hj67bz68isSxanBBsmjBLn9NVfca9eoRsi8vlzrMs
	 O7e6IB4evyVxqZNsRnVh49FNDYmeC1/TXAuy8lhyuoWwqvBTKWGkTdWntX4vEZihyX
	 1ziBLr4NSS4zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC67CA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153703368.5111.2662781871243876091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3cf959296402297a530314bbf785c6c18e86367b9274cd11c54285e969a88b0
Date: Fri, 09 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791537033
