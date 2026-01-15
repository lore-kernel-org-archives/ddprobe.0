Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0712935B130
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768470234; cv=none; b=ehr7kGLC+JViEkmSnoyS31amP72ByzBXGnV5f86l/loHNX3OiVeFfsz8dfu3XJ1DdKHJt1O0TrF6Sp6PyP5QAhP33Vkv9AU7rmNDDptLNhdrGPEcSjZk7x8oSXsb2s/46HHxBqivgT2m8d3cuRJyDq5AG994xikhGBRw7XMlCxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768470234; c=relaxed/simple;
	bh=emup9A63GSE16igkm3AqZYJmIkaj+vcvqBdWZSOW2KU=;
	h=To:Subject:From:Message-Id:Date; b=Gkx2v4Qwegl2KAdyXEnGTlITW/asBYomVCbCMJ0gCL1KxLcUrmoiXO+XG9m3fQZbXlpOO8R1VoNe4M+CVXCbtxf/kG54agmaCJdGdTm1+3Z9yeJ9llGxkFrB9RQhgucN91+52FU/Plk9+cuct5S8LKh//mHyw1DosbJZFlV5pO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IubHKg5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IubHKg5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A655EC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768470233;
	bh=emup9A63GSE16igkm3AqZYJmIkaj+vcvqBdWZSOW2KU=;
	h=To:Subject:From:Date:From;
	b=IubHKg5hYcjhPlt2Im9zVbcdyF9KFYXzM4Emf38VvKxIL/91T3wzpnzCdbo5Ef2+Y
	 7I17cKnD9TL/cOHfqhjrMooyYJGMcegGgBPdrvD6s5u/8cL+aUd+v9iZmqBo3SLhYP
	 1HoSwz2Tdxh/ddFAKyGK/ykTAx1d3MByIpu+pqqpN8YfoznoOGGHmWCPYEKQdMZwbb
	 gE37R7O7K71q0WWrRdFgy5icN/psNGeRYgiJUVDSicfEqYESPo4NtGYPEFcedlN64v
	 bJuXVvzus+Han65UXrQnuyNpzabjJSUzrn5izMDD42c5TtPvvg1GWKkEcahYRNA8Zf
	 PInJS7Vg+P2Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923D3D41149
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847023359.5422.462231530018923964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce20d3593c85e0f0c2b3022d47974dc032aa770c88461276ca5523cb3b628b0a
Date: Thu, 15 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768470233
