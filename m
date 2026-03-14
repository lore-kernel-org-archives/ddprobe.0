Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129AD4A3C
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773480894; cv=none; b=mF05cNDAwTRql2+iFTsB8Oas49k3/7qiHeoOhqSz9VWXWFaoZnIkIwJky+X/eV2IYp91x5W5YR3qXRsbmiFhj6UVBTEIKHYU5U5sXNCUrMEimIl3B+b1x+7JWJegIyLldL/v5Nq1mGOwhbYrqLUHJ1re6GwpEjYNhjGI+uO3M9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773480894; c=relaxed/simple;
	bh=n5P2TlazlS+2cGSS9wXhkRE05oY3Q3s9yN8aGQHiJKE=;
	h=To:Subject:From:Message-Id:Date; b=h9LdKbn/l7NIp8jvUTM8J7K+mqTmEmRKsqZQXEO7Wn8uaL1QfMapddTZV6AYgvz6sTsGWpH7T+j6BLy+GXoNNTgWsE69QynVxXxwEX0INvm5jpnrYZSZTqncnrbzhDb9hp8y5GcCkI8JANsyzGG/J4Vvkiv4hDhup3XapJidAF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7Xo+vx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7Xo+vx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0926C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773480893;
	bh=n5P2TlazlS+2cGSS9wXhkRE05oY3Q3s9yN8aGQHiJKE=;
	h=To:Subject:From:Date:From;
	b=V7Xo+vx77rbI83W8Bgp+GmWmGmr8jp4Y2f/9wDHcnuJu7xl6720326SaWSqsqAdJA
	 uhjD3iGY8dGhqJbjTV8hosRT8jSZlu7XuMmqiLnQsj4AJwnbq4PMT7pJjGw8vWn0aG
	 TL/AjtwAnBEI4HhUcDIXGxAHcbG/oiSd2CB/8Rdo4VeSb5nh2zaeByTfuFkx0x9OLJ
	 W16I+lXyjF7i3JgCfuvDSMRR+yCOGMvtWIWcUA609edR7FazQ7aN9kErDwpDIKWhBk
	 P8xtqDN4kZr7ebJQEXQsO7xTXGZPY7Ew847e0K3cl7mYgELUz4WbpsBgjvhXEnos7r
	 rnrkqatoKi8fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91683107BCF3
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348089358.10690.11618781825248548625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4e2e2c75d7f1e2c5c5a5be4d920582891e27564ebd74ece2fc6cfe29db3cc1
Date: Sat, 14 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773480893
