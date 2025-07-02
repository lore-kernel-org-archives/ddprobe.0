Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263BD20311
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751426994; cv=none; b=q8hkU8nYi895J3qqgI2DCEDBreiA3/d35IxlQSDIYG1Si9mUihUXqMq6OP4PpDYf7bjxj6ByOTFHH0oIOJcef42TIuiEvM3OgEkQ/rejdCYye+Mgd6vsChtpOPsyRSrNFeo9DSGOzOQbTAsXLnESN3tcW8wZsj5abBI30NO/k+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751426994; c=relaxed/simple;
	bh=xlrxGC4fxI9+gXoON9KeZlfFA6e2mXDbCBpkaSlT3ek=;
	h=To:Subject:From:Message-Id:Date; b=gWEBQS1x+hVWUIshNlFFc046TR+ONTPbWow4+op9A5HmndBZdRXDZKlhMEMG6nYmVJombsnaxJ1P29JcsxUoyKOfAMzt041BNVGtIuK1C9ahO25pHNs6GTQsBvRlWNQ07tLZX9fwGa5J4xOiMln92X5slXj7vEUgK1PFT7JjcgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbMB+zIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbMB+zIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E3EC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751426993;
	bh=xlrxGC4fxI9+gXoON9KeZlfFA6e2mXDbCBpkaSlT3ek=;
	h=To:Subject:From:Date:From;
	b=gbMB+zIS7YXlgbuKii28pRnN0FFZtVioskQuCX1zIpelaS/RG1H09GihAroGjm3iR
	 c8G/bR+C4spZA45A8QO+QHJe8bbq2MPrY1Q7G+3oGhWtbswmXmdhffIX8D8ZYa/lEZ
	 1DtbPuxmJYCN1lUUVaxdHhrFw9r34RKP9UpKhtRp4XLs1l15RCBXifsyVnQ1RNQnWw
	 HWk8/vRKNJSxne/wf0KHJl6z3WfHluqvvC8UrDzZN4ifsYIBWC61/N0sr3Pe1SDrVv
	 eqWelFc7a01bgGIwxOtRanpDAcjMDGHDQ2Lt6byz7Kr0Inp9dw1LD8iEeIbTJO39MV
	 OnRjl0afMXC4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FFC83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142699357.21252.15041555333720613262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f27aca9d17a5b0fd81b5ea657c558b2f6eb9992d130260ad775bea75b563d9
Date: Wed, 02 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751426993
