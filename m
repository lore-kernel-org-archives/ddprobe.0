Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18330185B67
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754103594; cv=none; b=cvhQxUJJg0aLYz00pemaLhTtO5nwBXehflA5nx6hpdRSz5JyXXuFeSGRqnXMVcFxm5HnC26CC71psReFPuI2yS2dHuPD7yXUvJvPLAiHU/Cc9i6mftCmPThnw+RtgLjJW8PXOmMCp3EpiqtVWlck8rmmO8z2Bw2N3iBFV59I+VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754103594; c=relaxed/simple;
	bh=q+7XjH1e9cVNR6PD1zFQvZCo9XguYJNGaOXpbVdQkmU=;
	h=To:Subject:From:Message-Id:Date; b=CpYdKjV0GNgZhSSp9d+UQ08bsXsGTzxMIzCTHWd7E9VJKtK60/d7XeahV4Q/nti6wC2LZEYs9sopc/gHAjIvq/6sfv63EBCuRU+5RWk5+ej0dXsVhrLkrz5W76nqWuu0435+DOwIBrTHNSMyX6uVaYHe1mvWkPZnKsVGexMNz4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOuVCptR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOuVCptR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4932C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754103593;
	bh=q+7XjH1e9cVNR6PD1zFQvZCo9XguYJNGaOXpbVdQkmU=;
	h=To:Subject:From:Date:From;
	b=uOuVCptR7vWk3/zinTVeuY+/rB0pfaPnbsmYWdbv43F/r20PP3Fd737zplrXrW13F
	 ekKn1S32SnHDEgKR0oHtlbv74NLxPxxmj1lw6hchk5CD/9qZDMLplOblmoRHnC9Lxe
	 sen0Rt9D9qgxPutcgqQx0cAFY9xAzamG+Fm8lqhLhjPXpa+wMkS7lZgK0r18cWgqW3
	 HvvYyNYRz7KLxJAQ1TPimMHJbJhM2vcD8A366s9xQHT2TDFuJTFWbYKLRNJCJM1iDS
	 GnP8EJ0XSNvWDTMip2SIze9TJeiW322qz36X1IyDL8EPAJu2KEw+Jq7zHtq0FsqrKu
	 3MSASyUuXl6Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95818C87FCA
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410359358.15101.11464334525121382152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14237684d4835c28b97eeca49a68bfdb062ce0ed8a6071bba8cff9521c48c283
Date: Sat, 02 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754103593
