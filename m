Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35791AD2C
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732178754; cv=none; b=jOTCEW+LTqLxeE4mUyMxTEUHqFn8A77y/afknsQKNZ7dsFggaru3Z9R6qCmDVKmy8QqJWN9h2qB2kk45TOm/PzRrYeo4PL8ojzLqj7lgKbQot7SmGr6TFdpnDOwu19LvTCDEoTI0/rX7im/H/eBmTrcxRos4AKADRuzU4loeses=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732178754; c=relaxed/simple;
	bh=nzXtr0cReBh1f0sGyTqd2aznRivQV6saNyoiXYOhBhU=;
	h=To:Subject:From:Message-Id:Date; b=HaTZ1QD/2RNla5n11sULtcE8dyTM6aMYgq5jQ6OmPO49aB0Nb4f1H9AVgD00A43XbT4Q/fBK2ye0pZq6hKDY36WRwdYaOQ5KJ00KyBfEqoK2Z7sElQfocWXjXnGiQMIhGQiWvyGkUDSppIdCjCKa/joduIoCkN+0jcMVv6tpHfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1I/njO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1I/njO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B644BC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732178753;
	bh=nzXtr0cReBh1f0sGyTqd2aznRivQV6saNyoiXYOhBhU=;
	h=To:Subject:From:Date:From;
	b=i1I/njO4lgnHkl6K1WBTAAeRseSeUrwXl8Ue8/6NxaonvLxceqq0Dn1Z/u4sVJTB9
	 KhyTnYiPba+mh7rCCtOLcZkqUJFaW5tGh2tsxU5A3R6AhX9y07gpC8q7Mp+GsOoogo
	 bSKzz8zrs75HfF13g7RJjdwbWDGJ/IP0LRsMfTjFxZlRfHmqMRDfvrGD9GviM02AY7
	 DyFx/Nb6UrOIO2fyPrIJtICn1XD6SUdE54DMvyB3+XZ+LispFtXdXz95Yc7ecGrKEN
	 wkdrVNZu6CtC9eTSvb1o2Dh5DRQVN7eiL1gID40KDc1RqHgBZFySZP+1pfRyB83tKz
	 OXglg8L1/MXNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57A0D75BD7
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173217875363.20550.12109514370782695575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e592433d7ab986ea6321013b7d63aeea35ea8f4258f3fc0f56b8ad26ab893fa
Date: Thu, 21 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732178753
