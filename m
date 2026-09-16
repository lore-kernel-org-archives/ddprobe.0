Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA1A521203
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789575634; cv=none; b=L3vpTyZFnJCB5i1D0h7Mt82PqGrCMbjPVbDDTE8RbKI9FlpruzJTNvBeYOtx4yTorJWQ+FxZ68Y5H3PIAzAo+Mr5y4IAxo9A6ckDt/Mu6XRi0g9h7y6kws6/1Jb7wKugEeyV0aKNsNk7NUlFSBctVsDDoYCKS78mNoFuAcx5kgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789575634; c=relaxed/simple;
	bh=foAKg3WQBJpzdUBw3BuvGwIRjIXBjPleahCAi8Vvieo=;
	h=To:Subject:From:Message-Id:Date; b=P9dmijkXw4QGaLZ9FNWuvlGs/3PUSzbF2+Aya2s0z4SWmVktSB0a9ihrKSvTt27ltiZA9xTiIkogBpIEWa2ff209AItPiJyuYOu7fopl6C7FhYhgko6WfSvDt7ksNJGuJGzxl6HvoFD3kB3MHrrtLWmZaAEm1ZIzTTZqBZXhW+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LR1t05qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LR1t05qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCE0C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789575633;
	bh=foAKg3WQBJpzdUBw3BuvGwIRjIXBjPleahCAi8Vvieo=;
	h=To:Subject:From:Date:From;
	b=LR1t05qyNYiGhXSpkYytLJxM6Z9QukACA9givBmTIdOq8DQfu+EXxTwhxQZ89ALNI
	 fO7U+05XXqN6U4zZS115u2oJAESEe1iaaEV/UzFfUinHaq+EG1FmGFL+ZA9cB2TARb
	 wKulSCnmh3sNpYnosCAhgaGwFQLv2qmwn+4vUfKQdekL/dsmNUtePIH8YMM1LarbPx
	 k8DBMKzO7mPJiLBs0c1J2rccNo0zvPwDXj5rNXFNYI6xnZldUx7KqkgJC9BR9Jg2ef
	 3o+yt6eQRqOYLzGnAh8Q0Veh3QBnzSPz/pn1xCVzh9m4qU+sSUN3ZroZFJ2E0eRGIP
	 HPzG8qH/s0wAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF28FC982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957563369.16718.12902645176839284879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937bf98a80bea0a1de26d8e7adc06b4799b5fc5aaae30fcc85a8d39019d82b15
Date: Wed, 16 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789575633
