Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F59D49F122
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789048234; cv=none; b=BZh1d+CiBT11rLNyk8uuVqClw5i++/bcvubT2+pNiruM57EjGwfHjMhCZeKUv8VENw5MZKV0tUHJOsPYavMDrX9RF4NobwsdkHV0+IgWQZm+eEOAmdHHYCJkS5c+toVK+w5h6J8c6UemOR/ruSQABp67tQZay4D+gvqLj03Y1Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789048234; c=relaxed/simple;
	bh=2+K5ZJRYhLb0/+KPjQMuXTVv0pOgkJW9WhWrmNvuVJY=;
	h=To:Subject:From:Message-Id:Date; b=ZNXmaa85YMubTkll97EMDDf+dki4DXQVMtzKblw5zGf4mcG3qNMmMuXGzuF7Dqd5cH17kBYiJIF2oPA75rAlzkgjWvzHpk77SwHnBixhjOpq2zhOQwDXdwyDzQMdSoJ1evpnj3BhhoWQtl618xJU2Inhd8gaLhXU2DxJS+ZtroU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRhPrL+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRhPrL+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC563C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789048233;
	bh=2+K5ZJRYhLb0/+KPjQMuXTVv0pOgkJW9WhWrmNvuVJY=;
	h=To:Subject:From:Date:From;
	b=oRhPrL+kmu8YbRhBFq7uiXehwXjXi8mBbPuE05YdF5mxtrvDXi6HqZH6LqtFaci65
	 h46M6shP6FcxL1ZUB32IQWzQ/F89JceirZl6uPMhcTKEoCzfcCL8BrOK/Iw4VUPCKA
	 YrqfKttijGttiJIyHYfCocK7708KcURET1xjFXVj3wxdjcugdE2qy4/LeBPfGbIe5T
	 rOJiNYE8DrxIIyDqewJBZzSdES0pblr329MOCs9Oi9KsCIEwCoCzNARn7crOAjVu6r
	 f+gOwYQmKZ6F6tsOJfuD4uvymS/+3jBq4bFd0+qgW4hXjnE7vjOjghSX//1zdbrJ6T
	 tEBALpoyb/6xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA22EC79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904823368.20336.11621480283986485768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71240c924927517619c80916257afeb3a7dcd0af8a9a33b3aa6bc4b91daf904
Date: Thu, 10 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789048233
