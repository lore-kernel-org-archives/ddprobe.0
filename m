Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D731353FF
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717438523; cv=none; b=Yvs7OPzsAUgpnvSdpv+AUHqCrA5Jg+iwHxS7TC4dwVd7PtDvVV3nTR7+CG1oojqBKtVYDJyVh3vpcz8tFUEsSTdADjKExUExgxJUPGzjj6z8XhqL8JAnWlYrJYlxiCChYXrquSsZrBsZJ7V45PeXey+w7O7R8hjvLGkr0V8JhNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717438523; c=relaxed/simple;
	bh=nFHOzdwB9nly4ewjK6SG3DlGv7kGcIkbOZScIesh7CI=;
	h=To:Subject:From:Message-Id:Date; b=MM9+EzcyQ5yVeJ+QjJUD+fbqn8DZQSkDS63xxH0eeM+ymUWdv/LDmP30OndW8ns4zVoHieazibNgoagUR6QhftI9pSoFxhoAFkojUOf6cxgrNHrWtlgybQtwIs41qCepQZHzINMJG3YJrnTcaEbHrov/hEZNKTTOp6iwbKm7u/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8v/ZBkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8v/ZBkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FF6C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717438522;
	bh=nFHOzdwB9nly4ewjK6SG3DlGv7kGcIkbOZScIesh7CI=;
	h=To:Subject:From:Date:From;
	b=e8v/ZBkYzkIY7Atsu930+DY75YYOYFcRMHa+bDx/ipigb5OmHF9GLAdh6DjbPqJN9
	 OD9iCCZiOLYx9mzCDXwnfx1zEtgrry9z1M/rG+A9iPyKU2/44cf0yMsUdPE80gTuhh
	 5l63ikZMkMJgU7tgrujmOAymnYdM1skrmM+a3L9++qW+08R55641J3i+GxegJ/aJqh
	 1gNgvHM4T8OQak+b9tiq4pFuOs0Fad28Omk6wHvvhY/jtbX7XADeKZ8FN1inc5iyEI
	 HlyAjEWVyfRDqvkMeoJ/nLLNvCnwtYmzUod0V7+HyCbd3o9a7WH+KrzchpHHGHO9tA
	 r4l5/5PD3erUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA5D5C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743852281.31721.2615491131205203032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd877c13a124d14b8600041408c78258183545ed873f1923a2849548e26e8d06
Date: Mon, 03 Jun 2024 18:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717438522
