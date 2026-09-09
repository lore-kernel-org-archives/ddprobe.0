Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365D125783C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788966034; cv=none; b=ozCkmrS1PsN5NdbQLzuzVTWEgbKX01QL+u43WWMWhg1M1B3NyW0EOwVmjDzrZsTXzX7UAyw0Fl/EG1xHyyv40pJitFyg8Uu0tR1I7WWATaFEd0ikZhFgAqF0U1678iquSrGNAsyucE7iu8YpCi+AnB8kJSmonjjpKaZam9eZbDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788966034; c=relaxed/simple;
	bh=Yp84QgNHqidTNGtTA0ULkjLUwUAYb1DHVfeN/ooJ8P4=;
	h=To:Subject:From:Message-Id:Date; b=HpA4gEUqQ6zgQDawFS098fISfBjtu8qhfXjzBRSFIC2jC0Ro1QKYAi3cCcFlYr9W5MZeVd/ZeZoBemHpGrpRpj5JwYfb6aQIvd3wyngVr+tzKDS0ZN9t4BvxP2ek+KvY1q/iaGUfFfqcGthXbgjFZKlu5fI2zC5gjsONilyy4u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NF4ovUkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NF4ovUkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAA7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788966033;
	bh=Yp84QgNHqidTNGtTA0ULkjLUwUAYb1DHVfeN/ooJ8P4=;
	h=To:Subject:From:Date:From;
	b=NF4ovUkbFm/nk9cvIjzPG5Cy6wLb2/TYw+mF4zKzMB1m528FzRRI/SM5NMG2OYEat
	 xfN4kJpqRUxll1ULlFocxBlYo5f2o6sADJYooHOa1WiO87KPhp8xZ6W5tkYLdCtgfR
	 8fKh1Wf9YUVGtAVua9dn0sojAvaRvjPnOMhRbBMp3c2mNU5hYFI1ZF1ZjseO2f8BIi
	 cfDDH2tkfuG+VnDz17xoTQ3XFKiYRVhbgH2VvUG19bhOiN8r3gpcy9O61Kl2HnLorJ
	 +MVWwxIpnakH8690vocLR0E5AkwA5Wukoq0nmwAauDpHA13iCX3dnTYGA2/vA1bK/W
	 NGyK9iFM3Ix0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7473C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896603370.21195.15160187225838407179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75448e44c9a2c089e71b5105cb8ee90a1bfe62a28cf7e32e45eb6df88c2a116c
Date: Wed, 09 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788966033
