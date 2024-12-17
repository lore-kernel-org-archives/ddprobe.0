Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC5217BEA2
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734465954; cv=none; b=lE7YmaiqGEd/KT536YaTWYv1yAczFcDMEbdxXkxJpN0jyGeCw7hYoOzL5QO7chqWkHdWH+enm3gfCQ+rwIBpEiC9KhIezU1lVRW2wCeAA7e9IXN4bTehVokDw1ESctO1wLpI1uNHhsppwS/9WtFKDfJdLL3ziFW2T5iBVabloEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734465954; c=relaxed/simple;
	bh=0YZKweFtVyDBLPIMFgM63aFjSeKGdxZmBik9cZ8DgJg=;
	h=To:Subject:From:Message-Id:Date; b=N6i6DfomxlAocPxBbn4jhLLkRLxA/zOnaWiWODWogEdnEUZNrg1cGHX48bCSI1qvf3WeImofY10tuHbcDapHEQP5kw7wRreiS3wef2hPtd+S7UkAQnMll/KUoncaOxInu1zxOMU1x1SbSqRF3s6x3YR0M0BbUqRM5rtAKDAu5P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBS/DP/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBS/DP/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70D8C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734465953;
	bh=0YZKweFtVyDBLPIMFgM63aFjSeKGdxZmBik9cZ8DgJg=;
	h=To:Subject:From:Date:From;
	b=iBS/DP/K+XcIjPM3puQ/fBaMdvWSO2IiMlMYpQ0AzPI7NSOtbr0YYYc4Bw2E4HX3g
	 Jm5jtBmXDN51TtD3hDWv/W7Zy4+Mc1uF24u2zdo+FksUg5eEwJ2uHgsn0fqJSX/uuC
	 y+Dooys5PPkE5cuAl+QvMtvpv7n7Sy0mL0gz1/soTR7f13f0lbWckmsgLoCVB4zT5W
	 h62K4p/weYTiX0Hux6u/6Wa95AXC3l75xvlfTpOLt85VgBksGvDztHxaiLxkzJS6Nt
	 tFHjdZ4I7EpsGc4n+Sej+58qF12MXS3/SM3gmGTFxoppDORL8lxaAIGQhc9bfD3DY5
	 BhM1JVa9K2Dmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934B4E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173446595359.23670.15873474755484146134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee21e95b6c29ad19b7e730b4d26c7834c0d71f055f84f37facf117ef144dd0a
Date: Tue, 17 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734465953
