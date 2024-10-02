Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F1A194152
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727855754; cv=none; b=hByslATpHAh1Ie477qKfXjaeU9yGDIXo5MDDXOBserODA/JUOKBQgIXnCDHIZyHlAXhsKukqVLzO71SK8pIII/Zu/3ki8Xt5LjiDbItbR48coHf197pIjlFSeN68scoxzjv+83vwZdeBZl/65MwA6xJR5tFp3oTUfd81bqoTHz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727855754; c=relaxed/simple;
	bh=JDhQxdNBLi9CfquvhOhlbUDDtTqfcGzj3dZ9iUIW75g=;
	h=To:Subject:From:Message-Id:Date; b=lQHNsi7JMXkrMOLFLYe9QqOvXwbHMeN9KnbVmeR0CqOrdVIwETZZJWf+9Kjp7J69aOEE0VlLhv8P9isxhS8l5XoS+7ETj8L7Pn0MFYibFCcu9gtQTwaGyVwwXTEaPLtmDjGv4efzJR/kzG5F1+NWl2qHwJh3i4U+1iwO7kkkC0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIMyiI4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIMyiI4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB752C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727855753;
	bh=JDhQxdNBLi9CfquvhOhlbUDDtTqfcGzj3dZ9iUIW75g=;
	h=To:Subject:From:Date:From;
	b=bIMyiI4Wu21iLxLv8d7qAAtBGiEBLYPr6QenD4bJPUwa8g8dYYyxnAsyOcrVkhRWn
	 XYQkfW/PK5Q6lkWQlQQktNh8SJ3r3sh8lu+kWIjr6VNqyfxzGE9xs6Eo/E/dy0KRoQ
	 zqUd4VJlWps7ASOLpAbLF4d+fBUXD3ZgwsEWLFNSKCDvp/9VOUYm2ozNwm1E4Pp8Kb
	 IZPkm6AQvexns//wpfC+cOF6Xs35hKiw+yksKB3wdJQKEDkzHyHdBc9lqxSQHKG0qA
	 cc2hcQ/XIQCwssU2eaBpLXu4CZ60A+tbsQiPYg1/heg1dtlPqpKlGVbBoU9PkvuZro
	 MPg19ifoJ1dQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4F8CF319D
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785575362.2513.10445497977668073813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84cde06a7fd62099a11f7378caf0b08880e4e2abf571b2ee5325bd4d942c98d
Date: Wed, 02 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727855753
