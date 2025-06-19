Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF50199947
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750354194; cv=none; b=QspkZLAlMB20yvFvvbbkV++yjWaKqCCajy0Bkcji/tXQ5DWvueAzYAt/T6bdOuB1n70TXgWhd3gSY6hZ5XTMf72LG1ZCSYjCJy/aB7DnxWk0+UjANhhxxy9h2B20wMBfbZiX9ZrNyp8MA/HGZuqPDTKlzB77bzoJ/s/u42euMwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750354194; c=relaxed/simple;
	bh=pecSDQELczAlyPWeIe0s6+hj3ck6iJKUhMqNj+Z0vQE=;
	h=To:Subject:From:Message-Id:Date; b=ESo0CpX5g6tjbw9RI0WD8Y3bsq69JuiHEC52aGVP+bmVK2E4zGCSc2L/uu74zyCb4EEm9tVpdGOVIOva2MHN3lQvsykL99cm7qCD4hzmwLSdRo2JUSF2mhNl5eOSUy9VJe5SQVxYnVWrr3I3Bn5z696Ig++8pzm3KRKvDzTIBQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjLW6BEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjLW6BEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC26FC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750354193;
	bh=pecSDQELczAlyPWeIe0s6+hj3ck6iJKUhMqNj+Z0vQE=;
	h=To:Subject:From:Date:From;
	b=HjLW6BEPsMeQJ+v2W9fxsWMdQ6tn7/awgGPplARdK7OTPmLGtEqfV9sfJnQV2nqXS
	 bTrXbeJ3Y/lIHjegFBvB/8hSOEBreUsADyh9eeHkYNuiU7mNB5I4DoWzHmLRCeqp+T
	 pXmVGSaVZRb6hh/gJ9wsK/76Cu7zdy+rYp+6BhrTX92elvOzxmiL/k2B+GKFr5Fecr
	 49vOBp8JLWhEb4OY7aPfE7t2wXCLxiwEws+MO6hOmEJjzZfKMUs/Ik+HJB9z7YMcRD
	 ukzZ1xjz1YVIieXqAgS+KAfJ2n6Im9SN1/E7KKXqatk2+GgtGv7GdtfxVfA8cJ9RDS
	 rUvuUwS9dffSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97214C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035419358.32390.8173791873684191862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d293ce628184d42a977faeef26f8db46ca60fa58668eab770ac6b099b836db
Date: Thu, 19 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750354193
