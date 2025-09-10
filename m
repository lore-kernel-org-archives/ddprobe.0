Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0E2175A5
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757489395; cv=none; b=eT8OvAYSy8K48WGczlZ6QhIfthhxWfYUbIQ6BWBkMNNpcI/yIyR5Qy8eLqqhmuol/f5tOMdpbth3u/ArxnBCcy/gRNPQFOZC6oiwZhYNIIF624L/KbS1coDPigUBPOY/LrQU+KY2ILx1OhjZxfFuGE452zSXM6iI8f+ZC1Sli0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757489395; c=relaxed/simple;
	bh=OPhA8JMo+8PJ8CgtRW1qkEasuCPdbGrC16v/AoVEzcc=;
	h=To:Subject:From:Message-Id:Date; b=k3ZJrXgZTUvEKgjqItlOLJqTp0PRUxN8p6WpDhOhq8LbpOvqwU8f5kvlJ7TFfWndrOHnVcaCyrL1ZDgoHmxmPcYtsMNg8NqoxOKHxAisbysiMa9VOvsEjmLK0jA4kDgEefTkDRrSUpATjIjgDTSvJtkJ7WRRgcgFHz74u5SgqZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbQWWsyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbQWWsyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11CFC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757489393;
	bh=OPhA8JMo+8PJ8CgtRW1qkEasuCPdbGrC16v/AoVEzcc=;
	h=To:Subject:From:Date:From;
	b=MbQWWsyUh/dYp6rremev+PrDNM3oFKLrqszXqPMqh/9rSQNtVWAhRYfhczBNBpqRV
	 gEXzef0IRn4YICnCPkc/RJx6L7L///VZy02dc5sqrJrXjhesa12B6/kPDhjx0xYIAp
	 m5WychazEVyE9hSP4iVPRSOtj99ms2WnhuXnd92111Qnwbk6vreUkb5sBReXnTwN7H
	 GZ1gzRYr7FG+58ne+JIXZMl92u9V4gAY789n7eeGJZS+C76XgQOn/84XX99HKaIgX2
	 aRvfFofxGHFGAT8CHaWSCviYUSuV69uAXtwwFxaAk2hEZ6HCO3NwrqKwCv9ImhuuME
	 uXyBPHwZPf4Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F602CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748939357.1719.1988617104598659466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f9d33dc305e3142fd6c069e0c0d3fc1bd33c92dfc18b4e0e2a474c296225835
Date: Wed, 10 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757489393
