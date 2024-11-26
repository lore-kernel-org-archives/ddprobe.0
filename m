Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3F1D299
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732643754; cv=none; b=GXEkqsLeNowV6e9u/WKQmT3fn1ZIzxGzxpL5YjV/JlWbRu56wl84uzGd5up4Mwllpaoj55dzSjkXtwIBDBDrnx4fNoRUaJ7HZR2ROPSyyrGgWAy7Goa8Z+19P7hf6QDxCle+KpgcpcHYTYOhwdSnPRLyPqOpik3rzRGhXa6tN9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732643754; c=relaxed/simple;
	bh=3Opkmz3zHr4vZQLgHd8Ja75TBqGj0dlHFlCRSaG1x5U=;
	h=To:Subject:From:Message-Id:Date; b=h79QggkbL8skitGvQS+mqvilWx5jeuwGEPRgnrEKnPhjN/6fr0Ps5hNQRQf9HdDO2rSFZKynKLMX/eyUeyZKjkIB58x9F14Hnk8+VPzhAHHOOvNxPBgpHnoKNLD1OBfwrLQJPjUHWE/bnHyPAb86IS0SF8IYO+zQ63AOCpE0CqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJj8zE2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJj8zE2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEE9C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732643753;
	bh=3Opkmz3zHr4vZQLgHd8Ja75TBqGj0dlHFlCRSaG1x5U=;
	h=To:Subject:From:Date:From;
	b=gJj8zE2t8258UfdeVkS4qFqcuehYYv4u1d8fovmnhxErcWFiFNEvTvwN5JBAVojkA
	 lkP+5ij3cc9YQsYVvZP3TFJKUPRplnVBihCrQgVxeVsg0mURK9QRHhpavIGyiANltW
	 p/7Zbzm0b/pCOWZUGJicMfVkH/BRurONqYECdzac04E4HoWbpfZ+KYCnQETkN5AbPv
	 fqtc7IIs7i2ce+bA4wsEvM+QiPTLgWhfUeMG/zTOj8vK7XtSlowOO414Rd/88ONhHZ
	 kKmpOFuZhA4rafxaBSH/vj1v4ZMJLrQWtqIaJAxr/T0v+b3Hhy4JmBpRjjnAPrWsNk
	 GaFJ49iKK8muw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9B7D65539
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173264375362.22777.13103391465304206863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68cd0cc3b1d8c3ae14406f3ba6be194bcc56bafcc1e7c774c7c4fefd9de31f9
Date: Tue, 26 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732643753
