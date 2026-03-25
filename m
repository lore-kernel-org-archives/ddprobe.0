Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A788189BB6
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774441494; cv=none; b=gF6MeIQhWzWIkWFNKEe8BmkauO+ZdlSU9e0ydNBraiNyN3G6b+Xo7ls9GRvnOAqutWzy3SePjB6qZmTVjDyZEF4r3Z+lQK7kiTHj09Akd7x9urvUlH8UD55m+v7YmorKuBj4v0wJpgIWYvh89DNfjuLfZ+tOixK8YBjJbWNRgJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774441494; c=relaxed/simple;
	bh=msQVermQF5Mjd/6Z6IB8xA48EdQ21c7IfWig9KFyBj4=;
	h=To:Subject:From:Message-Id:Date; b=IYuTbepRFAZaDJhCAsbaa4DetPzynChR29+1UETRsOLEWTOpInkroqAo6+cxXxWKTpBasa6O0JpdRoc3g/+tt3rS4rE8WTrPoRaVPNIpuKeXqtrkAFmOPDTJmsG2jeqksgxqRGIT+goG3afhwy3t+6hN+ygpIC43RqE2P546W20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvaVzJIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvaVzJIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3399C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774441493;
	bh=msQVermQF5Mjd/6Z6IB8xA48EdQ21c7IfWig9KFyBj4=;
	h=To:Subject:From:Date:From;
	b=PvaVzJIFlJEr17nVZQu6La7UmTuKxrStM3fQhJqFtPQ5SEwx88T6LU75EKqwV2P1l
	 cn1cWwGe/GCOITL+akjTXbN5/6k2EID65k1HxIHDObUF9WgHgUX4NNJzMRkE6hPho6
	 q1tTZ4zkO4xSQXqEye98aHMkfeQU6NCrw2u/A+c/YYsLKk4H2SOVAppYHivVj0+usJ
	 zY5VAHUgWtgsPDJw34pc6ulQSjMTTw6ohT5Gx7+5O2ybqge5toLXvAxhtDYkUi7lTK
	 6nLg49y9Fq2SRG+LEIJItPlHofccq0EZZkynW0MgJuIt/wO5++KNMVSYXAgJzpSvoR
	 WkkTMd0CRq3vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B0106B519
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444149358.12434.15912942234520051967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06cb6256eebd54eb81f003814bbd5766f24533921c2dae1a0944775051a4e99e
Date: Wed, 25 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774441493
