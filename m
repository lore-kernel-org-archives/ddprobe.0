Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E34173
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 02:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718417303; cv=none; b=eHX/fQJeLtYnOQRP6XT06H7FiQTB7ATBLOB4SXg/DvFaOlarLoKQ8LugnB9gpYuJm/RAY7mqQn+DGcItw8jV2KEW/5ZtrKGv9oRZljpUGCTncnVXM9k1hZBFfkevUP0NQshkfMzb/GLHTifx9z7ZN72ZCNAt3Fl5TZnkkNvbHx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718417303; c=relaxed/simple;
	bh=u8D54JH/oPwznejIKmRGfIzAnj5lkftMot+Ajtnn0rs=;
	h=To:Subject:From:Message-Id:Date; b=itAjN3Ic03BY3ldjC67SBFM1I0LKXGQiVpL38PB4ZqS5hebJXU3rN3k2OeQRnHjtwlCQMgeIoLd90I1+adJ01tsLgp6u9f1GIre2rVkkvncIhpcs7ApcyqQzZrCF+hqxBFoHvAO6X19PVwGPQIOnIxzCnaHT8s37I4CeuZXsCDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhRjR3VP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhRjR3VP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B64C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 02:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718417302;
	bh=u8D54JH/oPwznejIKmRGfIzAnj5lkftMot+Ajtnn0rs=;
	h=To:Subject:From:Date:From;
	b=PhRjR3VPMD40Grty41O61sf+DY6HmA1bsuTd5g2ATDLa74mXXG9jvd6+GZlLOYx02
	 K5YwwAp2UiGYQZSU8sJu3SKcyPM/YaMXs44TDZPVCRH61y+uA60YGdnvUlQVKtgDDo
	 8qfqz59NhelcxScZQJjQil9pNN8g92hG74VDU2Biu7lQh2iGR4jEp+FyiVYuVr3l/Y
	 hjUjVrV67f2gVYEurwAFfkAP8hsRE2/957FonmO14KC3hVbPhjPkdUco27DuuiuwDw
	 1I5TJp0QMXF4RTL9NhDaxih7e5nVlsIjdxdeQR/gEV7wlcGNaNiSTNgu17TIGiQJBf
	 SVVaqgvuAte1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA715C27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 02:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841730279.22103.10174568349093041103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe177fd19c2a922bd1ced2c350ad68016ee1ea25e6e4c50205edb5b16da757fe
Date: Sat, 15 Jun 2024 02:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718417302
