Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7252F2E
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757076594; cv=none; b=esPSs5FP3hWbSMkVQxOWmu/TIH+SJ454KU5KOk+IXMkxLQdkKxNWDq/Km3jO9qNbI2rFJaFw4xSV2i+ZcBA5Vu0u0fht1ejnalPAQLPZb/sFQWkRqXfaPuyjnjx/ZvESvBbZhmQp7tpol+BUYwXmszRhpHrs8hNW6qotk2vjbNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757076594; c=relaxed/simple;
	bh=WdK8kI8aAU6oESNOu8iux2RrBrdTNJT5glWozHoTekE=;
	h=To:Subject:From:Message-Id:Date; b=Owy2WO7xerZEqQtfYbK7Y6xemZeYD/iX0gCDvGQQLulfVV06brUHeJKu82fIWt5fCWufSaT7uwcNsCmduoGqBBbKjcBFfq6oBbWCYTf108DYLyenE3B2GvzYTc8uUP9mFFvGkf2yK8qRZ53fvKgi0wj0Hw7E/mYaE7U8v68/kMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+d3dlFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+d3dlFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A518CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757076593;
	bh=WdK8kI8aAU6oESNOu8iux2RrBrdTNJT5glWozHoTekE=;
	h=To:Subject:From:Date:From;
	b=P+d3dlFyVJ6V7EeYwmS/VDDIQgckM/NClu7HQ7xuX0hHZCgZSAow61D514qslTtqT
	 BYtTFTC087OfaWTZ4ZSF9GhEusHCIjXNYVfRLtTkhgDnFZH2fqeMxdRyLRMMUcIS9H
	 U36XY9HnzPx26C6Lhw+tA1np85Ys4W3itQwIHoskifR/4EPN3YOrJXE/Z9MrmAfs5a
	 nEUl2BWt6DnG9jeQM+Mwf/ESlAHXpbJP0imzxiNTZe1XRvGK3ukj4u3rNgOMjweNwi
	 lvC/JFdW9X+/esgqjgaC7RmM/ysdoSFigCcA0T4mSrPS6iXqpt8MSm/yVmpHlMDwW8
	 2EP7oVnDgDz6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128ACA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707659357.31068.10024376420793690957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ee49cb69c047f74b9eb543d5ae9d11ff4740ae77a771b6be3ea0786f622031
Date: Fri, 05 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757076593
