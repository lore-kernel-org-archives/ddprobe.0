Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204482EA73D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776575254; cv=none; b=ABxv4l8wSjwCLsqkyKhZP6mqIPe7OGu7iSqhtpxSCggBAH1gyYXryIHMiUtOehNaY9VM5lT6ifwdIN5UZkBjJGJPayABCnbbEpEEIyBGVO/MZY0aNPQFc/CH89O3nlOpSZi6Aa6LJ3iOHB5VG3n0JnZH9McUXMMGkRg2AgrY//4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776575254; c=relaxed/simple;
	bh=9WFole1QycWBnep0aFGlkowFeLuHFjlJ4sEltnzv2Nw=;
	h=To:Subject:From:Message-Id:Date; b=KpT31ncw7hOVS5TwejcqZapGawqLNADjN3WCfN5ejLrSHo2Avno1fpNdSPcY1wSRAmCzp8z8IEq3hMzh/U/VXhozWZU0sn5yZIn22gyAL3c9P5wnq11bK1zHzDH52pZdFZk/dzTf0RTowZwVhpCoVRkPkTXuL86j6ofPfsW9sRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1kJRvzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1kJRvzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9C5C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776575253;
	bh=9WFole1QycWBnep0aFGlkowFeLuHFjlJ4sEltnzv2Nw=;
	h=To:Subject:From:Date:From;
	b=B1kJRvzpZrU6rEdbiwxAGGPlpfw2aQcuDNdbxeS8hmQ4jj/HqCxbGNzeKUAStSsuQ
	 1AAv2N3/rI9/eBunxUmL9CRrpszNMVDP2orRtb8Td8qc7F+eYe6TPyA5P7a4gcP2iF
	 AjgoiM4wbW5y9xOG+jGeC3HziLMk2Tr/l+ObkdUVG52nEb63wHK0W06461RHf/D+4E
	 Mq/zTU7qUx5/pF7k0tYHZQIGP6gBH3p5+TJkaUs2NgPKfOkIbuntxcgs4d7kPTAR5Q
	 aRvbdOjlVFPqTQGiVMupFoS7ib7AqeqaFasq3cdsfpeJhrIS7S4PHRB1JZVnLz6Yq+
	 t3JevTghZCUfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7C0EA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657525368.17289.14954109131458955876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b87f64a7aeae707513ecae425960575cde2c8441e4a4332b08b19b06aa9e81f
Date: Sun, 19 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776575253
