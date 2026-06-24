Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACA52874E3
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782299854; cv=none; b=gII5v31EHrTfrkiUdw+fTYM1U62e4LxV9MM9kMwL4IRorEKhUjCiir9pDaVDQq9Ikmynvj5tIZfWNoTulyMj1lHrtXND3cIELOYfNzROc7fQxhmj1O9HwWMz1sxKxwXAyh7aZjl2HDVXZ5zwJausCm8uKRcRi2iBpDh1PfHnULk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782299854; c=relaxed/simple;
	bh=QrLK3GHzxi5xJnlcdVK5WAPHWfitbaGOneuYsX0wzGc=;
	h=To:Subject:From:Message-Id:Date; b=K7ffbf7e+H/4aHYNsYu8Dd28VduLYRZfpmjICBIN6COMpCZXvYSb2zM+SbQ0IHZBt6MDGTdA2NGXiSwjDEElWCKD9Wfqb4RDaZU5D+sQThPIVA6kxUuqvuviyMPgWau+fPWt+GrYV2quJLmL8/5xQfsIOhLrm4/TC9STlCBpl9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXJA5Rci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXJA5Rci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEAEFC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782299854;
	bh=QrLK3GHzxi5xJnlcdVK5WAPHWfitbaGOneuYsX0wzGc=;
	h=To:Subject:From:Date:From;
	b=pXJA5Rci8be+0a6AQ9mgGytLU4Uzd1FAyJz5UFNLs4Wa8pLAx9R0P/xhAbWAqtZQt
	 tjB4zuWSdTZKH9Qlezh6bRlq40lcDiiKZqNqAjHQLayDzSGXyw6VNgdx+pVIl0HKTI
	 ycSrjevHWvWC1BT5n/nR7lOCK58x9mrQhd2CM9mA3oeWbvFL9c6AKOhz9m5H3W8Sia
	 cWO82eo0pLCI1KX/GyHBLTNIdPDxm1EUeMFBhwkKXPtH7QwqLhKoNLBmSXRKB9e7/l
	 hR/vA0X9SArMIDrr4/satBk5kPv/HgsruVQYBhPSPi8r8u82qfvPueWug0/4Ax0DH2
	 pMPHqRMCHxE4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23D6CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229985371.23903.14254890956642339946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e01d77e4c9a93b7ce9514dcce56d9dae83272e34412cac90e134364b58d5312
Date: Wed, 24 Jun 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782299853
