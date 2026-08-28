Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EF635975
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787953834; cv=none; b=uDhrzxizDcv8jaqr6mNombinjRhGlzYSaO1kY9smdxkKdRBVQato6c2/U4ywItbXuI70ljo/raIkdfk7iVS0SlPgrKkDekaUoFDY/joCXvPDTtK9A+xzvs70atcOLBNg3A03egic/bQ3XCI9WIheGypWK/jA3b0AUI17mQSF8Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787953834; c=relaxed/simple;
	bh=CNJWgGpC8Cdxxo7Y9CSy2f5GpGpewIO5Z33aHg/z69k=;
	h=To:Subject:From:Message-Id:Date; b=ZKirGP08x8bD0xi1jooP6lRiPxSZQqWnyMfiYi/Bo4PWoFvMvkznkISX/ah7BdLH9kpEoWncN8z4io/S4BwL6C9nWM+biOh6aOhwpcvQG1dGkCfmJXb3Eh9az999SS/HWNLLZykdzJUd7ZR03BQqveXDSqpAeCIvs18EisQ05kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMJZTj5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMJZTj5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E32C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787953833;
	bh=CNJWgGpC8Cdxxo7Y9CSy2f5GpGpewIO5Z33aHg/z69k=;
	h=To:Subject:From:Date:From;
	b=QMJZTj5/9RxM+n41xUPT8TT+RtRq5+53mPp+Ph5rEVYV19dacexLnTP1fFjIQn7DB
	 0QcxYfkVZXx1rYvveZMZ5neoDvY6cAdXbiJZ+TMxh1XgcbBmAy7HXo3e15tIMiAtvp
	 EM9cUmpmUV8Myy262ff1h1xU42bi6RDxYu4xX2T0ekgT5AKNiyt+JKjqsWN4eHikcw
	 pGL5X5eMXqQD0Jf8k5xKi5K6QB+Qk60BV0cYUSciIk9KD5DZzg2e2rG3rBM068PFBm
	 LZEuuPBSGz4aRz79EzjaaHEDs+JHpmkdvxuLwA9D2xaFEGXGavSY4Uoj97GN/jHI3E
	 1P5k7Cd/KCFAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA783C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795383368.31222.10427238589733560273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea664f01302b8384d5fc8ff2fb0cfa9e18a31e09efcca3a32fd171c8da8b6a5
Date: Fri, 28 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787953833
