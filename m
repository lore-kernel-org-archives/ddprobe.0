Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD404085D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736952954; cv=none; b=bwYKh2PLwaBB9konuk33V0BhRlfApoYAlu2AQLDS8SUJ7A1hQE98luYeuTri8PqwG6mlPtiYPZKcx70SKf7ExLsi1oFJAmw0Q3Cu4VF4Die7j13qs3VX+kh3xVIPo3IUt3cqruc4QZ+Llyy06VgSjlf4p7tvrtjUaIUmheUJvPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736952954; c=relaxed/simple;
	bh=fSnhT9y5NHN/QIeaqDRrmkVw68lZqelknKaheTsexDk=;
	h=To:Subject:From:Message-Id:Date; b=pQ6evr6lXuQ/uMVPtCE9bLd2gYEn4TYRACqi0ZPJtJR0m2BG/b08LeFkEDnuD8uUqaXhgYn0n2XFQeQSL1Kfj6xqmqSB0wgxbSSyvTT+2dwpPl4wBR/vUImemoj3bAOYr0Vtrd631WPUWpxu7/343+9Lr/0VE+UUj6VOewCHJtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOPEV4yT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOPEV4yT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A110AC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736952953;
	bh=fSnhT9y5NHN/QIeaqDRrmkVw68lZqelknKaheTsexDk=;
	h=To:Subject:From:Date:From;
	b=jOPEV4yT+huh/75oumqE+7QS715h/6hlgil3Zj+1zy6LpHOf1G0lHD7CkYx35ouje
	 zZn3k10u7ZWRvGz8dieqdNetEJc7L8nN/4jZxmjEyHtjRxceagzCcAGQy45Hv6avfK
	 s4jQ8vcUSEWWkUCYKwLFhhAIPi6cQy256KT/g7Qq1+qzb6E4aiUgchrYt3d/1fw0ri
	 JbJ8BA9WSHUHeTp5OmLe/uFZKrja9IOOaV3+E/VvQEIlUCJ21MqIUv5bKjoKq7+gHy
	 OwmkckU3nSenOyuny3fKO0h+FowFg2caHjFH72JOpA2vvT6STaSakCIWp2dXTNz+a+
	 M4iJ3rWLFy61w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91095C02185
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695295358.31354.7489614478197505803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eefd7be67cba13faa7ce53bd54be44f77d945b246aae547fb894fefd6a8c1114
Date: Wed, 15 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736952953
