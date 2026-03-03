Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F293932F1
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772576094; cv=none; b=rhlgLU4LlIjL3l29u5kf2/QpX11wZSOHbJJG/vl74hWs9FeVNHUnQgZY7S1A/PrpAdcxXtmggdiyok8AN5Tj445Wv2kZ2ofIJVgqHFeIFXXPqFihvkhh6x+vutIt0xyFO6OQNscmMmPVg538PwXFnJaOcJN2LEjfpXurKa1b8Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772576094; c=relaxed/simple;
	bh=JTpEzbsVKFf/DRtjg7Jx1Mkb6xKP/mz0o8mUwECiSu0=;
	h=To:Subject:From:Message-Id:Date; b=n8UKI0IBeZfnPao7yQCVOlHCmmh2rpniFW1XQSAu27kYlBpZEz1XUi8OuXZN4sntkfw0QK3rNls0h5cgOMGFMEBo41/zRDDsUsb+GCTGTll0gzcwr+tfh91dl5KklbDnkkCFOqVRFFuz1xWSn7uH7fjGWBSr8QfPTg6UOa/3+8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSRN9vhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSRN9vhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0964C19425
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772576093;
	bh=JTpEzbsVKFf/DRtjg7Jx1Mkb6xKP/mz0o8mUwECiSu0=;
	h=To:Subject:From:Date:From;
	b=WSRN9vhRYvQDqc0WMAO8pBlxh5UJJq7xFSnNz5mfBFgAATNGTUMa3NBp+STQ31tZ/
	 mtofcl2/JIZJvoCAO8lhjnIUcDZmbDMaGApIpbZmp0mTVbCTULJCpxC6MbyUumqwCv
	 mZ/Iuanl8BbvIx5Cafb5G6Wt6IZTjjah0L4QkPtmThmNWz5z6/7s3BuKp5tY64fujp
	 RxOMtX4mZNgWJdcHzcvofrWt4YF2JYuSddluFbah8J12qw4+S8oQmcSshJi/phbdfY
	 EyNaWsq9npmdlYJPaYZdP9j4eSxIEDu5TXsrgJYBnX7wyAtTjZqLWrgjN8gom9u5CM
	 p7flnyyhifHKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91429EDEBF5
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257609358.31408.8975051488394987227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32604b6b42373234c5e87a247b0f0cd0f3ad3a3539179652d56a82d14804fe0a
Date: Tue, 03 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772576093
