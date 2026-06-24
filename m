Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D82E2236EE
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782272794; cv=none; b=RIFtc8d43U5kNhE3Ey5tEe0J5oy0Exg4h9fFYQeTZtMENtZO7q6ble18GW4LpQlWUfFi2cVraJRvnwWla+LbnObTUZ/imWPwA/HEQSKPQM0sFaXx1UtaoQPByrDAv5OQK9rQBipo4BcCq6MURJmCoWYtFO5T5ydsa9k2WiIpfv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782272794; c=relaxed/simple;
	bh=GBavzXIg/bB9GXdRMUMFDWOuKv7dM3U6M0cqW7mRxW8=;
	h=To:Subject:From:Message-Id:Date; b=A4cXjlm5BwO1PTccAh1otLWT72BaoDLrQYkHHxUb0Zu48MKGG6NytDE6Fd69QgSVcTwvUIoQt/7QLn+hzwIiNbrZSDBTjtOKQdBhhWwiuX1dm3aS2HadeT8mOnlRf0xPzgZ2ablMUblClCFAAgZgMSOmLOFcDv7uS2OWXcCOz40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0Ukmcgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0Ukmcgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7BC7C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782272793;
	bh=GBavzXIg/bB9GXdRMUMFDWOuKv7dM3U6M0cqW7mRxW8=;
	h=To:Subject:From:Date:From;
	b=L0Ukmcggix7Ou2c6ZiHCKyfxHL/jAWEdBYtjJVPg+DvDsZY4Fln0qphCqx0/X7Efy
	 ap+ARsOfgog7KWeZJly0nSbVMMqjOKT/iEknijNiH80ylZzHbeJl+s/OA1zoAAZ2gR
	 Sm7j9XZdUX54MOpmvup1fI24U0YSdL8JZaSL4pAfAWJFZsgVPpj7pJbPUsQyCYPMqh
	 bN0iPBAgltKyFK0Ll3JKAqrBYJAY8S6x//tRr86ApxNWl3osqunOsXGaz76WfyY4E1
	 8DAgO/AG/zQ2EV5ZK+s1yu6Q50T8wzMeteDylXGTW/hT4JSAoOWrC4MuyevSI/Imai
	 R9dO4GdD87dog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02B9CDB475
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227279372.25124.14218959624822135033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecefa9ce7ddc01706311bcde44412c7b7337f2a5e9943169a132c1581e5d803a
Date: Wed, 24 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782272793
