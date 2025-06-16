Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E216F285CB8
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750078194; cv=none; b=txyOWFnsSMJOLWH6fMmqt20StfLP56ctoxsFk6v6Nf2h6ospP07Zg9WJIMgd7OynpUHqunM8atEqUqsWJjBLGHRJgnBOzKQDDikATCdj0VME7wIt3OBL1DPn1Dkjv828zGbRIbmI4QfkBArRyc894zbQiG6FQQiLiNgbPDXacj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750078194; c=relaxed/simple;
	bh=O9rCawQ7HfnM1633ABEIWcTIadisE2q7eCIVb5YCaT0=;
	h=To:Subject:From:Message-Id:Date; b=uHKApgEWpkBmIcNBm4jPOMBKFaTFAwdLJTgGu3ASE9+fJ2JMOj5aCal/HNgPdG1ZpOSJHwy7wQEC5Mdpx0oJfQnZWQKxGm3fOsID6ISG+TesgRdvR455vb1wSi1Tk0NBvWpSyyF2GRl4dUPgc2DV9D/6D3ZlzgZDqr8dcrFZYFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRjLASiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRjLASiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D1DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750078193;
	bh=O9rCawQ7HfnM1633ABEIWcTIadisE2q7eCIVb5YCaT0=;
	h=To:Subject:From:Date:From;
	b=QRjLASiQjvhfZkqyGVbSY1XbFDZLb0F75IjFN7PzBInnTFxbE9M7h/aZXXm5ORTyp
	 aQXlev+cOH+vXdjuufbloUO1WtU6ERiQLXDPjMWqaLAyEM9qIHHdUUscYhZQv6Pucf
	 ZpSCl3UiyqNOYOhw1rLBidzlu8eh+0sMEvn2cJ5HC8Z/gZf1wzxXUQCR5HGz9WXteI
	 k4iN4lAUkjSL84dyiEEUudjYGZY8m+utzx5Xq0EL1oIqOfLuZ8QROVddJ64CexZwPg
	 pK3eyO1pIneMmltC1SR5wefy0xmiJL/cFnrEuLDxsTxw0q8yr7FeL8uP3WOwc7FY4Y
	 +bkJPuvENr/HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9031BC71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007819358.28082.2940115365809820902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f1c936803ec2fb1153e6897f4d6725b7e4a9e50921dec3c4b19124dd50b7e8
Date: Mon, 16 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750078193
