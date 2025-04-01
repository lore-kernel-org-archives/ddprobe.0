Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346953594F
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743539994; cv=none; b=ErRmuNnZs61krWwo9X86tc/SIqod+DetVU1zcJBXOaxCWv8jv/vlwJ4+WEf3RVJJMdWplPdbiGfi7RNxJL/xRq8LTJb1y05VkVq6rdSOhMgpQAcQLw8qlHTGLQqnrrVQEqgOeAes8eS6ZnTn5bJQZBmVnYnHkMDyxOfEpBDTywM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743539994; c=relaxed/simple;
	bh=yUu6T4fI4k9oeEZ+j81g3YI5ANkt5o1Rs/x/zAU65Ow=;
	h=To:Subject:From:Message-Id:Date; b=YUeoXgKHtu2Ptp5PnOAIdg7d4lHivNWWBf3nG/Fuhpwnp0ubxCWHvfeVJYjKdCPj6G9BQxyCd8SmjeKEpgmR72U7fYWM7eHDDJ9XxmkaBdxJgAqXaQnHpgVtV6283DQ9ZMJc255VmfYsu9q1CcD/ekLUmpqpwuWy9dmAuJJNZRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk1Da9HV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk1Da9HV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AEBC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743539993;
	bh=yUu6T4fI4k9oeEZ+j81g3YI5ANkt5o1Rs/x/zAU65Ow=;
	h=To:Subject:From:Date:From;
	b=Yk1Da9HVvWUNzZCaGT3iWtio7oJfHbNmP3Iusn+IwLoVb6juEazIAn48J/XsrxpkZ
	 eHpsM6dCNFR3q0y+IlMyodzL1OQQLIL2u2vuHf0821nAcJ1p/Ao3zBV48qEaiNad8F
	 74268Ihinx9Fx9MXOpXjtG7cb1fK+bji+3QgC+G4PqtyeMMhWlqtq7iMQrZMgZVN4T
	 xecI9urGhjKCr+crjz86KlUFVoltUz0m9/aWUtr220ZsBjnMD64nYsbtDF/1n0u/Tj
	 khIJvl/tFOa8pwFMB7dHnWFIftfmHvpA66GMDP8vAXc2hpHK7ESpUCTihGiOisWEga
	 qCxeSp1mh77nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C85C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353999359.7488.3923220705188451664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f28f21c722071059bf8c7581c68806eaca2847252f2baf8a659aa0339f1d1e
Date: Tue, 01 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743539993
