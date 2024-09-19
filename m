Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284F61C287
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726773954; cv=none; b=uDABB1FLk5xMYBwY7wVF3srvi0eUS7hJffCyjk9gSlNnJ9GRZsQ84P7/jcoRmDib3PhbaBWK8jGa2xTaq2uJWqW9gTGlOOz5JQtccteUQqEHDlYCjXU9cw30zNVNZZW0pysAQvV2sl9cUy9jLG52hkD4VGpbG4e7Fu0pOHZen4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726773954; c=relaxed/simple;
	bh=7r27WTkSDNoHqUzsS+TLp7DZuN+CtXtYFvQfvssDU6A=;
	h=To:Subject:From:Message-Id:Date; b=CxzuR+JXsNkY1aRI7SOZqxYqTD6Nq/uvbkLyozMR+PQkZWPvAlKdL3Z7FKxZ93+t0mSPqR9hpdky2sAse8tRzLk9DcMOf77sG8uy8oTc43mnTL0eR8k+a9S3hloV7R5Yn1jMJRm6j3RWOHL0xfFT2IbPp3K0KsnRTJiPfV9jVKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxSTW9ig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxSTW9ig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA0DC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726773953;
	bh=7r27WTkSDNoHqUzsS+TLp7DZuN+CtXtYFvQfvssDU6A=;
	h=To:Subject:From:Date:From;
	b=XxSTW9igGltJj4LzdqTja1o1T1CDq9fSZlLLVddxn9YaC0bcWFMy1UfNsRDMNVIxT
	 XW3oj8xwbahsBPAf3SyQFJemjGnEgTn70oZPdk4/88hDbPIsztR1mZcEVPP8Fi3glT
	 dNyg2hg3zx9LEfE89h9Ca8VWfeYxZAU4NFzfargGRiSOhrFVjzb9kHG/vkJ1Q47vAy
	 O1GjS86CSZFf/vF0OxwIHbjxQI2Dj7u3bthG4UcbVHhUmah4YCetjb5Sui4cv1oWOt
	 XUrV7eawyzuo4Ocy0cM8Znwp8YncbCj9vS9KosD+jccF8pk8DQk7znkXnfxskQIsrd
	 zRV8tM0Zr9dAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B614CF3963
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172677395362.20449.5825908820378230035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe40dbbe930b58d9e017271c94b778c5388376daebb9c7798794ae71e19250d
Date: Thu, 19 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726773953
