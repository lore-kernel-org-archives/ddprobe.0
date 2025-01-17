Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE161096F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737080754; cv=none; b=j/hYsdtz0kzdRpAXeoQ1ut9KymF2cDSNJdmWNcUQJEk14CbXimwEK6bBYupTMIBc69ED8QSQPEJHjeg+BrHxU34PF8dKYgZNRCvd7FBD+oLUIwV2UotNwfsCZCnm1hnZuyJm3S/5ubTCfXsUAOyu1/cDcIcGrIzZYAAhbEO08pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737080754; c=relaxed/simple;
	bh=vLg+6t1tPIFvTZmGgTpB/tytTUYdNm8m2us7XTmoYFU=;
	h=To:Subject:From:Message-Id:Date; b=XEaH2Q+Sy9rcwo12nGSaT7dc/wSQrAiQVZcgMpY+B3HOXPuiLpErZ8O16uG4avp2oIWgVaG3DTbQ7Xk5IMK7xWM4DugQIk/xjNCLrqtovclKbSiGbPUUWiDZgf9LWjY7gIBkLUOmgZOI2t6aQtNrAWlDRpcNBhysE9vhcTdv51g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACTd0KBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACTd0KBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8285C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737080753;
	bh=vLg+6t1tPIFvTZmGgTpB/tytTUYdNm8m2us7XTmoYFU=;
	h=To:Subject:From:Date:From;
	b=ACTd0KBqzJagq075YFnd4GNMyTUhdhWo9TDLHsIwlFsfp1HXV51IU6yiYSrma+tSE
	 K63M8wD1yVjIk9BuyJ1fBtNqeB3GH4IvemfT4f3Zp1qeaGOu+9vosVaPvY4jlILjFZ
	 k+O7+89531KkSvpGayyMihNTjUyQ/AS8WmBZCDk36ZQaKF1rSDuoYiG3pWrTqCd3zD
	 fGoFtgntHqZy+rT9SE/L1RzX8jRB/jUVSK2Pd/AGuDULlz90qOUqP1ysyiw5JFBAVa
	 j5wwo2Sk4TgJqdyuKtNk9/6+Alcce4cEmDOb/Cc/EG1m29/N6X86QMdBaxKqypIRG9
	 2OntgGNzMAuVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9384FC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708075359.28881.9602148284673105347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2052f19bd8a1da4c182fc887cb005d1145f116ba4414081eb64fb804807ac2e
Date: Fri, 17 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737080753
