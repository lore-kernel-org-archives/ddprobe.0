Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABF520CCC8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737633954; cv=none; b=gfTw2PfLN/827/A6Yg1WlqffHmO79H+ZfDH77wIp9tvOvfoE3h614Nmeykw+BPVOe+1SCuIgr7OvFHSpVnpV/pqJD/LCAO3ZR9uyDqIMncMaDOaDMC01I+F8dn8+O28lodTa9W7qXnFYx9F/HYp/FkQb0yuNHF73n4gz4X575Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737633954; c=relaxed/simple;
	bh=Kcyeo0XMy7ePJo9QMKXVT2eIve/mwPbwZeFpN3Casfo=;
	h=To:Subject:From:Message-Id:Date; b=eNdN1ktbb30X21ez6fQ8RbAVlvaiU789YlWehvaNS2TGnvKnLvgn8iv7Jw7cEx6flbOU+7+8E+iA5JXrA8Ppm7gbwLaj+5bY7SDaivPUs64jTNJ8YbH3X5r5T7Vum/sj/5belkPY5r3PvKHXXc6zKgPEaVPsybqjbFVgeI9BtS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXqct3Jx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXqct3Jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51B3C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737633953;
	bh=Kcyeo0XMy7ePJo9QMKXVT2eIve/mwPbwZeFpN3Casfo=;
	h=To:Subject:From:Date:From;
	b=eXqct3JxocjXSGq3BaB05Ziaupz7ohMFcSuu8NQZhuF8CLEh+BcidNM8mqxtSmHLI
	 eT/Yj+n1Ar8iwAwsCGbtZHkoD42pV1/EkKxcCC/fa+DE9NYiC3fGUNnQF2HWXqPYtN
	 WtvCxX4hBz2uBjTJlzsOlQQVpGk/BP9wgISjzcjecEU0eJaAJG65KrzgVPDiPAuIua
	 GNad6s1aokt6tTewnwky99DUuHO51m6xKbTlWTZGrpzyoCictlPqc3qlgGinqs/rUX
	 oG1uwTHtNXgNAjsjRhSPf7Dbq/8/miMzOPWxGqhy4F1qtL+0Wd7s9210An0e2Yb0Rf
	 y7GQshrWXj6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901DDC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763395357.31443.9711351910020628490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e11ffd92f01f4fb4dc935a2b52f78302e75e63acec0403a4942a134c94d1e2b
Date: Thu, 23 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737633953
