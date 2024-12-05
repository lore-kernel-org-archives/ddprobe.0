Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410F218FC70
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733391354; cv=none; b=m3oHO1sAzWjw8TEOIwmEeM11R8N2FzqaCNl4xUVtS5O3NOo0WShA7eFQUhGOFFGkW3EmhjuwABcIV9nTsOOCeSc5PbkThBjW/tEjd1qxdgOrL/s35zGXlkUMxgzgKQTG21b3aUJ9TbRIULd3HSry5RWVd4/GstmibcmgCius5yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733391354; c=relaxed/simple;
	bh=vOULWWPpCPBHzmK7rHDeXwyP4gOJbVbjPhgMyM4fxTE=;
	h=To:Subject:From:Message-Id:Date; b=rOjPLjVatflIrFBy718XBUAxzqSDDnxDfYouxqGSDBsQ5oxiH+4wBsfyxnsXFpHlUy6/0S2t9gsr8xeheOvzuTP4QEBwRfTaXHviQ8t53TnHl9wVsCoy7UZSybbs6AOM+ttc9T2he1d5wWFUWas68oYxelTFhZfoJ3Erami9IiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmAIds7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmAIds7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C34C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733391353;
	bh=vOULWWPpCPBHzmK7rHDeXwyP4gOJbVbjPhgMyM4fxTE=;
	h=To:Subject:From:Date:From;
	b=lmAIds7hQekyFEfa5hfnBhxnFdFB2WNfIRdHNpRATSY3vPhKBn22EyMIepI8aTeB2
	 hZK6c1ATIy1UpPk09skyAcvYsLjOEvYjx5MmlU4/wMmCMnRt4W9xFqFtEg5bvhuaPN
	 M/PW7/vssL4nk/voISoqpiTMbb9gp4d/nNrhJZWDSeyD/9Ygfoi4yPPH1mpOvR5g1C
	 lNpVFD5psfAWf2LQ78LmdpzG4bwiQ+fOSIwWAgAe5VHa2OXKalvfHtYflhWlghDl/a
	 CD9869H+9iq+oLPx1VVOOxkaJWOqBmeyXpHwi+5yV4az2M1O4Oiw6BtQgQKn1SV6Yy
	 yE6fZg+uC6c0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C511E7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173339135361.12508.2075689049977187957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4235e1c43b00bf15b04c8eb7aba033d2346a3e6b8070d07cbcb76469245b0fe
Date: Thu, 05 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733391353
