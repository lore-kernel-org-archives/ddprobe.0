Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3B327F011
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754740794; cv=none; b=f3zjjkoCvetW+83Rw35gwyclG4Y/fe9SAqo9497QY+dat+gkaWuOz3qscy3+fakcnkiRW1f1Pe/6HqWtOBYktaMxTJlX1wg/64xJRuO010CL1ijSM6Plw9gE4I3TRSLhVaqXuXOoCWwbvZBLhkTY6g6ihaAx+qJq9WCQETuHieA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754740794; c=relaxed/simple;
	bh=yc5Z5CXw5jh9QB3V/NJ+YIdeM8K3bPUJYQbeXHSFm+I=;
	h=To:Subject:From:Message-Id:Date; b=e/RD43Duto4GsuTi7sLQ+rMlrVi0+F7oC0wXgynVImIdMiC/FfhvhecQXNvppBM9vrlOrAVGhavYKZ3ik9tX/6zwS7SU7kDvaULm9qi+q4Wb0KRLgl9Y79EA++rvNyqwMIedOkGIzjAuJe9ZcfcIqo9klNnGeisEsTuIuLDAD0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBtiqSiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBtiqSiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCB2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754740793;
	bh=yc5Z5CXw5jh9QB3V/NJ+YIdeM8K3bPUJYQbeXHSFm+I=;
	h=To:Subject:From:Date:From;
	b=EBtiqSiSyGHqv1Bs7ewm6eQSASb/tdLFxN90FDP7lp03xrAFOAf3oZMraGlASlnKv
	 Z51TpltJqvsByPXU7dbmS3MXz+jtUKZOFwS7jJYvf0oSMvMrcmrs63r1KUakb84VWp
	 R8ubdjRR1epkoAxBX4eCdMGtjt3l8187wDjKXpOX96BDbpk1lIJfIAF0RwB9eCb4Py
	 lTT42X0gqvfi6Y4Kbgs0SgbVd1VFX8yA+sXqjrKZtypVXYlG2J0ZuFelQ7xN1L5cGo
	 29jAypil1Wza9qG9L/DFb06I2tXCcyt34Eq5WjuT65i+X8QG8Utt4JftNghmSmvma9
	 7WylPtQkftc/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DBC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474079357.27765.13401746485341990866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3fe1b20266c5dfd7ba31e2f4ba5522285198c8dd62996450121d04d86dcefd
Date: Sat, 09 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754740793
