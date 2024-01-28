Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD9123745
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706418496; cv=none; b=UE4zWDk3ryVDqulaJNf7dFlUlcvWOTiuYVgdiY4D2yNe2edXtzdaee/7sxaeKKVDGdR63Xu87jqWyl0d+8ovXaFBytLrw+kWGBJIIW924H6Q5Eb5qr26CNpKoJrAJ5R5JYhKa9yYjOnwA7FM5LsM5Lp0qJD6utV9UO8RX971R5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706418496; c=relaxed/simple;
	bh=MzkRXVjqstWCGYmOXw/VITNXLixJdQ78eRN1kxSCdiQ=;
	h=To:Subject:From:Message-Id:Date; b=gvrCC6ocRkdlwl3d2pRB8mIV0WpSLW+UmI9jPMrrzIiThLxyxbHnDSf1thkwiI/HVVMX54Mx+WM1O9wwkHfnc5VEO2tCKnMq9vc3/pvtwLTn+bwQXPnLd20fWOwBAp2vlsHhJJcWxLS9QUMFs5HCwK3pnTGPD5HqndMGdZl1dj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdqPJf+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdqPJf+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82853C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706418496;
	bh=MzkRXVjqstWCGYmOXw/VITNXLixJdQ78eRN1kxSCdiQ=;
	h=To:Subject:From:Date:From;
	b=RdqPJf+bza+1babHdSw967bq4p8VqE26QYPYUxdE+hFSgvu0G2qqKz2kZnN79lp9F
	 aguR775b/zqCUkYD1A6XaqI3l0YT/Extl/XNFLtJT+C8GGbrjZdnS4Kc5A/P0cST82
	 jIJFEJDBpSZpufVKg1uv9t2GKXUZ847NLKY5G92YJdwwdgLBoPkNqujHRjJNx1ojrx
	 5gf0BFoqiujV54dbMcoVtLUQi5UJ8BnJzcFzOFJl8i4MiPrLjXW4tL0steycd3HBAK
	 mX6XnRQD4y9bOG9OrzoxMzRgm5jiizYRnR04gN8tW9XQDaLf6ddnyoPqR7KrOMKthf
	 0M9rgIjbKVP6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6776FC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170641849638.24101.13293638194193553052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df4fe90b8d36805703930ec0b3fb2dbf81ade55e5fccd11c3c49e1c450fc294
Date: Sun, 28 Jan 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706418496
