Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5AA366
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735689954; cv=none; b=FOINHGc3Jox4ACcd1ctuelJQ0sE+9wHL49r5baEI8tAoRQdjOePw9mAC4qy9bww8vTo1Rs3gIRyFZwjAfXHZbmUSPqwlMVTJJrXiuOfVVovJ1s3mpqyUIWzbbhEvkV0n7yJDFs4m5+59W6Y+lW0ZT1IEMxis7zATluB0t/RM07Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735689954; c=relaxed/simple;
	bh=dGmoR41gC3bjxnK2xdgd9VziwbJVfhb1a1Z4FeVsVBw=;
	h=To:Subject:From:Message-Id:Date; b=DIB7A2Uq0v2fHDatPdsU06DNch1QpFM3BFjD/gb3hn/wq/RKfTAsNnEeG3siKT9fb3ji8sDoMDDgtXZ8bhXjR+jIL8f+rqFrrWqtL7SqIjvaDoZuuc/FH7DcLkYPuPuQEu4SmAK3vkoje/GU02zAjV/p0H2AuyhXhRySLQRvfXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNBptOh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNBptOh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB04C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735689953;
	bh=dGmoR41gC3bjxnK2xdgd9VziwbJVfhb1a1Z4FeVsVBw=;
	h=To:Subject:From:Date:From;
	b=uNBptOh1Ug/fZ+/cqqgqB/Txv2rZDgnO03kxJz/REvL+CJnCGM3w/msKjoWUc++RV
	 RoZRJfebpPhw91a7wvCZn6h0WamaTsC6BIBjKwskJ63DakX/t7Z9ICM1ZIyxRVFkZF
	 HR6OItU8gA0Bvq9wKw7JUai4YM7kheCobHt2uBRpZDKaWflaYcWbEcE8pTLBbzjyXs
	 2OifBYX49MXmuj4W1Db7qI/oSdh5sWW4DZhoi7i2+KrXQZeE6IfbZ7nm7NNa2reVPK
	 7AvPDi0QXp+3SZ8jBbod8E+qEP27eEkL7OGqVaDtvtM0eiitroB7iamDvYFqDXDKUc
	 JH/VGlZaruBAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97242E77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173568995358.18024.14489392641553548090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971ee290a21719d14a6fb12379ea495436e8ca9e6be67d3561fe6c154bec8ac8
Date: Wed, 01 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735689953
