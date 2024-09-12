Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AA71BE860
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726170354; cv=none; b=gkYR57X3Lw3yudQoE+P9ea45kknELvkTeZ6BP4RekE6v90zIhljEgBHakzR6ONgztDshkTqloM+MgSRVcBbCIJ7vMQNKidIYNjJif3kX+U9F+By0eEj6FHiDMUKZxqWddBkuGBNCaWZnuMEi6ZngY6tl8xge8IBQKvJfhW/yabw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726170354; c=relaxed/simple;
	bh=jtiADuRUgn+8WQjbLAqUN+zclL8tdvvULO1P7HApPoI=;
	h=To:Subject:From:Message-Id:Date; b=bX1cB2ADJznNupDOCpexPQnkq8tZKQnPpuoXGwU0AQTIT3ov0bA/SAIBQxGTzJu0cdx7j0MbamNclTnPeCJuWAuK7GHaG7I1TJ+pMxWcGdy91qAfdTJUHXm+Vl5h2NU2Y5fYv8hTHN5Sspf4HWMe+illSnqyAD460om79Rfbqpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lye0a4X4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lye0a4X4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E49C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726170353;
	bh=jtiADuRUgn+8WQjbLAqUN+zclL8tdvvULO1P7HApPoI=;
	h=To:Subject:From:Date:From;
	b=Lye0a4X4UBuIGmLMIdUTFimZPwspVdQn4tudv/Tigo+3ES3JsvJHJJwGj60Dts9Sn
	 qM3zOWDMSjv7n9aTtik7fpuRDFBQFGp/guZ2QFlMvSvlZcFl1jUf+2va3QnJW29j6d
	 cnxhanNoRDHYJUn1rZTfz2rhbaVLht3QlgMJPQ+rJZyZLH6jkNhirajh8Dincm1IYX
	 XKz56MtBmpxx/XkzjMWCLIw+CtEDOebgsUdt6wr4G+6WsagaX1+FCvBk2gPMHCl9Dt
	 wgxKWH6k5AQYHFfn18zglXgWoJ1s8tZtBQaOQ3jSXEOywWLdyTnq2qNecGXts8GbpI
	 1xxZDxMPPmj/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A173EEE24B
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172617035362.26764.3207883392901119539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e919697d4a5ad92cbe8ecc571aa3341e5cb9558eec3b45f12f508d752a65cc57
Date: Thu, 12 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726170353
