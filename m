Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33296AFAE
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710962897; cv=none; b=Y28aPHdc2eO27ydc1MhatBeoyiW3ubET9UXW/8uQdGjKW9QiXyjgm2vV9KU+z4KwoXflRJ1056pbn4v2xXF5WHuStYrgOjoZ9ei7rSsiPwfNiPDeO6r9jBdpZadlZEJVwncI3rzsf/pzebY1raOt3UOGvDlNvr5aq5dP1qTFdyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710962897; c=relaxed/simple;
	bh=oYg0vFQr/Lsvn0/m2CjRF7uz0XLgAOuxmICZzsLBvuo=;
	h=To:Subject:From:Message-Id:Date; b=gB42TABtZnfnP0VjbUCvmGqiSK5nevJNBw0UPyh+BnPDiQGUPzS/u1zEaNEJYYcCEgOfIXN1f9ejxeKAeRagHTTx7TBRGaJs02JjpwcPzl7lyib1z+2BqN7ptyaWGi8HY/toA4xVtKwzOsP0kjDn8g9sHGoZyrc0refiFWhxJts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=filOkUsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="filOkUsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7462BC433F1
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710962896;
	bh=oYg0vFQr/Lsvn0/m2CjRF7uz0XLgAOuxmICZzsLBvuo=;
	h=To:Subject:From:Date:From;
	b=filOkUsvb4w7o8TztB/4VRLfP++xkKyYJbt048/8ac8JjvRj86qKjawEbpcMq9mPA
	 se0LIsqTBxGyZYjqNZVw2MsrRhA6Ppts7JFk27TRJ8kq8tQoOFf1KHIVYHBnkNfCUm
	 AGIMmi5ug/9Bv/WZSZUhi34mrVBmvccs5xzFjx4sUa2fUIM17edN6UNcoZJHVPbRKn
	 EPLFlgwfKG/4KerRSCxbDkJwsfe55oKlFIgH02JYMFNpzDbV1Jn74N0QF1CHXzSqct
	 JvRTWPWdVzR755YrAwiP2Fw8PoA/2qzCh0gDbq+uOx504X6DvMeC5ondlf3/sdmV+E
	 QVzhGcBCNCu2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F665C54E58
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171096289637.15669.4391340412946762952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ec7a71a948f90b8a27ad4d62995a8d083de2b3b7b48a64d3bdf0cd59f32fb9
Date: Wed, 20 Mar 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710962896
