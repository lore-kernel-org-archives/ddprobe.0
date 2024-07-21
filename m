Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307F62C95
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721596554; cv=none; b=uT6BjHpFHxazaRlkybkC+aDQpTu8X29Wa5IPb9uli412b6C9S+T57p9rBRiv1svmnt0bJJlA3xZC1fu7p8xc8WrFyLwr90fqFJj5gSXK2BLhzS7m56Jz5HPSiFA3gY+etYOp337dh4/GctWzC5wuKgzzjwV/R17tu2M6UutzmKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721596554; c=relaxed/simple;
	bh=hZV/jNI0hknzHIpUufA7yK7uIAc5RfBeTby8HNx0qy8=;
	h=To:Subject:From:Message-Id:Date; b=EzRWiH66HBQx2JDv83j4C6be4PImcCjefCWVU2mrf+UAyai4/J2QBgizVGYv6qWH1ra3K0Zt1gC33OG8LEXnzsqYOeXoxZRKsmvS4FeEwWTYBZoSA3rClfYEmJZ9V1cciIo7xDoRJ5uHQyCEvU+QKXUIKcKak8LhEBH5h/YL9E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fw5cFoPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fw5cFoPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9930C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721596553;
	bh=hZV/jNI0hknzHIpUufA7yK7uIAc5RfBeTby8HNx0qy8=;
	h=To:Subject:From:Date:From;
	b=Fw5cFoPNJVKLs+5Hsm07DvHe2QvyQLTJnlml3MccUXvClmDzmr3P59GfQzAbuK+X3
	 LCQ+hiHhICT5r9H5MApHpcZrclfbCTeKzs2hVf21fp4vIlz1vR7OYApCkew1SAiOvA
	 sk+mN7KgI/Gz0JR6x+f2hqVNNkvkJ1zFDAXNp3sgHogwV77RZlXTBL6nvYFEjSQWtF
	 coAKUfN/Qg8Avs7oG0uZtqrhQNJfW/xL4omMJrrq6T9cpJPlt6z4h/o4DXW5jQQ0X3
	 i6LVmmw33apjnm9OOnLuAD3GZOvpOrtOUXOG/a6Vm2CJXmvLU1YtdQu3CuTsd+UqVK
	 0IJ6D1Q14NV8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9955FC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172159655360.26905.7173683304059379907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a759bd07ff009826074c749943591816cca4dbb50d522ccf2e21b0dec183b4ec
Date: Sun, 21 Jul 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721596553
