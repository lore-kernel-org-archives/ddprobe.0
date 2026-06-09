Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3473C496915
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781028934; cv=none; b=Di1dzD3zLiZWzpluMyv3t+nV0rAaPXVwCjY8n3gn1F7a9wA5aRkrv25wwqmBjYR3y3+Y5WlnHvshU6cdykBx2DQ6HMSONVAF2Y2hBilwV0zqZeDpKS0ZirTRDpahxARH1/JdWOTuzZsQgFACDM7fCU1Ai6L0LrvNWYqTGahTkIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781028934; c=relaxed/simple;
	bh=yGmOuiOoqX1nPVc2kGeCE/78RaR584CI8Kk5lMAfXFI=;
	h=To:Subject:From:Message-Id:Date; b=I0maO6ejlfZ2EE9ugx5lK9uKPNBxFf62i0zAu6DjIbzofpdUZkublrSFLjsn8laSX6H9t/pb0sWk6Ppg9ckl6hCeo/Y8MU/29Upj06nA7uObT/nFjMWUZZ5WrM8UIQ9jfeexxmeUkObGnVcfdHtJVkfkUqfKceHTpyXi5Pisn1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9eAc8zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9eAc8zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27B1C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781028933;
	bh=yGmOuiOoqX1nPVc2kGeCE/78RaR584CI8Kk5lMAfXFI=;
	h=To:Subject:From:Date:From;
	b=C9eAc8zyL52MKusoO3nY12nVzmieWLJunzx83KtegBULhsCTNwdMooa5qX+ayNFOn
	 /2QYygckjs/amZiu3jrCi+NY0gG6gpXlABN/6e5AFdpfQ/hW/II9w+bLrw+oBZ3xUN
	 ew1IA2jdp6NOuyBuLp1Ook+kUF6EFJk8dgtaSWkVx4hnNmolFTEb2tgrcw7Puimbdw
	 Zdd8+ZfZYOXf1lVazjOmkK89aF/6uipuPGsudGysGUhM5tFvPjtOLP1tiDj+ClzYhw
	 o1vB6ItfweodIxXPuKmGCfVpHR5b8P/6FPhhjSITVHSsHT5JZnYIJRCaQVW4ilzlFf
	 9BkjbB+AjAcSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4115CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102893372.3251.2544000085442683352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc0eb395c767913dffcecd242f93f644e16e62e8bfa54778b24ec2b3634c079
Date: Tue, 09 Jun 2026 18:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781028933
