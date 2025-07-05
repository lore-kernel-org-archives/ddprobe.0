Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBA417A5BE
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751758794; cv=none; b=TqJdiEc92LtwihAWNkuAJBnitTOLdKEw7RHfOdTfyBJHE/2jZTAiQZxhD6UZDNBH/IKqLv1F7kbDnCpKT4xwri2j4DDTJ8E4p5ikU0f8/jEwmC+AevXgkhZTgQZjPi5CyyxDQFe/qstyDayDRSHAFFDFzLvqpn2rGEBJIUV/acU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751758794; c=relaxed/simple;
	bh=CPifgfRkz+cRvYge3FcOyg8S2fq5O/DdtFiJ40snfPM=;
	h=To:Subject:From:Message-Id:Date; b=bGjWj7EOpLRjD1xvK1zli/cfPXDhyTZMIy3UJEZ7c+susH8RMPQ6ZFkJF6xzDEpiuN0dvjmlK1h81mBo/LRSzw1lAUQlQfwEATkkN/4b2HsnVotwSaHWIRyo5zZgtnYSFTKfaHOo028ijlDDsia0sRy6j5wJq6lXJo21sK1R1/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REh1816h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REh1816h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1926C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751758793;
	bh=CPifgfRkz+cRvYge3FcOyg8S2fq5O/DdtFiJ40snfPM=;
	h=To:Subject:From:Date:From;
	b=REh1816hAq6gPQggk0+4unxsRRQrRfA31XeVoJ3foDHtzzyy75MGlNgtSpZ5fcy7t
	 g3Dn9dldtErO5D2+VlzFBIe3vZAnB3O5Hdm7lkoTYpEow+cVik4vMHBHDrXcvDO4yj
	 8cgcMUkNjnwxe9gTJ/E7a9uEGcyjQgtxlOhHIMBsKqyZFYKuYlt8SRQ1i0wV2BYKFR
	 ry74EcaOU6+oKdAAfCgL3ZQlK5aiqL2qlPj5N3P0EMuDusiHhzE5jxHzh+ElRe3eT9
	 4WlHDrxomlbrvUFZKxISxSSMBAMTYMy+1oktQxIRGl1inOG8GJ2crO6/3dinPJkenV
	 KmgtILOtHT2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB2C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175879357.20088.17333644577118162408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71aa0994a6faae12c895b5c86e1c939be68959e484636ddb5d9d4b7c0f388182
Date: Sat, 05 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751758793
