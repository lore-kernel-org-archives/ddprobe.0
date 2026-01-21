Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9E327A123
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769008434; cv=none; b=gKAKkeHKBxuvJwbCALgNweTHXgmU9/DssJvoIqYiLJPFoe+3w9MRI/eH3ET7RNCcyW4Hk0L+t42ublcQa5KDG4ZqdFIvBnN7cYmi1rx9F86YznLB/a0tAita9HpRuOiIn4Pti9v5KsSHveUfk4rFI4QGpXTqNIUWp/kGmmsVkB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769008434; c=relaxed/simple;
	bh=z0UWpay90Hc+It/rzcJ7tIfrhkRWAeB435G3O3dQlHQ=;
	h=To:Subject:From:Message-Id:Date; b=MCOjl0hR98XgJZaBCn5XEC17AuH+pVPUM399xnapzqGY07uWpF/8Xu/eepzS9kWZTAoZAA+1eDvb2iab+x/PaGzgUN6PRQ9H6NK67TSxGeHvaDPc2iHfxExZYKMrLTnfLJuregtJdNzzN3MlIfVbCKVyuyd7TOjmBdjaW97Wuhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khSc3pWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khSc3pWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35CBC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769008433;
	bh=z0UWpay90Hc+It/rzcJ7tIfrhkRWAeB435G3O3dQlHQ=;
	h=To:Subject:From:Date:From;
	b=khSc3pWkkkghy6/lU4Jq+AItj4kr73rK5DbwAO9BtEY9/gJGZga2U1Fe0C0pe78pY
	 PBtlfscPJgq+TD3DFjiKRzLXIG7GP+RHQxL4clhqqH9ubR5TcId3JGLvvk8unHAEzd
	 ZLq5gKC7+OjUpJ6HgR3fx+pyfgTvUcAV6iH/c0relF79JYkv9o/MAWUvuYP7iEaWxB
	 GCoJeh61BP+7HPUhjXd1k0ohPJE3yCz+oms0ufXYeKTt1nvtn+BozRJxzneKAlVgLd
	 8y+AG0BcIcWclfFqrAo64W/0+D9kRNmQx9aBs04mL/NZYnd0fiCYUQ+6mqB5V/kGcg
	 JQegksuJGMxtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93660C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900843359.31387.12780553190966314543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a58931c63f120be1f3fc2422ef7f9ec66907837f4e305973a3cb3e1af5d66d
Date: Wed, 21 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769008433
