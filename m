Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4101F25487E
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748500195; cv=none; b=l9MWLBt0bKkNNe+a0ermdDFjgkYwq+Qo92Dx0yKev+hJ1+kMxvDe8inW3EkGPc0KMIl0aY5L+Dwz/VDlMx6pP5Lm1f8dtG49fEkbEMptUGGaLZRYbD6X1ijX1zWZal0LxeRZR/joYAua4FTUEPXBk1tmDyY3KNfFlrvdaPULQ4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748500195; c=relaxed/simple;
	bh=rf/L46ORszHo7qiyif6fdoVX+zzABO1EWDuh+LdICuw=;
	h=To:Subject:From:Message-Id:Date; b=pgtwcnHbTxFhl4dybNu1vbyFvpguh631sLyWKzyoeFcV7W3/YyOCoWcl/BZIewge7d/1cognxQlXH+P7DzJ2/fqOLDLQ01AeXGb+8pvL/o84lZ0441hJghBb3X8IOEaFOT1akv2eTPVhQXORol5efN2tGQbyg6TZDM51jOxNnv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmovL2DZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmovL2DZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA25C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748500193;
	bh=rf/L46ORszHo7qiyif6fdoVX+zzABO1EWDuh+LdICuw=;
	h=To:Subject:From:Date:From;
	b=JmovL2DZNJi7aDg2ucgrzwBkVoN7jL+SuiN3RSohXqyQnJcEGikNnkX3Zbje3csh6
	 bUKCrST+p5D3u1ZUFJpHvmUTebyHuMDeEiIV94KxcKYW/NN/XWULJc2PC4pI45LoNO
	 rctwqfve7Uru15ilXNlLHhDlrARtn6s5eDFG/OvUEBZKg5+GMYXUfVpFNI/ING5SAq
	 pdf1M8QaEwv0kWwmd33KzXYAMLOZ4vmyaVVUizykq6qoqgDTmaueWrAbA4MLBqUeq8
	 UrAqpIK3lFo3/pdmmvXn6pQDLKbnHdIdRg3ew49WkKlGvGoK1I7Jxsleopu6rxaEZK
	 uUEdXoUF9Pw7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06DFC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850019364.26112.7830167432517846287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e838d8f158868412ad581af05f879d2bb6ab94cce83776e16beff1352fe052
Date: Thu, 29 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748500193
