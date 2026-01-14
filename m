Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC7D35E526
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768375435; cv=none; b=XhMGiG9NJDev0JL3rBFcIbqxUDDusIIZngh2wZmRDBJzosnN5fYUvowC22Knc00AzvsVt3r2g/BWUPJNuBPd5l8B1CoEj9Bn/qOY/3d96hhn0hZDijbCx3hPxb+EzD4ZLL7yIqpo9KD29K8NVhpvHSBFXwTvEz8FQZW6zpTl8/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768375435; c=relaxed/simple;
	bh=+j1fSnMn5r1s2KppXAk+TokeNxSDAweyVhHNd9LYxmk=;
	h=To:Subject:From:Message-Id:Date; b=YpgfbKZ1J+swXU1N/b5ICI/A0g0EO9lvIgE6m5cIAKnocEoDvT82zgWlTuOR1a0q4hARWdhbAbv11WRQt+7WsdCIHXdO9PL607OfNvzXODA587WK4MVHcjXd/yRKVxdbBC0c3qEpBJdXaAD9eo0BkPnb1fqSqZq5T47QEzIDHFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzZ6sCf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzZ6sCf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F54C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768375433;
	bh=+j1fSnMn5r1s2KppXAk+TokeNxSDAweyVhHNd9LYxmk=;
	h=To:Subject:From:Date:From;
	b=tzZ6sCf2ScPofLeppGv96/xU7O2bu5VeKQ9c7uCUM1B0jj6H80w9DOdF7058gpL+7
	 aWABMUBNNkJup/ObUZLe3E+FFbT7xsEREG5phHIj/hPQC8yuooLfUh71f0izJf6iwq
	 hHVcZFUhma3eMLgJ+hN0YzYB+G7zE4x+7AEKTMkkLNv8a4GZvKZ2ExP8iupo9ScJKC
	 ytfX/gixotgjLaUmSfiNnMCwcAfD2RXc6Gxu/Ia1mEJDgRlf9qvjCgbq+7fK5QqKPm
	 Gcy7Sjp1RDDM1pMFVdB2+8yGKkkmdqIxzc6fMkYGvfvRC3QE8mJGkKh7FzU/qkFMHc
	 8Fs5pBiobQP/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D14D31A16
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837543358.16299.8314708272062712678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578afd58e11cf8c2449529b14ea14193c0dc1277567fbb47edd3c918e22fb1e7
Date: Wed, 14 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768375433
