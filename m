Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFB41DF984
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736200554; cv=none; b=JPfrk4Hh/CsGzm+pvkPDRECi5UG8xmn0X+FCc58qHF4W+NjD2r3DcLT+jRyVbuUHu9oLD13qLlL0RHRGOl+c8lcERENtQLRa3VKYVy7bwZbKgleH9vygawtsc5urycgM7knI/KzZ4TG5TEGIds5cOKvg+4MNEXlUw1WiBr59gHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736200554; c=relaxed/simple;
	bh=cWp/dEAq32nGcaf0sdQUTO1ysmGyoJ0aonyy2P4ouAg=;
	h=To:Subject:From:Message-Id:Date; b=OXhr1sdAFrnI1dZvu/UPKAADDt6zzGtyWoa6QrfGoQxtHuInL1TNC4pSH3OFvOnxHgHfA9+Gw8aq6l/W5PjydTGb2PyHQa8KUzwlbRqyrPLgIfcU1BT8SkN2y9OMlLsSmi9zjpKs0FWdMs281t3nZuaaIq1FhJO4nV5ba9/ZDhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+LlQ1wL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+LlQ1wL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF8AC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736200553;
	bh=cWp/dEAq32nGcaf0sdQUTO1ysmGyoJ0aonyy2P4ouAg=;
	h=To:Subject:From:Date:From;
	b=C+LlQ1wL2PQGS9I72CV1h3224oH/aQ77SlinQbtKufMZ5QbtalmXTbyze+NUDNMQv
	 U3t9w/vL84xThxZoLD8Lnbv6l/rzwHKwHGhRzKmaRy7+FP3dOZJ0yP93J2hTFnvdo/
	 PxbdVB8dcCzqZ1T0OBvDxD8zQhFpziRwRAYiAdogA/WQeI068q9m9Qa3+oNxGrUhcq
	 b60TtnYtGU4Eu4XUdSMEGvH3FlhfHJwyqQDgrUf/jD4GzjmQHvO0IfepR10DK1EREt
	 81RcfqucAMjjVljWYVI1PMO839SgPO0lDfbwiAiS9+hc2gfjyDLkqvuXOtKgXC4KMT
	 Gb7xma9dbBL4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A34EE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620055361.12223.3366316963834169748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b541464ae6ee10a09edb47c9bbd05f86f7312766c07259ea808d195c6f266409
Date: Mon, 06 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736200553
