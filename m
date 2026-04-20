Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18612386561
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776684454; cv=none; b=n70mqFObxtfVCY2D+dq/iilRuB9suu5sz+fx6wnp8ebZhr3vIoXEUGjHYr8P0pgRm3Oz+ZXbts9DMDxj9yQYcneofutojJIavs+bkKFcHl2lE0sQwm9qwsDTmxAt0C875CyhUuskrNAkktwnFuYsineX0p40Be3dojd9FaK8oIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776684454; c=relaxed/simple;
	bh=Q9PTGpB2fbgt1jKI77IvOy5+QqcUxUD+b3hrIwsFWMQ=;
	h=To:Subject:From:Message-Id:Date; b=fu3dPO9R849q6sjRzkrtZszZBkUjZh1eYSaDze5xEboLZzvRUubw/StYOyp74l4OEZtPc1Ka8P8TEBt8mHh4MUya0wQh+p4BEU1jKITrcVASd6un2QicwT3q5FaVb53knDU3yEhSWQo3tgyeGZQfzZjZPqI4PExDinjipKOnNUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rB88Bqlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rB88Bqlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACAFC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776684453;
	bh=Q9PTGpB2fbgt1jKI77IvOy5+QqcUxUD+b3hrIwsFWMQ=;
	h=To:Subject:From:Date:From;
	b=rB88BqlzuNYGXnAuwj8bTlJ96y26/XrNKwzS84bHY+r7EX8hBG+fwPU5nPcqAdd20
	 DjyKZE9inML7PXLXiki8T81fQ0LzhqDIEsypDrejQRggYparHwCadPO7781U3DK3hU
	 3fqwMSfbzYX2TTCmrPf3YuJmvqS7cp4oMI+gLxpvE6EPwWnjhEHsMPu4xlZTHzsI+y
	 K4QVnhxpRSTs7yfONsLjlD2Pwy/1sYt76KYurZnDn3ibfff6C1h3tGRdWLcSHhn0UM
	 YYm7ZdTr/CK9WpXoAtG9zndW5v+M5GgrteZQ6rIs4AYWaXsaY53pMCMuSh4C1WqWQt
	 nX1KCoGX2rbpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD4F5581D
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668445368.9790.3500880634163748978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746e6acc0b7fe25e1c3fe45651b180221e37caa76b813d8a9bde9c7e94f903e1
Date: Mon, 20 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776684453
