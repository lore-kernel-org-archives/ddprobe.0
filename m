Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7173EB110
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781088934; cv=none; b=MUKknAF671hCFqxHJUVZZU9GDK6wL/WEzR1x5uQIzj/90I3Fux2gf81W0znoLo6+X+t5QGdzOKNAsOhwAO7/hOJ1GgM1ZasdqnQwkqnNUtHG/iGJsVN6J5ZLMSbwlxmewUuXuCqv2sGAX7HWO3ifnUlcOvreM1iK14BrnJfnT7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781088934; c=relaxed/simple;
	bh=X+Fz+BHLST6AslXlrzlh0rXdAqBrM+iyIyRSeYaRJoY=;
	h=To:Subject:From:Message-Id:Date; b=CU7j27y3vlTjfi57z+FcxkIpmFH/V64v1d1r/1gAVVG7QfD8hmfi1gXML24ogUAAS8V2l/fpjslfQa51HuWtcPg3+6OwZLggHb3bfOSZIUzk6D6ZPJ6EcT/VixZuoMeN3UNEB3mDInC0lQe2H75mh4W40TlzYkiRXTKLRzZfvAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZMVn7PO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZMVn7PO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C4FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781088933;
	bh=X+Fz+BHLST6AslXlrzlh0rXdAqBrM+iyIyRSeYaRJoY=;
	h=To:Subject:From:Date:From;
	b=tZMVn7POqbJqJNZp4jVYmuqkVgMyU3a5K9To+GEY3HMm/T+X91FjNuq0QGPLmUyPG
	 zxMuKs9lv/kB06VAP2LiyjHoHEdLKo3L0Br/OtKJvR6Sn2vBck2cs8tIamnS6gALZm
	 giwZN9chgxMlH0jsRKdtJks+oldKTTITqgZcn5qHMgDNNs/plGaC6C1xG3kltmju4U
	 w1RWOKocoFIJsDzJYaoG32BX2i3dSQXgFEFW+O/mFgoBIb5HTIl6PvDkU0z2Evv2Fp
	 TMB1s1IFL5RiWvYzmHv1F/+WkV8UGjP/6D6Pqe1QU4w6XYV6L3ZgS5O/kGVtQ/S6X7
	 pp/pfYJuFghlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4F2CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108893370.8298.8446718485862752507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e99b48f7b82f71f463be0c0e7fe63b836276531549b183e880d7ba8ed03b0d
Date: Wed, 10 Jun 2026 10:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781088933
