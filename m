Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3500E221DB5
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762153194; cv=none; b=lPTHNAHLhKL4dzmjqPJk6ZlYN6/qoOLNZolFysCM6qrfBa7AzDbRfZnSy4XqQHL5JqesBT6U+TtS+hULtaSlSz91uAlYPfy5ojliG0IQGRB1hr+5A7+1c+z7e8BrQHqMekRMWwZYq2uPuV+QQgeE/S1pWLzIr2HZc8xY88b4tqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762153194; c=relaxed/simple;
	bh=4FnY5Ii6j/0eodPHGGYTX1Yrk4p5WbhG1dpBBCj3gAE=;
	h=To:Subject:From:Message-Id:Date; b=HE6gR2OrkPDSLNzknGGE6rqrZIWtwSxnAN8bKolrSsc+GQaoeNM/SRWIbGAbcpn2A5TyfWzRY0NRxhSwRYU2fSucIrQ012NfZk68oj/fdZFK9eWN1ctj53tMHlhqWADerI43bqYEU1TLTQgQ7YZ8m+vJSZZlLY410efihapR8ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/gQjMeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/gQjMeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A316EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762153193;
	bh=4FnY5Ii6j/0eodPHGGYTX1Yrk4p5WbhG1dpBBCj3gAE=;
	h=To:Subject:From:Date:From;
	b=h/gQjMeAnMszZcqrgMstjy0bQylG95PHsYFiUiQgX4j5XoFz2fxYdwVKBg8XtAhqa
	 Uk6q2Bi/v1WMdfKWPblVrAbP+94uNaXUSd3YckIHyrn4/CU8DXZi2/waEVzhK/9cwX
	 WITtIdmzZoss8xRZNFUU/F8YOi73W+VAQFZepw3paE5YVVexgrKFsSfhiRr67u+T+Q
	 FxhRbcpeG9MXZKLYth64zL+uTVheyOScXFkeK0Rggmu1okaCNkbGeuMaVPSIlwrYlo
	 Sg8QvbpLo//HU3mfglBv5MeIODR3WeCLsGptwePkjXhW3rQ7YVBn2n4uELDOegXTkl
	 EXY054XFH0ilA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFBCCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215319357.27464.12812043738987696345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274ece5e21e9f893dcb3a8e623d161affdc7169f702803fc232f32ccdb8e3e20
Date: Mon, 03 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762153193
