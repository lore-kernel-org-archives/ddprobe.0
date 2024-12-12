Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F974187872
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734038154; cv=none; b=bUPVwB/eqRa68wPf2T5vhL6kqdNMeBnZukMdMiK5fMWSHwGE/UjzAx1gHpvVXJcBQhJuPUuUD5jk00mqznU6AYyNI2uf+VOkB0jZi+dETwN8iNsRfZP9Gg7lxccBkGF9H9ywaf0RKR9ycoabXgfg/2v+6/SIVkMY2WokErOmCSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734038154; c=relaxed/simple;
	bh=pS7V9nSkhJDNESWExxt3XmZvKnZ7Iuiauvno+RiqxDw=;
	h=To:Subject:From:Message-Id:Date; b=bwbBxnpldCZffvpK6TNpwllSjdBriM+t5wq3AF7DVJhcW+PVPOmUO2f1MEz78lYV8AUdVL+vv7nFksoUZgqY6pYy1Tzh702ACoxMJUXLPpNsWegjcgFFlAbY2DljFjuft2/2iu6c7Oqd6jyVALjQvIWUcQijHBplKu3HnJkIwrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0qEOfyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0qEOfyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8616C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734038153;
	bh=pS7V9nSkhJDNESWExxt3XmZvKnZ7Iuiauvno+RiqxDw=;
	h=To:Subject:From:Date:From;
	b=K0qEOfyZriT9tchX55x1SnIZDdVKqNZdOvnwygmzSubSKl2LT6t4hTOT50/j5iwKF
	 S2Wy1urej3pN42Z1+OtB89RzsJKcSnI19gZY7rKJ3xHcXrPkM6SNsS1IxqRaX+geMA
	 AFtxAcMFhWk8aZfSFUK4hO76vg9K6g+JYdQz/vGlIBggra3co4ngy3QZ9+xJasShf5
	 PiZqc0z/SwnbCcBGqxXoyDiMPsTGv24/Pa6ujoiwMsYewdS7dn/cC7+RpLuZPDMDU0
	 oQUrDnq0csuetBa7OJ87QHTDfC0VAmPmpute+2Axg91ZRr8/9uaTmjnTiqWyiOxseO
	 J4AQAzrscQhHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932B7E77180
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173403815359.12905.8894066126770575130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75dabe033fc2529ca7287979a875b8212619ce622c327a9e0d4363de9cb7a95a
Date: Thu, 12 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734038153
