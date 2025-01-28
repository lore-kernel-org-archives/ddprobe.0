Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4496932C85
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738031154; cv=none; b=hX6/fcRKovCrZ9/UfaeMaXiE1WSHdj7X56PkKsKjELVquBFoGvGTCIgEnchYMKAnGvUA8uYaDxyxVpFLbNWYN/zCeN9npdQeT85fAdWGoouD27DdNcodgTyJPv7sgVm3Mmwzbbgbx2YUb6xZZXq5y5Nd2i9mGxqN20wzBzK21nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738031154; c=relaxed/simple;
	bh=/erToBG+VUr2ebIVTN6UDZ04PKdMMdjAtiy22BYRSR8=;
	h=To:Subject:From:Message-Id:Date; b=lL3C4QlbmiCQ7BVHBhTF6PG8pTIfGN6Fvk0sg5JbI7GuYUgs/06Iq0k3lrqaTh+ItVNwvLbY3+onLMGLblI3ipc5YRt8amwddWSoEEN9kYtew6UxB733Q6Q4tHtrqQJx6tJPqyx8ytFpR394FJnTj6bMF/ENeWwH+E1+sqErSVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcP5NKQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcP5NKQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD13AC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738031153;
	bh=/erToBG+VUr2ebIVTN6UDZ04PKdMMdjAtiy22BYRSR8=;
	h=To:Subject:From:Date:From;
	b=dcP5NKQF5Sk6GFxCepXn+751muzydcVKl7KtuIP8SXHeNpLtJ0wc296+pIQeSrwPs
	 bQf2SgeodIGtKmjDtYosWHZocQtT54plMmSCY/gPZ3rtfW+DXnWhmSX1Lv8aoIxWbY
	 YXpNKORjzM8S/moBptrl6S+jX8z7QOyM0Aj45O+8znTImeYyNWdDkBkxk+PHl9dQBV
	 JLZ9yPTDgKONWa1i9+if2qzG02bb6+/6WOqp98GTTkDPCzljenZpNYyeMczYiqGBB2
	 jzn2BdekhtC8+Ph8QLA2GSOoTJ9uRUTcQ3Q0OOvSURJuToPjzHS5JVr3T6z5YVSXu5
	 8XAXsi67Ou/ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A50F3C02188
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173803115362.2933.7103166838409414433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c252152c7b4e274b22599c2865a90b862069df045c92e7d9c27cd6f2f9fc6482
Date: Tue, 28 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738031153
