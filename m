Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471112B9BA
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781050534; cv=none; b=qhZZjxDZ+sZZqy77qwX++uL4QbewjlG72ca5LBwv84F0o/7zLhANAYwnPcPjLtsecYQIhUQkQBV39WkeFvZJyzMG0yU8FYAFfavt1EWUn6zd89yQk2+Dudp6fGnaMB4NrgfDOyPE65j1JQPx/O7YXLF30i8D7OroHYmcCJwUlIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781050534; c=relaxed/simple;
	bh=miSOg0AKFDE8uLDVUBnmlO6qRziaHoJVMFEuEmxw6PQ=;
	h=To:Subject:From:Message-Id:Date; b=W+AC1Uxh6llBhqUNJvWRop7U4UspRiWnI3A8zTW9rU71f7RU5KzY0nCJRm7uXxhJg5gPd+r8n3tEOpDgzlbkAiQhFXaor3i4xpm8ozioHvm8g5NxW/nJvof8NMnYluaHfp8jKsGbxGzx4cb9I10nCckTpJMOjVfmYf5LgyZPntE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovPsISd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovPsISd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB563C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781050533;
	bh=miSOg0AKFDE8uLDVUBnmlO6qRziaHoJVMFEuEmxw6PQ=;
	h=To:Subject:From:Date:From;
	b=ovPsISd156Cw40ZB4WaPALu6bHzLviJcDS1wQg9ItNBJ3KAHavIu7wwa1qRrTTj3T
	 de0pWPEu6a1MG2lapeYjX93STEQTxyv+UPBQiJB8cLuY3xdaABzU/LvZcw44J7oSlx
	 HSinvN1MYIwuNjGkwZKJMcNAkXIllYUlAHZkTfIQIyQaOYKeMrT+XSDFs4WPxLl+tz
	 2cXeYoETrITpJ5av8CTt3BLpAJDl5/zSR3+0AK/Fjm2n8+p1Ra9lPRejr6GYXnGFTo
	 xKTU85buZaqQGfkqPqqIkmYvLJVqt3c4SAPP+aKpicVR1CyyaaL4w6ZYONnt+NrkiF
	 D1T+qnMrRnX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B044ACD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105053368.10975.7622849503120314530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07636ae1ce3a99e3aa36fb06426d5b217018634469e688470f665b09ed53d30b
Date: Wed, 10 Jun 2026 00:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781050533
