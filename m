Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C5D2673AA
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785221434; cv=none; b=ZaaXsFQsH+WrXa8e7QWDFdFgZ5xRKYlHR/XtSgMMHIaeHoCNr6UIn+qtf8lRIXqojdVpykc4Jzme9Zt4Y0LroR1FlpTPJoT2/VNAmcwpXouMSYTeDtDjFsZm20ZDOcNLjbaoc9tJ8DhkQwaMLSPuID7erOM4F/jf/8SxQIjVR1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785221434; c=relaxed/simple;
	bh=lLmns4/vn9oSy0CS5i3Ml0CglqO2TDUHyjQNG6n2N3U=;
	h=To:Subject:From:Message-Id:Date; b=d5Pv8nO16m0h1U627igzKsyKonpgr9pjCza921MOT/FJrZw/m++ImK11pH0LvCrVTMkAEdugIiaQKnvXu5++P4u9JqGB/8hDpglC7L9Dq3oDmk7WO8n0TnjGjATocAdo3bXauTMQ5XNkOiUpiK7BUoxX63SfgDRoilvl639KG4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtxqF/sJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtxqF/sJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D833AC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785221433;
	bh=lLmns4/vn9oSy0CS5i3Ml0CglqO2TDUHyjQNG6n2N3U=;
	h=To:Subject:From:Date:From;
	b=JtxqF/sJfF7SzKowuSZ2oaqEwvmdqzP3aQR4VC0UfgbQdtJdRhPmOO3fIv2uBpL8k
	 D/2LzNYdZ/PIQ6z10nobJNMffn6KZHIJDlCOl4ST2cQ0tM2rDLw+3Un3h2CqqJxqfi
	 l2O6Myf2FLGF+gTlCKIkRI70dzvO0Ut1l4XWl09VRgCKLkXOPGXnYf4Vz+IQz56Xt4
	 PYGn60MeiZvNGl18UnXjRiJut1casHkmJSthNLIDe4LYFqkRgwWHmTqtmYH0IPpogj
	 sTiHxyy5+EAjFsCzgJuHOyuS8NuBxVf6LY8xA4t8ZkaOJg3Ko9qBvBFnigKFn4Ouxw
	 OmfR+WhLi2EMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C3CC54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522143371.6964.4971038206495971620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b30a87e5e7c7370ccc6598adb432a07430ed961e678a89f0349a57cc7131ccf
Date: Tue, 28 Jul 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785221433
