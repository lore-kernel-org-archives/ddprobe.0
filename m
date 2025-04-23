Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC7142A96
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745389795; cv=none; b=K6AStXCQCkdN59rPQKdYkz+fGHmrIvgVJ3ylXfoeRLebXkBzgcewXSAPra41op43lSYpGBV9LSu2QWR+Hb7EXNakF1/h0wvhJMhkOVM/YA9sl4luB12lhREKQlZfHgmjOwrUBHqF2vEivJOTBLeqhbX2ZgwQsm6R2ABtl/gq91M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745389795; c=relaxed/simple;
	bh=MRc3cSIa9dKgaXJiun5C0pLJ3l7TyhbziuSC8hfsR5M=;
	h=To:Subject:From:Message-Id:Date; b=IEcXM25nHCjhUN1rkuZfrQ+FOtZGCyxyil2X/Sf6pdthZot6v/Ih0yK+PL28A+jkGuMfvORLhReJjwDxnOz5+bfjJN2on9rn3tNez2yQyLgfvFmN9ZPFQqqvFwSIshTSNuPT9QSrgGwUVZdL42QLcr5S6F0AUTVPys/RJvQv1Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzMluT72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzMluT72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3995C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745389793;
	bh=MRc3cSIa9dKgaXJiun5C0pLJ3l7TyhbziuSC8hfsR5M=;
	h=To:Subject:From:Date:From;
	b=uzMluT72qvsKoOS3p9J7Or3HPmI0ykxv+l1K8XLjFqEy4zH1vbicU7a/uLDh9VmfJ
	 fp0VKfRHCv0Dx62GJjfTvms5gX4oK2cLWkFXVYg/k6bzmTKoFLIZjqLAdNNEJDxun3
	 DrnA6rL6eCcjE8bMTJ+kzO3+zKy+2vfG1Cqz1HXoPQyHXwCSHHBuauBJLBaw50TV0W
	 v/zLUaZbSAvNxO9LhyuG9es5ss/pUpSAua8W6fHIuOqOyKmDIru2FX1TSJp+9RbNwV
	 MNrV67w1GmmS1ZXkC8/P6Y8toWs0KXHSTC/eOwiaKh4Z7y2tERApKRFTwvNCrNfJVG
	 kYDby9DYTJUZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2FC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538979358.26262.10873934170902399348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7be1c070a862b244139eb76d9c4f985a3669b3b5718be91a5f990bac7f6256
Date: Wed, 23 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745389793
