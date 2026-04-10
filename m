Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5527B383C82
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775845054; cv=none; b=RrzGQFLV0wCoQkLrvpWTbk1C6bR1J2eW31Sb1RHezr/ov+yNqVhg5La4XDZcJ5KqYZBHkUMBWOsSXWC3WLoi4HF3Z7yS1G6IBPNEVVZo++Zp9LcbV+Yb4yvyeVRcwqtZJbm6Y1lhQ6/61tFSu7eBot6Un15/FLnFSTlAByGDwOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775845054; c=relaxed/simple;
	bh=EuxB8ecb9MirZcUEH70CyOWcjvcvaqxl81ug7nTIraE=;
	h=To:Subject:From:Message-Id:Date; b=Mxddw/fEZB75TnZtBdTlxFCw+rxO05E5De104H1BtNZ26DE3PHkNrklNGqkbsIsXvu+qHlRRSY1CyX5JdA14c9nNCoEjbErBt00Qkrx0gdx8NCZF0IxYDq3e44p/bamhoNIwY6o6Q3DUei9SmVDMtvqsRUECEl+UY8xHnStyRAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWfOIu3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWfOIu3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0A7C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775845053;
	bh=EuxB8ecb9MirZcUEH70CyOWcjvcvaqxl81ug7nTIraE=;
	h=To:Subject:From:Date:From;
	b=DWfOIu3abVhQ73fQTzeOk60t01eHfVgT+HVePS2QRy6yj39dH2bn/gmhgTwfdkKxs
	 pZjajTif+BVQB36bgnDqHpfyXcBR/xond8LGTeAvvXEZ9U+mK5Vds3v74XwgI9XpvA
	 I5qgOK0JYG46vipY+fpy4hd+9Wncbf8/gW4vk9KEhCxxhEaxunvHrA0P1o9rHFpqdP
	 KmyzIAWph+g1dP+gvfvf5xl1T7L1eb7/FwRP1dcYYV0vj5QvgAvPU9QXCUuHwK+fCu
	 m62toX+iGiMQMlG1RcqZZfxaavuLnsxaBFYY1SpzY7moW7zJe/QKPudnlXsaZkUGcS
	 x/jRmEE8ODgEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9851F459FC
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584505368.27177.13455644991580588051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1949bcd725f37b79a7537f1678ab73646530727c8f9984c9565a42df1a84fe88
Date: Fri, 10 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775845053
