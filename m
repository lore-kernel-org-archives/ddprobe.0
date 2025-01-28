Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354F217B50A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738106154; cv=none; b=UyLBRnUnComBkI+KzUtbCHIt9AvgCxu9e0XWydI5k5Q7AmKI+K49H1QlsGoUMxlEr/FB0GxAwAe70gYnsUiJlbblJOzJ5crxqovdZd9bHZzzVzCt40xCo7D/REdJcJ1mrtcfvOxWt8vuqBGudZk7nQrFCFedzGZsL5ruM1uOxLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738106154; c=relaxed/simple;
	bh=3/7I1RfqLzcvRzDD0Km+f4tfq/HKoPOeKQ7NfvWYeCY=;
	h=To:Subject:From:Message-Id:Date; b=auBlb1C+EfJXd+ACbOS+ecMLTTdlERQFXX5FhuDI/m+7AxH1OE+32zEsYg+5AGcbysdud/G3z+hk7wEMBK8isLp2zJVF+5XEiY52mN73JkWEgRLsiYveqWYDgpkscnk9wgXTwLHuVh86xu+cGV0+Gg1CR6sQ45C9lv2VCshfqeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/kP0F/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/kP0F/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3298C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738106153;
	bh=3/7I1RfqLzcvRzDD0Km+f4tfq/HKoPOeKQ7NfvWYeCY=;
	h=To:Subject:From:Date:From;
	b=B/kP0F/Gb51SW8PjUsF3M9tQiqcRvccVu2JLNSpigKLAbS7CLfG/d/XifsDNiDgLO
	 mAocxfLAYe2xiP6g6sjhX+xnlcUBCU/CNc9YbRKRVF1ey6c+y7S7FKR7fLcRurSYNc
	 gz7BbJinJi+mYUm+KI0+czC96ceV7pxz/d9g9r+IO0fUVMqnQeaQmboNkvHdviGAqI
	 YnzUE7+xefBq7XnNWpSZQYepnOJqol98iTY93zZE11vLGI3Fo+0F/Rxmumm2D3REa2
	 NnNQEtLykkrJRmm/UUo1QMCyHAp2v37n0EILlxxSWk//MdNK+8aSEuDnMYeOepGw87
	 cijLiQwxMabqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB0AC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173810615362.667.16224028587607139436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab339068b6be337acf46a13b123881b4da8e5f19c7197c0da42773bac8c353aa
Date: Tue, 28 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738106153
