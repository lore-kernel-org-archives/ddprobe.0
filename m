Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394C8634
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741436334; cv=none; b=iyiOJo3hBKwgYmMpJPHA308JHERTnckAkJpTpt/JixR0XlzmiULXuj0SnZKSU94QZDuXCwa73IoLcWSD6fS0MkuryxauywGZvA6JuQEXKsAJ0lL6Fp0vhbRw4KJxFrnMNtsrjd+CAcFTk7f+FFJgc+TMMRFs0JyTNecDSg2svCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741436334; c=relaxed/simple;
	bh=TDDF/WC2kxppEIDMI3EuoJqbFeAlfSP6DvWnucvgi6k=;
	h=To:Subject:From:Message-Id:Date; b=NG9lG7Cw8EnFymTKUYvUlWHfHOqpCV3fYwGmy3A8vgsNzjk46LAyMYmHhdRTLulbA+GvXeJEjic6rlGyoDHt1z6J8D3oeGOke/eLsb0D1npm/42z+DLTBF0FTmgI1LLHmTiHisqBTTWatwd2rXiWPbwiM88uUg+b0kOArdpAGOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxwHKf3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxwHKf3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE11BC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741436333;
	bh=TDDF/WC2kxppEIDMI3EuoJqbFeAlfSP6DvWnucvgi6k=;
	h=To:Subject:From:Date:From;
	b=sxwHKf3GfLRg83WAJ9KiXHQIlvpOcfTuYjguj8m78Sg8/1t/FicgAjj452pxQU6zq
	 HBNLV3FqHwUFAiTwivTixdC0839EP21VlzQJ0b6FlkU0xUsChJpOnMhsG8Rts30UT/
	 2ZD2dvd1foq5vyAukWDwG9B8lYy1JIt8UBPAocChAd+iGdVo+hgPhS6HuU9vaSGcTc
	 LFjO2ODrZB47FiRUssG0DgrDX1saXoAhw1QTqonvXBsVwxEJw3u9JUkYbaBcPcB10Q
	 YJX8UPi2WLmmEYRU3WFjLseypNaNxJpgiNTjB5xkoOYHC2Uy1ujjb8GZTjA9PwU/TC
	 QKa/FGbmywoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9628CC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174143633360.1022.17827710778838205572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab922d2f4a85d58717d3210b5895b6a4009df934ec750995509711450fc4e6c1
Date: Sat, 08 Mar 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741436333
