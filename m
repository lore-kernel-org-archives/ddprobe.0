Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBF8BE6C
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719367403; cv=none; b=dH9fvJl3IffZBZOI4S0Gth29fxDnLWdqsTdfsfsqrayoRXbDe6Jp7Jpxu+5330PTnX08awgqpT90BxU+M2407CAekMETmbRuB8h/Tk/Fw7yAZls7qIaQougeVbezPcDVkmOnE0zEa/SjluZRh4WPfidgX5Y0bEJLdGajNAJ94k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719367403; c=relaxed/simple;
	bh=Ic79DvuKOWSG5HqsC5gxBZK25Qd1xnHUibUNZogaGlc=;
	h=To:Subject:From:Message-Id:Date; b=cTFtkGpY79GxMidUkkuvk5F1CsUxOx2Tf5VXz/YcVcQDmT+mrcG/GQ8uAVYtZotv5qBc450f5sZPld57Bmjwh7GO6O6iu6M7/MQI9O8+viX5YO4Qt2Xz4pggNRfn+apGbnoIX9IUReM1IURueBOsbqWv9SoEaRUMeEtRhAyHYJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JW2MCljg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JW2MCljg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69ECC32786
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719367402;
	bh=Ic79DvuKOWSG5HqsC5gxBZK25Qd1xnHUibUNZogaGlc=;
	h=To:Subject:From:Date:From;
	b=JW2MCljgEt32jDn8c5qzx4sH9ewJGykH6tW/ACMbBex5p527ktelgZeMnpREoDg4V
	 9LsRR19bge9O83D92pP8abAkH8F/qKCY5uxAaba3b0iA1XEijTPFaxakpZ/jJp2K7l
	 ecnCHn6M51DqJK5NvJtJC1y1L1+B1krMFgHkvHFyRyE6o7jJjiNhG++HJqefdnl+dP
	 17YmeUvwHbdEPmw2odObWEx9t+AhHtIFNoHyUJ05znD5T7yW01pUUZO2n91hqXbHsb
	 P3tbSeGctGste9eANt0lEiMChVQkW0HR5QRtK4bXrMPM8ezDHjbIKcCCA9yQKxm3Xq
	 BPl9UW7rWmM2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10CCC3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936740277.26858.14308486015844961077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62b1ee33c7dc91beaf0abcd7fc02ecc2f2b1266eb6c6423110aaff7e3618c57
Date: Wed, 26 Jun 2024 02:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719367402
