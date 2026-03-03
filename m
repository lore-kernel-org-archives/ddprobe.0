Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B31A337BA0
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772538894; cv=none; b=p1zqB/JxR8I72x89IJAN3jqRbo6I0SPdkAHY00ijrkU8jkiG0oC4L8KOmLYZsTqKcl8THrq5fYxil3DmNaxh84DPsRFtUochoQY3jhpzXjyqqmA6xczX9lhzEH/67fURPc3IcqOkjYzeGikA6zf2Y2HvhMupQWEenY/Cxz/rDXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772538894; c=relaxed/simple;
	bh=qQ3cFhxDBeEPodbm1PleKfrsaxasHDwhmjQzKFkPYKk=;
	h=To:Subject:From:Message-Id:Date; b=kDYfjj9vqXfyJjBcfztaddvcAcot7C9ot6ty2n1ZBD2+qvlH+LDNjoc/IQIoPVJI6FhskveSRDc524ldh7Zb9nqCo14AJQE1jnCHEdEISc839VHvwi4HBJb1e65hrDk4MP5IqxzoLZq7pl9yyqTdw9vdCMfhVB/M0jbJqz9Htfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIi4RSel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIi4RSel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB305C19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772538893;
	bh=qQ3cFhxDBeEPodbm1PleKfrsaxasHDwhmjQzKFkPYKk=;
	h=To:Subject:From:Date:From;
	b=uIi4RSelD07IfZX+Gi77cYqVnN2yqNZgW/1ueCSiPLHnj0gRMfXudkgA090vXSi7s
	 QODr4oRPd5tAVARBCevOoW3YTeHsgqkPXDfCPO6y+zTte/7rfzwWi8ScJ/gugQtltU
	 obrmAtoMHUf7m7otOmQPUmxnlua0B4CW9+gAQNFs0pBuQ8tLnTDm2cv6q1Tm/WGJ//
	 KfyJTqkUfmAVl/eid5i8dzZhfEgMsTZr7YMlZs0FA/jMdlAkhU7/QGfjh9+dXqEtIo
	 zxaipKttXyNPE+NrRTQSK3GFnGLZhKK8iSgl5cLR1li1uvjyXoH+ckuZMLCdq7LeJL
	 PORxsHIw4GWZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9556FEC1433
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253889360.24414.12937770942937255665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7afabbdce141491e8b5f3f5ed26da5ebd0f11495e0ac333c098c25269a2be7dc
Date: Tue, 03 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772538893
