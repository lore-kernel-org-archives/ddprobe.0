Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A96B33E7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758695994; cv=none; b=rSKKiWP5wY4aJHvZvT/AouDp7vMAwo6xveAyyWmhAROLB0uAV/3LmwzdPcIj71DsOWumnR4Z7Diuzes6RvzDHSEI3MDCP05OsHeBJTLu/gvT8r2+aixSdfdBVrG0dTVx85AZwRt0aZaPq0pQvKkNOvJYnw5QfcqgXi1fUt4Jrls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758695994; c=relaxed/simple;
	bh=dMW8CtqPoyqAOGSy4+UNVd6w9jfWZayji6ejHmtH/BY=;
	h=To:Subject:From:Message-Id:Date; b=O4ATNNbikiqyXhFlz/Q0M3vBewguskrRzcCp7OmFzaBxSFAHUn9C48egsmspNllTmHndhboJ89y+M3aMIosShNoIoSVZJyBbP2+H1UOPvj/4r+tfpMEWY0pEvV8gWVoDyrE55MDdK8lBoKEzaP+u3KlllQ0rxIxEBO9CU1Op4SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRc0jn44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRc0jn44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CCBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758695993;
	bh=dMW8CtqPoyqAOGSy4+UNVd6w9jfWZayji6ejHmtH/BY=;
	h=To:Subject:From:Date:From;
	b=qRc0jn44/igEagplcyO2fWscPtvm9o6uSdl9kY4xGmTaK841pMN1O24oyU+qlYIv9
	 xhUDCEIAEvBoPPHWLif/nPXJVIyuDqLNMBDDmC5KXUyaknZMjoLSG6JkMX5Mx+2nX1
	 hu266oxo/AGu7JaEp40learUu9N/KuYMUOY9okom0MLIkiuLhqiBLBm9wJ8R6QDw8J
	 xkwWueiEVDXejB4N7BWe6XadWhA6jNn2xr6fWq2REqg9jQGXtcNS1l8fIoyICLr46k
	 HPgNI2O63/l1s3e41krYS8a6wWoUL4XAEMnmVytpJ/pOU9lJdCE3Joueb+KnSNX0Hc
	 VVuJO3Xusr5bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94025CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869599359.21491.11739086176967461688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a74e395f3a0cbd85de14407ea9f852617e0e1456b7afddfdcdf4da69d32b5a0
Date: Wed, 24 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758695993
