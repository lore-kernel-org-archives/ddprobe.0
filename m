Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCA8220F2D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772236494; cv=none; b=oH0fXnaQWU4/ZUp7VIEI1E638+enkKcODm918Dq5P+m2X9wtda/qMOA1SmPMFfz0n7aYt1no4UfMDm0c8CaX6obwHXoBQUC5+IDQ2J0YfYF6OOohVaRW569sdvlLDYVxw0fsL4jRi8Y1XfO66WpZmBrsQKzRt0IUX0Qws+KIHGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772236494; c=relaxed/simple;
	bh=Rvxy7EqkhdIF8p4aBkeZzwOkXHMJIjVQ+MaFKOLywXw=;
	h=To:Subject:From:Message-Id:Date; b=u8SziC3U/1S+T5r9VfKDrOLFrShGbEl3D7OKFMyqcTFqMmLj2EePseGwq+V8BKa9l2ZCZDPl7cdzVo/NetGEBMtHSMwpP3l6E10XhUC6HlKJunKVZZoEGPI/VzHkXWf+tx+3kFaiqox7dmYmAabkd2nq7KpldMsMp3wGbb6sqqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pnpa+8Cd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pnpa+8Cd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A830DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772236493;
	bh=Rvxy7EqkhdIF8p4aBkeZzwOkXHMJIjVQ+MaFKOLywXw=;
	h=To:Subject:From:Date:From;
	b=Pnpa+8CdvCMYmJvtucjJ7gBm3EBJuJkM6HlQvhiZLThBAtRpIU8O2h6wryOJ0pXF3
	 /GgwiBLtZXKkrHB8OiTEbSu5EVTHd7Ko/t/U7308ID8O5xu9xYU45GFo93jijMSrsS
	 XOfPUM4DLaM0hciUjDm4rWPFFs4n/bLnvy5pDc6xIs+o/Q5HJH13QCRJUFdtaHRanV
	 KQDUiswv/CeOj+cu94EqKAjKl0h27oWRkNH9ZrdUhYXvNybldppMX0DFN+HNMnYyEQ
	 W8FyKXhTUDOIZcEjd6CDs6Dal5pxvDWpoeW8yGim5oYmZ1vqc6Ih4Ns637bKDaJPJ5
	 +1VTpN5n99mCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D2C1048922
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223649358.24175.2684577962852370852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: badbb153328c40e92e9cbc3b868b96950e6c79d86b3e24e91a53d831d109c17f
Date: Fri, 27 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772236493
