Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5CB1F91D6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771205694; cv=none; b=PnsLCbaFWHxSjYYYn1uhwgm14ENW6HcHawDq8PWEIqtR+03C4GH9FYaU4tAEROOCod1AC7lIbhWUTlVnniNEPupVebtRZnguhm/0OQEgSIa8Bd+FrVc+Vfzka7009NnlwJDOzdhY1j9qrh0HUB7NRP/CfWQvWvN+4Fx0cto2+N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771205694; c=relaxed/simple;
	bh=oNdzt1e+Dx2zeY+Ak9wHbqT1ZWQXG3c5nsgqSNehILg=;
	h=To:Subject:From:Message-Id:Date; b=R9U7bi3jTjXHqWoz0ZQXK6yTdLjyQ3GWpioKUHKAPtr88YDL0PTz1aVHmaD4coP3QGkdY700+cknxvXuuB9BRWem6bDwHsR9PBT54LEXkG8dkPB15nU9fJrhCd3emDJhMEzevOVdg4je2PykRNCEgQzeYxnIXtiAFCtn/wgw3NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqtmlMH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqtmlMH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA34EC19422
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771205693;
	bh=oNdzt1e+Dx2zeY+Ak9wHbqT1ZWQXG3c5nsgqSNehILg=;
	h=To:Subject:From:Date:From;
	b=lqtmlMH0vmoAhsVHihtsG5Stbk/UVubV8zUOTq+ZBX+SdnDejaw51wJ6E7sZOp8mo
	 dKxxoOx+oekirCPs/PSKWn0en88n03UqV+X9ORh23GcRDV0KC5bX4ISdUNzvpr/Til
	 16579mI/uA0IOnPqH3ry5r5ethxrA9EjPI3dq2+QQXtebHHulgJRK3ExTdHq2JNFBT
	 eSBgf4MTC0wSm2q0NU/3KWab2ghgqj8kn0UWpq6QQqqkxNu7o/+sMQlAk2QTQVp6W4
	 xQT2OO5o5hgF4ChE3XS0fxGEMnD4YCk/zcvl8yIXB4hpr9bggJ94PbSjmj3THNw7oJ
	 N2ydhExTxLYMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C83E63F1C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120569359.7245.3621266394504268323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ac443ab77215477421079c900caa3242cc4e74ed2a2279a11894c10d373180
Date: Mon, 16 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771205693
