Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC821E868
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753319994; cv=none; b=LnVy9DZek24Hr6SgvIZ+oyfMfeJlSd1lnDsiu6ehxZm4AS4MlQDdHNJlN0+cSUvTxzx7bqwSo00ZK33GvRv/yo9FxcwTFi370siworPjpx0jA9AarviqEudq4FDrVosyOqui9ggWjeIhGU+Km1to/CyrZdKy7zt7aZFVFLObbwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753319994; c=relaxed/simple;
	bh=GSGXuFuC/kEeA8tFqnq5T7rEd4ex623qx+opfrlq9vc=;
	h=To:Subject:From:Message-Id:Date; b=RFjuSij7Kd8E0/DpOodk1kGdlzgesjX75Ysyf4sknelR0pGt91H9Jj6I0ccP6kTJxrfpWtv/Mp2DMUKNZFxHWJeTz4ihQvLndPcUve5qD/+tEu9l6hP+5vNjogKqd4u3358Xjf/c2NIsng0UsZIM7EFWBj918EwTkwuYg41PdaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9mMz2k/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9mMz2k/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3634C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753319993;
	bh=GSGXuFuC/kEeA8tFqnq5T7rEd4ex623qx+opfrlq9vc=;
	h=To:Subject:From:Date:From;
	b=G9mMz2k/0BiQUWbunn+OLCIBcXlfbSR8KWlcduk1hvjY3svtVEdnt/ZUWw1idxHys
	 FQyAYYxa2jInGcqL9X9+Ypg/kxybIbrvgLbybIkIboMhr9fQVxDCBuKEM0qbLg8NJg
	 KlT6jzWbR0e+i8fajSjHZpDOxgsBaRFlaWuOSmXR00KNue1Qx5+0IANSfjNzVnzlZn
	 bslPFmiaVSlFKk2OW5Gnumw7d4vGFb8MPP5XteVnKdt2EdiVCTzaFv7jk7xkQLDCR3
	 IyLYRO7orKtS35nMJk+8+dvKSUl55sJrDbQz432326hI3ohzOHWRuKLk7UNCrK0vTj
	 KtSuVKWaQx6+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D2FC83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331999357.28719.3997907954421725761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af71ec5f8d2967842f1203a1f8e83ee3cd5fb730385a95ca9c18b234a746330
Date: Thu, 24 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753319993
