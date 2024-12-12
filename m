Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B21B1C32
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733966754; cv=none; b=iRwBLpYG4sjuAd4JaGuGhO+zrSel5btS37xWVYJPyx2FBwXzM9zGMuY9yhyngZc2MwrQ1F3YivAMby0J7VqP/yrZN4Ndu6O61Qt1xK46xonafUvzPXXBWzODm+PwzkcDqcq0rM6BsgwjB5JJ7pHH3hc13VOPeEwfetqh1nmPP5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733966754; c=relaxed/simple;
	bh=bdENlLJdM/2DvuESMUQ5momiRqeuvt9s7dZabiKIkKQ=;
	h=To:Subject:From:Message-Id:Date; b=HNrsOkmmtIQLQlZZm5l+kDsbrfMx5ffDC1SjOGxuwmh4Kwc5wQRTl0Z98kLs3h7vIJPGpFqWH3JsRSeNM1WxIx0Ewa0bj8vfquSru8bdPlZRGHXUBtG6sRn7wCZems45GLW+gR+dF8NyEQ+PjL01jXc6bLGELrZUn1nWK+yT8oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJll2pnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJll2pnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66E6C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733966753;
	bh=bdENlLJdM/2DvuESMUQ5momiRqeuvt9s7dZabiKIkKQ=;
	h=To:Subject:From:Date:From;
	b=iJll2pnJFHbvQGExsbWsvcijXOx/5UuB+w4I8g17MqQcISa53LA8nyfZmOWmlg8+v
	 W1JbZQ8DhcCcHTrPP/UML1RSs6soQ/L+XVyxhE+taK1FUMzHSfxu+dqb00NJtH03MS
	 2YvvwjmRL2ehh2wOPh3X1hV7WMFMibiiMnBkP2GYUMox1ZyIr6lKNxnN+cDQDh1/ce
	 +rT6nP3KEmXsVRXts1GuKQ3HvzBjAgyJ+USrFc8h2SzZgYOWznId0qk/ZzqBNvFVY2
	 BKQvNKkURELnW+CCnrHvktIhpeQV3CT7vrQZx73MqrMRChAT8xHm7WIbPAa1mCJ8ww
	 UO6esiUCAezYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9418CE7717D
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173396675359.15624.650258414288759588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ea8c4972b2d40ea57374f03841216b8783daa5ab55b9f27b59149fe25272d4
Date: Thu, 12 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733966753
