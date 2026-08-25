Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6871F405C2F
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787660434; cv=none; b=V7thzdxOdtjGG3Ohg00ZttjHVVjtwUw32pXbZmx4n036XsVG6CjOK4WA/HRyvxDD85NgvqUnXo6nDpUOpI1JJhSm+FvOEtrvwWzOv0AqHJejqRbGgoWhw44HIuA/iiQSLCDsMI6XguJEeblTIqY+QoZy2lFxhC3rWAdcYbcrruI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787660434; c=relaxed/simple;
	bh=5dPLiScld+VpMbWdNPMeyyoorBEz5E53tvynmv5460M=;
	h=To:Subject:From:Message-Id:Date; b=OuFd4puHvDqXOL/2QhlfwUA3BhLlo9FOETKjQ3/PhR33ILuNbCqpkf/scKhCPp6falQjbHVUBZEOHLRtl2rGzqe9oiG+Q5cPHaKuzHmtdHOxoOZdUJuqVW14526WzWm6PQzOAKYOBHm5O9YdVCl3KaY1jI5LM9l96DXZ25anU7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmlO0OAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmlO0OAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAEAC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787660433;
	bh=5dPLiScld+VpMbWdNPMeyyoorBEz5E53tvynmv5460M=;
	h=To:Subject:From:Date:From;
	b=qmlO0OAi/cnEohmhnmXLHZ2W6kj8Nm85m7NqLgfF5EUoroyEFo4peiJSm4Y9fO96N
	 sQgIt2JSSoXfHk6VkI7s3q7+onE7mri/eSy+d1Q5QkGYYtEG4bnU24AQI9G91uET5J
	 9943bNNv//Nm/78cMHnz1mgy4aEnfPLyWFYr0ftsQOMy+QXhG2/qJPuVWX7wvttk9R
	 mVZzhJWQTPkDbge4IX4aiMhx52Rglvad7boKtCLGJB8LCcdv3pEbxe/RSJ7+wrrGaa
	 IrN6cuniNr7PSnXqaJEpkZT03v4OnUi9S6fw5Ah+xbAZT40Rr7Qn3vuMkWBTLoIsf4
	 QA/awxvsgh9MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADE4C61DBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766043368.30911.1890162414099552142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd62c414a3c97c0cd690629eab6fd861b919b3c9198ea30aa001677f97480a8
Date: Tue, 25 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787660433
