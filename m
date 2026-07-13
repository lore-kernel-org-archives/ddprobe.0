Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447E2362156
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783928314; cv=none; b=XRWZHZxK5IPVw9xJnWT+LBu9HCTBe2tH9fZRH8Mzuaf+iDfDwdZD4Zhr1KCJPgZ+w7lJSM/XKpdHsEpCWV1JhfYMyQz2AXwROJ/2GCzZys8Afkseudy7VVWmNjw8P7M3zKZ4wC3fAEXBhJDi6Xck9+lq/9AKlqDNTkMRcrxDT7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783928314; c=relaxed/simple;
	bh=t6e9vZ0c982x2t2Eg4SgBhQshl42wRsiZ3LDWLWZmKA=;
	h=To:Subject:From:Message-Id:Date; b=Eu0iWcSgFaO8Gx/ttt6eybMIJP3/krtg3jI5zSz/NRt6aNyNHS815wsWV1O4/kC/VCjn53iyylc7KTiRuLjfk473iwiyLrwDE9pr9IhV+ENpBaVlVhwDai+8YflBroem/iPtUuLr2DByeV85qiH4qDiLQIPfhlUI0d3O1F/wkns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QA/4wbxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QA/4wbxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D411EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783928313;
	bh=t6e9vZ0c982x2t2Eg4SgBhQshl42wRsiZ3LDWLWZmKA=;
	h=To:Subject:From:Date:From;
	b=QA/4wbxjU8rAdKwgpYDjqUu2GDJ8zJqjyS36W1p/4b7Jzk9IvlwBocRIukbCiUr9M
	 oGrY0CPzb0tPVgQZXdPWJ3p3AOvGcaij2A6bZgWQWSY6CDFnMnN1CPMzlzvHM1Essm
	 6OtFGDladW6hfn+N1PVOF08eQ/Z999wZ19ON+5Jbzh0nYqYYG2lXrxhss0FJRr8JWs
	 yuRj/UJ1K8OYpLg0Lk6GLvlqT6JSHIPRXzCFRBz+O/8rPuaSfoouF7G+6JvfYXL4hN
	 6T6K/UKXc/4n2ZfMn8pXJEqwX8dbHlBY3R2Ds2kmPXAiXur74yS9Kft1A7CIEUbPQp
	 5EE8abqzgAmVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D3EC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392831371.14495.2706127257909152738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890ec1254f38fa0de622fc9ec1ce622fc099b1f80cf98498b839c9a217248a83
Date: Mon, 13 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783928313
