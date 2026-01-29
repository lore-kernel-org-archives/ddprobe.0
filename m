Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3FA352923
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769667234; cv=none; b=umtb8UaQpDO8SxQ1BLOWO0jaudoRamFD4twkQdIcm+Z1N+6Y8ZvoE+3oj5J1ulfH4ewtdgtUm0S1xC0prms5fXbQHh7n0SV5kPcreWIcnF1KktTYD/dRomHFNs9OjC1gYO/R364eLpZnkCOb3m9owLTQg4DZTP5UFbwKlToGRWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769667234; c=relaxed/simple;
	bh=FIRzYSjCdUFToFmBDdJ01krYQ0OvzdxwMeDZNi6JpwA=;
	h=To:Subject:From:Message-Id:Date; b=mtqz8PWO9ckbI6qW8iQveCOaksF1CGArPp0ffdNe0wuingI20gRa8be0nWxaHhZ/5vdSUQpr+sQ2MDRdcNfKcldJ6vEmS9QptHdxn4W5ZDP1duF+uX5JsIXgkKL8KwEQcDJ/+zjA8QlNQkkl9/IVJ6M3TtfniuN2E2UYcEp95kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6umaHHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6umaHHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF88C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769667233;
	bh=FIRzYSjCdUFToFmBDdJ01krYQ0OvzdxwMeDZNi6JpwA=;
	h=To:Subject:From:Date:From;
	b=G6umaHHz24SFy+pPpb7OJFscbXJnZWFVw7LAJGhIXBpJZgOtSOVe9eXX//Tkqt0qe
	 jw6jBWl+eHq4ZmLxOVnlUeHTkctxZfZ8TMYBW/7QIAJKi00ddLy1jUeWysYWJg+oHI
	 vDx8MPYAa53bztkVOads8dJeyBYY1C5lPRRpnIsrCGR5g4fYlKSZhDLAMH/xzxT9lI
	 v/ilBus5UkL4buYFeZ2anXpwCzEfM4ie/rHBQJFpm09oK8vRwP9eL0zT3hzo321LHq
	 saWo6LAjbsTVedj33EZyK0Yuy/05CI7hWEEpHk9ulx/+j0OcWokoZMF1WklSFaigHp
	 jHCR6er0b8ozQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD87D358C2
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966723357.16733.4642270910471197526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680a99e9caeca2ed6a02c5d1ff63092c7408bfbc8a9e8b7c268a8690c54b4a3c
Date: Thu, 29 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769667233
