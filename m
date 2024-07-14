Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D9063C8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720968023; cv=none; b=oeczTgcNo3QLyN2h798bgMjD9BBRxHufhflR9GcRq7dAC0bXQ77u3MJZhOxxsU6W3trCp9OUPzXF77JAvm9ZdquKg8JzANt5+DhTtQuAROJNbFEH/XDa5FvSuN9jbf4MJflEfNZAaRty5AAw3Kx+tjlTRgsnT6yshVDfqt3HtXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720968023; c=relaxed/simple;
	bh=davll1SqsrRAgvizNOekXiY69vIecBVIcnXZDAoYSXI=;
	h=To:Subject:From:Message-Id:Date; b=MDn6pfEzqbFIm4PyPMSb5zpEir9GGzkGF7SWnXcEDrLbcB+6H+LCXnPTgjvwJ8JPs4SVxejjRIopr4gW8TfxdCre9F0NKYCNDch65mUnUi1/Ek7vG8BP7ByjrApZeXhTgGtY7V+sjpfcvS4c3JOVKEWpNY0OpXWEq6QyuU88smI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4/hbxO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4/hbxO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E505CC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720968022;
	bh=davll1SqsrRAgvizNOekXiY69vIecBVIcnXZDAoYSXI=;
	h=To:Subject:From:Date:From;
	b=S4/hbxO4wD7i0GGnDb/Mcz6yPPc7Gup2Z4lK9vx330X51Anp9gYSQQupoztOVscTF
	 npOBVHqHwMNyhWmPCdNmHcAK/QHYjiUc2mLVN7zxcdoBVMEwZ8O7PCzW43VfnUEscy
	 t1Z9EPEbdjYLYD/QFXDAvDcJ1yt1H5Z9jJ0ooLR+aeNL3kXRk+SdkzurIu/dti9dWX
	 gkgL+AFYQpKUk5g39QYHXTnk0l2xlDjSrUkwhE6k5JyLgxoYKkUxICYAZzeIg8Ybir
	 AQxdoltGr30Mj/ctzqiPmUKHIV5YNQ+eKTihm2585wjYAfKonIY+B3Flw3gPmcsDw8
	 ePqkYjb073viw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C586FC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096802278.24566.4146781111996237244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6399dbe72035cbfedae7dc48c7f625dc66fed8f5e10dbabf1f1a882d149c1d7a
Date: Sun, 14 Jul 2024 14:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720968022
