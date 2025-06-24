Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D2C57C9F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750747794; cv=none; b=ZljjvutgoHK2ehwXIrQtZGS6COiWJM43Yfru2lVMxlEe6s0KNeo841/cDpwpsrZ40y1IncKrmch0hksozg+1iiUg1ryGQOLPxSg47AcTbguw9ok4Y2g/k2/SwvYVjKp77ed2il8IPHco56FuGXPT1sG0izHruH/lAUEWvVrM/A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750747794; c=relaxed/simple;
	bh=bf6I2l6ENhuNIBb5xXx+mrezB+q8c7EYdYEJhlTOkLU=;
	h=To:Subject:From:Message-Id:Date; b=X8NPlf8StIcIVRZbAQ931Ijb2PJmYxzarA4/wSuePyzchWnhuQ562uCGzT9hrz9xIcqGGfAkN6eFWutYF03TQlL5t6rTjN2qoBgO9m9/lCz59JWkUBxIKckB+RtXCKnLuE322FXiUqLRMcoKaMXZL0rPFg8B3vq6WVmK3cg8VkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUliGxSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUliGxSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C27C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750747793;
	bh=bf6I2l6ENhuNIBb5xXx+mrezB+q8c7EYdYEJhlTOkLU=;
	h=To:Subject:From:Date:From;
	b=RUliGxSGe1cckKbriV2XXXs8ljoYOk7cJFi3PTphDJCUxlzuGz8JQHVRPRRf/udZi
	 Uw+r+oG+7c35avAEm2wzvilBCDb99t0eCBq1GbykyPOwvHRW+sEKiHkCtMoxfhPyjf
	 MxnhIPiv96Z1qt+XKs3qf7cP3HutvCEKPWRlZJ0JUsLjFdzkpmXWXvr9lE7Uv+Rvoq
	 9IvI6yC9fFzOoFrg+wp3zeYO2yzJSOieZyqq1B3aCUnvMq1FcWn0BSxZQTEY5wktL0
	 EHi94S3h954wz/OId8QY1DtgRV8Qme45vu4w+/kh1SzBLkhF+G5BrU4omAeoBWZ981
	 /hhRDvWMSCQyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8CDC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074779357.5124.15220705083605644681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff6de0b707b4e0b1a03a7b0543452a13e7f10f10586e042b5aea6d403cf0d40
Date: Tue, 24 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750747793
