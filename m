Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4033823EA9C
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734021354; cv=none; b=ujtz49l5YuZvRgFYLHXauwSBBMcP5+gYLT6EpNyWSBeB1V2wFIdG2SFp8rt+VGNlOGgc4A6KD3UK3rXQNgO0jh15M1f77V9ldY4B6+4JC+IOLAxN+qGyguvDpzDgNV3SYx7ncwrJXW+3PCjXxFg1KP5znlN+QpXBrzfs2EUMkO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734021354; c=relaxed/simple;
	bh=fP3CvrGi04cSjXwJOiFj58snCWWaYFG1PriQiys3nrQ=;
	h=To:Subject:From:Message-Id:Date; b=n3L4dyaEwctEOkb9s7RsdIx4RQx5yu2mAyUAp/w9aYrIn1g6STRr2udwsmaBGih9Jr/YPZpEzhV4puqa/PkR6ZvF/rKySMXFjLqljqcq+ueIR7gKuYIpXLuobwRfVEosEqfMRN8zgx3LDMmaCYm+WN+FdD7JWMBAkpM7b+7C03M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfYGudvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfYGudvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6194C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734021353;
	bh=fP3CvrGi04cSjXwJOiFj58snCWWaYFG1PriQiys3nrQ=;
	h=To:Subject:From:Date:From;
	b=jfYGudvffjdbgjjKhq5cD/Cno0aEyhHUxpYW3aK7WFHABCu0rHaYhoWwNMBfrvR7w
	 4rm2RRnEPvG3kNY5wX+hjAhp9JUEIv309qyebhVlXrqFc2ft3I523SlocGOw2F2Hh/
	 s9Kn2PErKLDfI8+LR+zaCsFNQ9YUZpN1X2uM4U3xjU7odWv918pIWO8w9zC5JldB+m
	 R0p3chKT1jzpI3yVB2/Fh9v8Q+dnjUYpR3kmXoUYRmVARNtchIzX8jfUazraln4IAh
	 29UOJDNk4iHPr55RhGuhtxyZ/kW8UlBVewZcZPbfexpM8kFpXjE/sYkRPbZmUIpTvu
	 ABBNMB3KEOBrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB3E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173402135368.13645.4144925289057360732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cce954d6932d96e556102c73a5765082f5f11b947abfff37006a4beb0fdd1ec
Date: Thu, 12 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734021353
