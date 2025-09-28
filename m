Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D4F5227
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759095594; cv=none; b=IbMPlggB+r7+tiKmCHUktTASThNIr6RUSe8fA/+Xpzq1ioTgDpvll1IT65yWys/hJCw/JjxVZ3BOTg0o1o7S28loQLb2CB5zmCw50qUY08lh56MBk0L+x08L6ugppCb6AVk1FisighmuHln6/+aaXgv+Y/uLHDub3mA8Z9wQubY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759095594; c=relaxed/simple;
	bh=ZEghF6TnlkemqyqRw4SsvWCz+8Cm/pqgiOLNSNF1DIU=;
	h=To:Subject:From:Message-Id:Date; b=Qtn+mToUNK43SRkFbRWebYjpoIlReOqr+4i2NvajWhheXEphf2moSGagPDX6xLwAjWoQxPAyeEyK+tG0fhjpSZj+c2SUH7v8m9u9C2lr/MdfCCgiVUUsB3hk3QxrUkOyowZoxz+j0r1M12TPVe677InhT4x+/gC/xLCF5zk0gkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIDPXD1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIDPXD1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC9CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759095593;
	bh=ZEghF6TnlkemqyqRw4SsvWCz+8Cm/pqgiOLNSNF1DIU=;
	h=To:Subject:From:Date:From;
	b=GIDPXD1eBQaLr4iBH63avToNR3Ys4D3473xxMDFH+hWEZT6QG0dfSaR5Cg33bo1TM
	 DUmVNtmUaJcCXxlKaQDQ4MWI6cH0B5ebxUQNwsMTPkY6D4UwCz+oBUVHYemgO346i4
	 BPbivUIoBwWn3xYYCKHig7fUmYHHQvRvNPspqg0yssCry5JtHw1oHZYaNZZnWj6yPk
	 HY77F5MUhBwGJtfGDFHOTxv3ziDMTpU6sIF+bcDFNUf5BPBBPBYxZ+RQdyYboh9+ut
	 x+jVbA0cUoN1ILqUFz+sRTumSjIZjR9RU9i0GA9puXR3w0sO3UqYIT5uwLKD8GP5/T
	 RHRmcj5tfKBNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977A9CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909559358.29009.10253628445375616405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d652f5ca34174c8495e82b8bed8fb7b317e84f5ec317a9a8d9d2650cd1b768a0
Date: Sun, 28 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759095593
