Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E6A81741
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754557794; cv=none; b=i8OP3q8c103Zsfn5xCqqDH+gsZq/pQ2h+fn/IjPPFG6kOWRIi7+WMiCGFpoRZb5i/3lX+RFIlcZlkdqtwBVn201KJ8CCT3MbazQuVaAuimzahq/EQ7T7SwaHla/Wv+sVX6ZIQlp37gELxixC91Mp1tBWBgemvbDIgtmYKhxvQFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754557794; c=relaxed/simple;
	bh=9JpT3onSa1vSWR1xhWdAH0G/jwbk0jbovx90IsFvL4I=;
	h=To:Subject:From:Message-Id:Date; b=oDmnYjhQtZbSefN7d3JuhGAL6vzffWMmcZwGpMnWZe/g70ZcnaOebo7LtwmaljtU3VdJtzqJO8ps/KVMAf0H+9OAHN1J9na3lXh7D+6b8yXEzUH8aD0CKF8NLftqcF220epkfIINV+/zZKuDU02jvU8oKMUU0dOTb9AI9PgTJoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMUlIR6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMUlIR6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12ECC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754557793;
	bh=9JpT3onSa1vSWR1xhWdAH0G/jwbk0jbovx90IsFvL4I=;
	h=To:Subject:From:Date:From;
	b=pMUlIR6BKAmjc0KGiQNTBq87kzJ7C0LsZeclZ1T5C+iIbyBcAnSZ01iz8tj53z9qJ
	 RImD5iixmXJ84/I3PEz+fRbUNNXlokZpyFCbHuJGWNaHDyhVW/vyOBHdTjswcn9+50
	 22yfadq8yRjXjeXIfZ0P4MpdGuwkF7rXyqZ+ueZ/2i0c0XOyHJbswws3VP7LAEeSHD
	 LYaPU1O/K1PqjbgsuMsaSpdEDIGdx0ImdYBoeKklrNqYDiwRsHtICjAWqahErcEMO1
	 YyE5qYNN6Se3IikgjnEIdoCbmAnxtHv7XkeY/1CREuiPa0kHxJPC9T77P7xlk6BeQp
	 JTg1B7JSBfYAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC7DC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455779362.25190.13797000672786596047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffe3fcc39c873d9e22e5884a593c474663e6c4f02701ea63235812401b18c50
Date: Thu, 07 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754557793
