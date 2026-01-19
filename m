Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6941339B1
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768804434; cv=none; b=muuZ2ONIC+aBioJ2MPbtFxZCx0SAX8TZ8+CdejdQekW1LU3tqgQ7DpMX8o4DNN7eAjDpmADp1fNfQuFsM0lgEoNdaKqNpaDPLdXJHexCtyqXt4dyzBU6i6U4U8SFJEcxJi6nLg3VVJnYCzK97EKmS3wP41/o8xbBWgHeoU3AFTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768804434; c=relaxed/simple;
	bh=XgdoqDjp80Ib6uEMHY06Fh121HE0fNNPh8Q8SSclh90=;
	h=To:Subject:From:Message-Id:Date; b=IJ0OJQ7EJL9dzoX7fhpPj/BJ+toYFBYAFFylo+da9PX9a+4WA/Gc6arTT1RMotdqeLs/38Q58YOJrdRQJ+jHe/R6K0gMY9N6Pl0EWoh3GTFwqORC19ELOFX+b8mll+wbcfA0WJrrLKKhJ47vgd9Qy6ISoscNLpQ7qCAzu7dzckc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzVd8LE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzVd8LE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1537C19425
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768804433;
	bh=XgdoqDjp80Ib6uEMHY06Fh121HE0fNNPh8Q8SSclh90=;
	h=To:Subject:From:Date:From;
	b=TzVd8LE4VwQ03++yOwdQuBssk5GU1iGNm6esbkiMyf2yPNesLK8b934vF1lti8wcF
	 rkV5ai14z06q6mjMcJ6sP5x+ap7qjmCdlGnXaf3AK0pwv2DG5uQy5+rO97fnEj0tKa
	 gITvU0mTWb5RTh9re5xKstUANs95w6ptjvZUm6Il6KdDufZbxtmbzvMXdLz1t5/4ML
	 LhoYnE2EszL/ZOw5S7Ka+Bm2xaNT9dJaDHPEGBfRZUD4VLZ7QMnEYCMxKx5VH3z2Yr
	 XN0pEbNp+95h0tuKroN9OP9mMe8IwX47cTGFMFmiUVw9LfmXhqlEH8kGj9WkP3/fxg
	 d2uyxL7r2ThmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F2CA5FF1
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880443358.7330.10583121311435266255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a501df5e39c48c7fd8a04ba2ec3f8de521ef61db4802dc0b058dbe2b7c70a0a1
Date: Mon, 19 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768804433
