Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94E12741CE
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752155393; cv=none; b=E2DErNhDWw3dkTYRa+bPUnQll9Xby/HpSEqfYZ5DF2TIUxEewzd3hV9GccsNv+vQqevfYAnZlII6YuKwCLBbf7Z8AcsST0EJGfTj+goDnGV24zc2pfNuoUMW97P2N7Kfw608d4av9CPVSN1gbgXgJihKskjsQQYu3FPyO4FytGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752155393; c=relaxed/simple;
	bh=SEpJuG3rNWyREZC3vpYlO3MaSH3BhvB5djruPROPYnA=;
	h=To:Subject:From:Message-Id:Date; b=RxCDqVXxggZTUpfMBvoNSR50O/RqPSaF3wF/SfYyKK5fWB9rvYFaTRKxddy9TGyl+4XDIkNq9Bpj6UA6nsIDqaFkrraReh8wUeVVn9fwrE4Eyqx0JTDN69EJo7mWOXPYHQ9Z4Tmx7D/wUSmKIL70FxUM6CVMsQb3MsoB+VQYlb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bw1bqGud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bw1bqGud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF53C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752155393;
	bh=SEpJuG3rNWyREZC3vpYlO3MaSH3BhvB5djruPROPYnA=;
	h=To:Subject:From:Date:From;
	b=bw1bqGudXdEJZwQDR0FpCp6CjDakVnpIYP4kI8reKOnxqtXB7Z8gLnQdlO5ZbSUJ4
	 8ihgpjwnsKmxKlNl5GTz35R/PiRLOP0ynezxBVcl9JwT+dwjBXPE+SnNr9L0OgHEmj
	 yXrWIwnTtzCjvh7Lukejj5ft9sLKpfQwupdJS4MutthEjc7ZzxTqQ1q+VzrMJFxoNh
	 qwmizM6mF6PWVIL1deku63xILMYTxBcPhh5G1SAEeDz2qKva3Ofy9YFFE41eMgqMun
	 Edl04l4yc2D/hHgaxJScZirFsiD0AFf0xlauzc/ewqxR8yJTv3lDCjidFuLIzxQeKk
	 EMAa2ppMA0iCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED7C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215539357.15218.5781435599332902410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b779c1bbe2b395efda01c54e6e5d778345833c13e7857adf68c23ecac89aa852
Date: Thu, 10 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752155393
