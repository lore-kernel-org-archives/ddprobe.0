Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41ECA1531F0
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743958194; cv=none; b=nBWb3PUdjcnuRkwph5KS9J7XFtt+NPvTO89frglgZDFsqU/P8MF2cq6J0REg1QMZkiLesRMRRehRs+BS4C3RYNAlwUxzURN0ymtZR5XSVxjt9/BDko7K5oaV9j7OBfsaOMLSHH8wJwE74HjXlTLmvnZpU53aWRip+3i5LGUsx6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743958194; c=relaxed/simple;
	bh=bTQ2Vqc4QTnJqmd86L5ztz97j6V8S28MHLp1fGXfqjM=;
	h=To:Subject:From:Message-Id:Date; b=C6CvpanU9LmgGNlhq/YKGtLju4PFlOYV/f3Zn4DcR5J0CzxFRvwpn33zI8gOIPlHTyosT3tcJ0vikkChvwiRBYoSrfT1mM5P0s1yiBJz3/6/WFIFDPKm7WlrhRdl2N3RtDbf/bc2jhwkwgXc9aXv1qp+4V20pR+ITn2KnJIv9h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gk90qV0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gk90qV0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B419AC4CEEA
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743958193;
	bh=bTQ2Vqc4QTnJqmd86L5ztz97j6V8S28MHLp1fGXfqjM=;
	h=To:Subject:From:Date:From;
	b=gk90qV0/QISeuFcHxZniY4dK/H+Libguru47QOMEZU3TOoEJ0vUq5XqdHDwwoXeEl
	 5kqu2sTNdY4Jxlg7KcJmyttKDVjdfOSniCrQ0hcYgFEJZydMDzjCMNKONRdKiYSZP7
	 zSQTJCuF5EIJzM27tb5Ik9CZWHvTBWKNUHsX4uLPWKrJ5nAm7Ww/ynluFEczU7k4s+
	 96jwwj3fvcgP2Z0dOjqFq4ZlL33xt6afAaRGKSP7qpJ0nw6Msmbb9tiDHkmvK0iQAQ
	 2p02Kh1ewlhqzLo1a7VQ3sy5zTbuVRE/Q6AxuARnqm70OWrqOliuy0lZ5ymmFMw4RV
	 7jwyDaYjA0YyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9DCC369A1
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395819362.3737.11721072212064165636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4653a04156a443eab4e5e25dced0b87a4d66c6e8db79db29f727d92f0c9a19
Date: Sun, 06 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743958193
