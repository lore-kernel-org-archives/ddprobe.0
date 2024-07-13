Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F05442049
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720867823; cv=none; b=rfGgbMzKCackYF0ahoNuqfOm0mZITQAVpsL/BqXAucIPEJyLDwTHRgNfOFKYGw7d6DKBbO7xniKIGgpTqTwmBqL2elV0+ndIePbw32l5spa26hY1rx4BzPEj3E4TL5o/gF24xR65fab9rOBsW4cr3g1jHMISodS+U+PkW8l1BIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720867823; c=relaxed/simple;
	bh=UJXab06VHVu7tqwnrxFlEd8PTKGygHgIJXgr88ASepc=;
	h=To:Subject:From:Message-Id:Date; b=KRm722kRW4MNhKhxgzNJmU2z/yFsNkB5Rq9t4wu1D2DoWxY1wocdtlOyZY/spohFWtaOq/rb0FaC0pGEpfKyF1UQ5d6ZXhFhRZ88w8z42z1Gt7EyCRX0Z9Sh1grmrwVtN62y4W0QETxbgTDKA5vVtDQDwblUCSRZ6mUScmuZ8a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oL20vjy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oL20vjy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA47C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720867823;
	bh=UJXab06VHVu7tqwnrxFlEd8PTKGygHgIJXgr88ASepc=;
	h=To:Subject:From:Date:From;
	b=oL20vjy3styDtA1tM+PubFQnC/vG7yLhqcAan16iN/hl93YhjKMF5ycyYtO5GCzQW
	 1xzFodNn9x+fjJ9z6G0FbMy0pBy7Bd9vAjmqauKBi28j/LnfnbfpbyoCr/nsPr5MJa
	 GkWh9lYDnQx+IBNkqiVGqHXPn+9gLKCVA8SJ6LxYbnTjoCTMTd9ZoRG7M6/83fX3lg
	 w9pjrIG0PMbCB0qT0y3w0wmn6Kbj+bXX94iNsmvvYeHp+QBZvaM7JBpwkt5sU0660N
	 M3gqYk97ZlRIoyfTDRVXRuehAQu0Y2GFv2UUDQiDvaaraGqfxL9tsGQqQPJFX/IgWi
	 wz/VWDGiMVsrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D087EC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086782281.6111.16738599696244701208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38b747f91bdc719d80e47b095d4c8815d5723a1ab808f7d2174b955203e154b
Date: Sat, 13 Jul 2024 10:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720867822
