Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4247E1372
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742604594; cv=none; b=pKYIHZT1ZN9jdoF/TV0k0Qy1DUsSa10SJIoOMh5dwbcJGIKz8IhmTKTQajGWzY6qXk0sVhEc9S8I5bPc784PZjj/64rUTefAz6YaBTmClhRhqDBS92jJeHp0kB3ma35JAd300JnKhMjYtJF8UVkTiK80BO+sW/7HObod6/x/8uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742604594; c=relaxed/simple;
	bh=RwrARcSLK/YpDrmFFPEIjDA0XgXkIZGIZzJEDWLb9ck=;
	h=To:Subject:From:Message-Id:Date; b=THWAXLth+eDYXNByaXIQ7wVIgbkbJ9r28KUKymYy1Bmap9NMypATATDp7X379vv70y0oGDFYH8hw3AN6t3CaRI2yv96X30kso5CbfP9wIE8CoJfa2qwYR/2vIL3DGYfQZv2Q82+CIO8hGZDz5PucXsHb4zVVY+ul0agyZ2SalLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhFx7XIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhFx7XIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA145C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742604593;
	bh=RwrARcSLK/YpDrmFFPEIjDA0XgXkIZGIZzJEDWLb9ck=;
	h=To:Subject:From:Date:From;
	b=QhFx7XIXH2UeaQWawvzKlvUxerkBY799pMPiL31klRP4D2mUYW2KnqsWFQ74tfOsI
	 1evyxZMFh5YuDKHia5JFDh95WQcTPjoTCjCw8butc3I6oj6OJ3/KMjEQA34DmBAdwm
	 ySG8GzrT92Kn7IVJxpnZ6GF4nnCQOy0I+OzsgIa62p9kmuRtwRmF1Bsm0M9fv2dole
	 nb6b/utBNppvgep6SfhrAiCi8q67OojVNlrLRGe9KFobhoqyn3PRkvn8SYW+jM32bz
	 vkRPenxra91da2BoSuLHaV9a0X1qyjN0Q+3J0TF8C1ZCC6bI9llflC+c9JfjYr1mJ8
	 nm53NdfevUyoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946ACC36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174260459359.7228.17201388136710795050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4518fe40fc423af1d10678cfb2db4e35730ab724fb91900ae96130356076f76
Date: Sat, 22 Mar 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742604593
