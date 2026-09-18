Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BC5343D7F
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789692034; cv=none; b=FJ1Rh7Tkfp/y5Z86d0pLSIgQv8+SjRD8sqAL+0neOsg52zZdpj2fNYZczp8HeFnYeJKswNNA5scot2GrUIvOgyBfW0yN2rrhwbCSytxbW9BzCGYUndW0+dvb+JVDKKKMG8sgt7yDEv1KBh5EuWydgrzvTqk1uuhIK9cqMR3X9zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789692034; c=relaxed/simple;
	bh=dAsztm/+dhq8pYC0HBt0zRc2SVYXvjYi8DkC17HJg08=;
	h=To:Subject:From:Message-Id:Date; b=Fu+cpBpv+7q9PZ+NWJz1QEfA2QdotfD1rTYcu4ZH5QQJ6Dwx7/bSV6zKGY70xCyTOD9Z+LNIsyKenRi/vSfBjlQGcgYNj/eD1KKy7bHpqhd3mcUwyvjy5btKAkN27UikS+cVFRB+lRHq9POqVJWfvvx7zddlCXXDxCwMn34d6E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kC97jPJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kC97jPJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFB4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789692033;
	bh=dAsztm/+dhq8pYC0HBt0zRc2SVYXvjYi8DkC17HJg08=;
	h=To:Subject:From:Date:From;
	b=kC97jPJHI7aVX56VPgiIQOcyRYG1Ll+UQcnvXOVr8SiTeHO+LKCsk2z1vgyIx6n/o
	 yOW2bErEgp5wG6x34TgWP5NR9rnfWm6jUtA1e2JSeC2Ell3vEmXxmMIkPGPAXB15lH
	 TEhDr2Nmn4xIcJT/MA8lppozD0btAkjBPSy8OMEKOA1zQn/U62vCUhVuIcTaZ/Kfe1
	 1B43nlzSXlWHJsiI9e4J5ThfwLfGaiIMYyHrPzPooUtcjHWFnUBoYUe3Z+wy8i122M
	 EP79mHV+7HZ+VH5TN8I58bRgVZnHxU04r34DBwky3OrD892klCnIdlru+WoRPweaXA
	 L2Y13hZQOPGCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADD6C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969203369.31865.14067550874576612912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e4c0808e21d3610818ba31bd8ddb054d61fc220f82b565b107f5b0cb2f7a90
Date: Fri, 18 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789692033
