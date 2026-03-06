Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1307C3563FB
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772841294; cv=none; b=eoU443SIoiGcWgCmX4meumtQ7fDRC0xypejuV4kG+rwmXooza4WlBjP7+zSgZMBeJFXzX+Jj5sQEkMtpg3+D3F5aRKv1gB4FwqLTP1tYiBr5Tt2KWtcKQLX2SSN91z8h2Wfy1VBaKOrluu8DqZcKrVQ33vaSNs6TDea/dQaT9zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772841294; c=relaxed/simple;
	bh=smsF38bSLnEr+LRgioSx9lS7qnBod7poKVZT3iE2jBE=;
	h=To:Subject:From:Message-Id:Date; b=uC9F+3wrUsEqnVHVFVKhvYOOftyXSGmZe73anBeumEapDVhqBEFHIL0UJTP8mL32rF+CHpT469wKjtg11t7stGhFXCKQPiCw+ObHKaLiw4AXDJm0G500x111XgqwLXVD8tXfUL0i5JBfDrYf+uz7FWqoSAQgIr0vO7jk8jCsmZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AE1206cu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AE1206cu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD70C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772841293;
	bh=smsF38bSLnEr+LRgioSx9lS7qnBod7poKVZT3iE2jBE=;
	h=To:Subject:From:Date:From;
	b=AE1206cuL5aGL23rqW3rL1mQN2aucrHfI7dH6UlQ2/9BG8GRMLjFfqjOLi836LIdu
	 k6fJHoiTYiQPgNQfX5smhgXicPeIDGaGDLdyPd9gBp9x1d0GhAV2FayG/ruhJCuukr
	 HzgUGV9ICwtNULZZy+eOtQDNPBPa7N1J7GnQRiIAmzaG3SChBahxAtEc90vwkhDyIl
	 pjHikxRvXttRSbyzmlpIpBnnOC6i2VgYqSJHHQXpRMFPb+5C8joFmy20p7Hzv+IDCu
	 59l7PfdOC7QyBPaE+8syGsTCLmeixlTswLx72f5mQUtAqvhsdn+DDkWFJaXp3Ln6lB
	 wXBt/Ty0bAb8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E69FC9EC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284129358.10492.12869845978717422783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da676f5adf4cd1c7ddd8da167fbbb0c1cee0053ea2da8dafe84ef149e34695e
Date: Fri, 06 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772841293
