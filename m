Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547AA111AD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742488194; cv=none; b=s96k4iSMnoj0kuL/sEKRTrgVZjn/EkuCtDeR+TVS375jn1w7SSjrBvrshRIaduncdBm+9br99ic6gCOyUEGbwBQ7AFcFFIdS/DzpUnn3FJHgd83Me2m0EuR7R8Mcdncn03/IgADxassEVQzcOCzYeyKRs7x9YJa3g86qRrnYnyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742488194; c=relaxed/simple;
	bh=4M085p1JXG7UnnJarYibZbLKtB5AlgumAPlfUn6zbpM=;
	h=To:Subject:From:Message-Id:Date; b=O/qCP6AWbLMzXVmQu0neuo2J2WcYmhipD5txXZmtRVxYZ1lO2XjLl2rLQpQg/r7XZFiv6Ho3ysPUaoD5rXI7tAGzpue79jXgALbjz4KlC1jZkG0+5xj4MBIk3mj04ErkPr5unGnL04z3OZgNka6VCp9C4/GvRBp/fnlgXv2Pjqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeMH+rHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeMH+rHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4E3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742488193;
	bh=4M085p1JXG7UnnJarYibZbLKtB5AlgumAPlfUn6zbpM=;
	h=To:Subject:From:Date:From;
	b=VeMH+rHh/tuSnIYBCEzxKSKTVqCC0AiIeYYeIs8chi/MPznZqKfMVWb++8flNb5Gz
	 8cUpz7TmbwIAl77QPa+c4ovw3tmMCFXIiYTxEDklP7bAAiXGpjRGPpQj7kLSrreX8H
	 TIieQmUaxABDO+2lxJM9bSeuHxMCl7uWsY1ggq4YtQnCx49Bv98AYYI5HMIR0ehzZs
	 XrbpPeAJxio1MdMFwHKZ9mAeIhXiMfC++xfTkZmackmfV0v3vAFLmFqj0uqdPQoWyL
	 PaOr+afg1gpQKIaLNhAFBC8f/29bLd/Af7ya4KlKqSQP8ByPVdhJJQbnxDZwkWt7lg
	 lY2IfmFIPEe8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5BACC35FFF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174248819362.20942.712127423570856179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b02122d42d64c9b9f942d21bf526062763b74c29b521e30f6efbf14bcfa4e8
Date: Thu, 20 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742488193
