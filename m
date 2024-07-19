Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC621B86FC
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 05:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721366154; cv=none; b=Pr+gWn0Ae3CObWeLzxX3nu4laL9zfQX5A5pOFRQDV6GJWQ4GgMvZnBwyJvmNjJ9GHlL7lZXPS12nhXI6iWJBjBdNXo62sUo0eGURtNJ8cyJvJIqxMz6iJoi6MK80SG5zc/t2kyvUZ2SeST5+oKuKu3V6M2q1ENJWmEgCJftGxpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721366154; c=relaxed/simple;
	bh=IJmdIKf411H1BvheJrX8JWpXxee61QriSyC7CvQ3l0o=;
	h=To:Subject:From:Message-Id:Date; b=q5xORLXCitZebbpTx90RuxcxJ+TAyt2d2Um5kUrPKUrfZZJoGyJcTNrFwRLVpOENLltL/IqY3VqOV1m99wXnx2KMDsCG/fRIVgsmg9FrGIbUMVAwRDW54cP5SmSCkbJV1BCwrAPsBW6LEaelejID9KET+q1X4GyjqkX/2u3V+/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBx+s3dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBx+s3dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5145C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721366153;
	bh=IJmdIKf411H1BvheJrX8JWpXxee61QriSyC7CvQ3l0o=;
	h=To:Subject:From:Date:From;
	b=kBx+s3dwcm1mPCeGl8QvBwBQbxjZLKU8aMxQzWameKPdCwGMFf0upxYlvPrWC/mMA
	 Lu3qJbsjwf6eKOfziJ0h381Zb18cepynikDuBP7FgJOoFFZdW1Iqodytgh5RD+Uz/I
	 GiFNOrWAyZmgwv2BTEdH8iB9esE0aFsepTQTgKHEDJiF+ergZ35CMz2f09IM3LdNd7
	 vRdjgW+58FX9xW4eeaKsdjGcW3yaXmh4kOz44zoNwFpiyDXJn6Rf1I9WyKoY2r6EVo
	 m6AzX1Q80HRPqNcNNf0S5YZmv3RE55wXhect6JWsLvuU1huHAvbTPJ6nrpQ87KkiNn
	 NSLsEt7pYceTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F78C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172136615365.8414.5935556294945376015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2a85b9e6b62453fbe6ad59a67001dbb48ccbf07b93382b115f5201a962654e
Date: Fri, 19 Jul 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721366153
