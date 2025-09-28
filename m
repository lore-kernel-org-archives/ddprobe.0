Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD4C299922
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759057794; cv=none; b=jr3MFVIWEQbtWAMTmVXftWxi4nndwnK7KGiQFVRadqAW2ZskZNqL+T0HhxYCEtlQ9ugQDqZdWd32O/R0WjPL1nnei/T2LFF5AuLIDKw7djn76BmrHxZl2q2FUNn35yZ+XXJQkYj+sb1EQonSNWCQYnRX5I85ArCfUowb2BuKwfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759057794; c=relaxed/simple;
	bh=mDDEQbV7Xhkj6xpfvW+YRKld7v+ea3OXAzpW6nRFQcU=;
	h=To:Subject:From:Message-Id:Date; b=sT+kCyH5f2dGpLUc8Uy+hkdpUg73P7MlzvIcK7fDfsdXnhPUkLUr3qrY0+V4iHtghI8zXDzDKV6YH53s6QNJSzlVfWL9o+k2FP5AZkRPADfXWmVw9nZeWwfgoYlOf33G7zR4qbQjLZi56fq2qX1iD256S5R+goZMWSLRC7JLKws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhACOMsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhACOMsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6186C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759057793;
	bh=mDDEQbV7Xhkj6xpfvW+YRKld7v+ea3OXAzpW6nRFQcU=;
	h=To:Subject:From:Date:From;
	b=EhACOMsS/mjNNSm/j6ZuV/ZUcqDhITUvf/yMSHKYJLQaYykxphsqQxfxB+b3HelT5
	 hI3l5DmSU7OFhNMuIhQ7etewo5nagVQYJ2+NFVORjh0fe/x1uCZ6qmycl+M2G9qHhH
	 kP34ccVwkKfremfZu9WWyQ+MZQF2uO65aJYmSpFZ3PyC4txj9lvWXHGvjKkzxMkJhQ
	 cv9qS5576yONyEgAlE51vZgRYjIBjSAQKwH8nZMd/K3Nagrq84uMLvXT2DJRBkHu0u
	 9eEPAl2yhp4XZa3ZuclPMrBeG6ixNSFozUYvpRvlvbMDl1V6EX6DYsCWBjjuoxQAtO
	 SVwCc8lG8SSGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94714CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905779357.23566.2753191951669197919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5bcdf2c347325e076d8a93998f67b42602092643353326b7e7a3e1df8f3c3f
Date: Sun, 28 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759057793
