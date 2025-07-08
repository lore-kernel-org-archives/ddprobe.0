Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4693829E0E5
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751963994; cv=none; b=BEHkqm1YQ2q7UKLvPp8VnURSS/pXQQEKw+xlHcOJNI3OD5TSfxYtpuh9hPj7/Ma+OmrHqlPZGfa/kgT2m/ujis8zmZzQom2hQ94EylNKJ1EC5dqid6PpiUTNoGm/OmTroQA1b8EJAnVARjIJ5Ev4pAAjlCnPUOmH5vFDtqmiZQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751963994; c=relaxed/simple;
	bh=plm0/wQRAHDJp53adWYRW83h/W5JqV6OlApg5eZz8qY=;
	h=To:Subject:From:Message-Id:Date; b=mpl4L5/apzo/uRAkvHZGWzOBKIK48Pbs3vfEwxUNWJvRCwu9qYL+3mWAmfKvkKTKCLl7fuCWmZknIzwwUex0ByL9iqUELFmoZ59uyb5W2eTChshg/7IPQFk0lhQyY8NcddSnvA/5q2xHCj3tosHlxESCXsrJ4/sHyk/41r18jG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pppIPq//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pppIPq//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED20C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751963993;
	bh=plm0/wQRAHDJp53adWYRW83h/W5JqV6OlApg5eZz8qY=;
	h=To:Subject:From:Date:From;
	b=pppIPq//oja0cYlUDh5+VZISICIflpmKDTw0XJOmcW6Z93HYTM/YhFUAdmgQDlX4K
	 fF8xxV4AoYVMZaT+noZk0Dide0zoL9BIkJMohNT/W9alSYGZQucHNsysfTQtZFmhu7
	 K0Cy1EvA/yo1FiMpZglaqhk575NxxG8EUQIMdvg392rKvi10OLoKZgJk/F0mqIVZNz
	 FZzE/IG06tFmzBmr0vFcJE1A8Ss8nieiMPemfbHOnu/fieuCYEb/ETyLCmRKi+Bvlm
	 DEhZFgAI+roCQv+80I7hOCpsMLXESpl1PSPpOYdy66yrFAy/1tGKw02EskrWFouZ2O
	 wbcH9xzsc/94A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7AC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196399358.22995.14086373470876778073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2045782ae7a4fe74da9c6af45fad6381cac40b2f22e58456cb22738dcf51623
Date: Tue, 08 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751963993
