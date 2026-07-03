Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF11A262A
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783120114; cv=none; b=UtXmr9TxsXX/xNZf7ESg3K060fOXgL/kUpmYMW5Qq9tE1y0oe9JfpOmZdUb/IiL14FD4syXyHs6RRUhGFd/zcQ+xt/Uk0uRWu0gN0H1tpa58jBHbSNqNAwPEjrc2Edl/WCFr5XfJp3858ZMmTBQATnUSIyuGH9sIjR4zAhcVBzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783120114; c=relaxed/simple;
	bh=Fp4D7iMXR8G0KgSKUuchlR4xCBPr5IqO3vO47FU+yLw=;
	h=To:Subject:From:Message-Id:Date; b=fe1tgv3MWzxA5+1HV3J5W7PxoUZvpHjDuXmTd6A74TB/Z8IMtp7PEpwWWF+aRSRyNgtHT/CJX1A7UdBPJghcHTRcBiEFIDiCwJ2TU7J/yhHSBMaCU9RTwKSkQaWOxWXjMtuOEFYDYigeL3tEXtCpKEPVe9zniJheKV1hsQdmhPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2rKyQLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2rKyQLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E80C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783120113;
	bh=Fp4D7iMXR8G0KgSKUuchlR4xCBPr5IqO3vO47FU+yLw=;
	h=To:Subject:From:Date:From;
	b=s2rKyQLfgt2KsL8W7cDq5GYKEgcdUTs1F38owg5wi0aM3Icv5FU/sBLqWK9UTNR42
	 81hfJPw+qLVaKg6WjJ3Fvfm+mVAD7PWK/FmTwvqLNE2mnriJYvaeu75F1+SlHMBsIS
	 OmoG+J9RUt+YjkKZQImdJB713hLA/+WpOsq62UlY0fZ3KgqXK8lVKPxq1YLrxAOyZt
	 nkkCpGe9h7vn07JQJZSdtZxBfq6/BJCVAXRiwIZSzu/5voT9jjl4iid2g2LvHqVaFo
	 29+t2KUOsdo/D+8i3q0dkuESprRAikgPh8yvQG7WDxVuZ81l3uqvI7K65bJeyF79vZ
	 uyBJNJE2CPUqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA60C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312011368.14458.17345882260643247917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0764efdbd3ba6fcd77e195bc0165d41521de68606b2514d0fa48ecdc293d51
Date: Fri, 03 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783120113
