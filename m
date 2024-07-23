Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A41200A3
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721765754; cv=none; b=RlpiDn6Eniu+ISgBNbihIQ5kznfMy4kG1O28l+AIpG9bEihPTbBjNgRyzE67raniygs58xIS2xaV80gEVJtYkpgDXq4F8N2Nug0ndwA0zrazx8ykVe3/rX2T2I+y6uZF+5K8mxE5b8AdG0KhpiWax317TQvukGigdqrxLDW2hcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721765754; c=relaxed/simple;
	bh=V0zf6eNjeASLU6XemfJv8B3CghObZvnSnvNvBi0uGlQ=;
	h=To:Subject:From:Message-Id:Date; b=hzvRWUFLt3etYh9xzQPxPi2QifkgZzb4Gbe2smBYVSnZ4TruKgfHt+INAME65Ysr/mrra7otTQ1NG7b5VUfkjz9eU+XEdHEBuLRuF/0my9/pkHa9FV689gt56mP7f6tclqwIZMrrgzSXRdNmQkr2PBcyevDqwIg8892ceB7Im4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmB36DVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmB36DVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BFDC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721765753;
	bh=V0zf6eNjeASLU6XemfJv8B3CghObZvnSnvNvBi0uGlQ=;
	h=To:Subject:From:Date:From;
	b=fmB36DVnd+eQ9GUn4LjTJOWbg5W9skdMXIMYOtm7YKMCYorRp7BQqrivt6x1wxj2G
	 0hQ3CjTUzIW7VSbgQ1mtm6NqsRoa34Iig4JZhf1H+QVbaAMl2HBjqO7UTUfTHMnXDf
	 icDHY7uZqcumnj/hzZbcPTMnTymuTTNWLCKrBfGYY0dnWGodNlm+eQJaVD1pguFfJ4
	 qvoah+H3hwtOctpZqrtBNU1sq0PwcvSdZfmw6Qeeu/n8BBZqxa8/k0peLkXJfAFB4v
	 20+RpYBBzz1lopvxHeVQkaIjRcg5c+IJ5BLnrLl2nBrj1q5sviZs1lLpI6YBsymEM4
	 WvYFlusOY62DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A017DC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172176575364.31856.8045365771902660853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb7d3449c65258c763fa7a3132d1c142456abc82b1e1b8884dc054398e88c14
Date: Tue, 23 Jul 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721765753
