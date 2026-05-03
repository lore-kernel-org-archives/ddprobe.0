Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144131A681B
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777774054; cv=none; b=Ajj6KcN3jdlfp1ha0pPutsij65wXzrVox76INGUlAnHIWSH6qIgwTk+Fhvt7qtCI6Xyzu/DlrqONQ+0xVREsMLJBeN1vkUWn/FkM7namX3H2ZvUIlYqDrQOEjgaXgmAT/SfkXhEU9gy+dYZSAcYjMQVosn+AN5aeQ6lR0whkWLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777774054; c=relaxed/simple;
	bh=WWJYRovaVfMbdsDf0qyo50mes7qqr5umO6lphEDvEtI=;
	h=To:Subject:From:Message-Id:Date; b=JxYKftdKHIvoIIcMVDvPP2Kf29D6vDgFN/qxQNtbl7O0+Wve4m/yyvlAjPBEhgYhUThg69SkvNU5JxvOI6MstvKyEk3SxBf/vWmR5gGqOJknXmXXeM7eiPA55YA569haWRl5qgai1Hk6PQQAfo22apYlG4gOxenG123//j2JJ0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9NF4sxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9NF4sxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC26C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777774053;
	bh=WWJYRovaVfMbdsDf0qyo50mes7qqr5umO6lphEDvEtI=;
	h=To:Subject:From:Date:From;
	b=k9NF4sxv2o2X50BKSlFfZ4L8r9tsFDYRAb/9AIsIoDuOOiNdM9Q8QKfl7hjM1nXt1
	 hEbQ47SMxuJVA+ayezuk7PrUrMFslGMi06zedJCO898+JyT69t/Fj7L+q12r+i0stX
	 Hl7i/qdi1XqmegoHfNrziKocnccoQR+prD86xtj9T6e4P6il6vRehphdMN6LN9SfNf
	 aa/8rsdOCEoDj/PJ7CVC7xF+Em3jRmhznxFX+SOrFty5Qe1vxzcJWV5YSIlUiLnwJt
	 Ah9lSp/LtTfMXBoBZS6nNlWcxKgK88cJBEANiKJyRivYPSrcYggctrMKS6PDjFES+R
	 VzYZjWEabpotQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD713CD3423
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777405370.21073.5441468881937035525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec5e753063c7c0aea97b2cf9835ecffefd5305508a96381b92f74615caa5e1f
Date: Sun, 03 May 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777774053
