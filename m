Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4051022612
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741905534; cv=none; b=k36wKqXmTipX27Sb57rqDewhvwy2TtbEHEh0CY882QWTMfDIjY0+CU61L8jw3NPlqVlgqtfX5EyRA7+BIgPgN+xH0puEq0uDBChPZG+EucwbxsbLQ7XU/epmpEaoRJTRjj4TYFFmcyYpm9vSmtCpFVEvtYpZ1GLQThGhe6zVJ/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741905534; c=relaxed/simple;
	bh=WqISaXYEFdAoORsyOsWW0d1UJnGg3gIjda2W1p18Gr4=;
	h=To:Subject:From:Message-Id:Date; b=NkJTB9ogCphtH+hd4HnSWwUIrZMBofVLH9d6N2D5/B8s3ee6MGWaT6LdBaC/HtTd8Le7Cw3WeHIL4AMhGs+k58vZIpJ5N+yN7QNN14n4HxnNR82FmanpKkZ/I1S9zBlM/K0Yv0yuAu8dL3z47MsfhLlLjnwp59xh1CWWRmarqU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+yJxYc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+yJxYc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B661DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741905533;
	bh=WqISaXYEFdAoORsyOsWW0d1UJnGg3gIjda2W1p18Gr4=;
	h=To:Subject:From:Date:From;
	b=K+yJxYc6JsJzL9U7KUU1/ea/LmE2ZAoNgUCi1B/9bQtDuh/GyajVwWmZ5YegDLUqt
	 /F6ew4/EDcaVQ/gKQC7j0J1l9LOxeor3gI9R5lydJx1wADiyNxGA2rXKfAQ0fG9GkZ
	 LOsJH+gbGjzUxCbHlilLFAAYtWSBZCgosFgC7xBK2JBqpukTaF9ycv0GfVzTraXONL
	 KqIP0432EXOcKltBpSzD6/9GuzTaGeqcDoc8sg9tM1YB2orRR1XiAffZCzrquySoFt
	 YTQPy5SGRRvzA71wAnBkh1GBu7mjb26mmo1FKEZFK/KG7TjtIfHQ+WvG3LYTi2BooH
	 b+4URXJ7tdgLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFFBC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190553363.12358.13261088448603123542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a618736332dfb43957951767d24a52e093b7cf3fe39dda9c194847e2db1faedc
Date: Thu, 13 Mar 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741905533
