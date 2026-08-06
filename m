Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E61470E8C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786027834; cv=none; b=YRFL1+H9r5HHFPoqg7BUSqxdC5BCm0WZuXHmL/Ii7HDubNuPVnYzOw9ODHHydtLeS0oD7cYKDdtrrsEpGEN7LoHTG8uKwuRtbFIDQhSd5sur+H7EI+gqBpmya+1cGY/OxDb+wq8cQjZn9tT0aiQGQFAFPLcyw+RyXDZ9tSkF2Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786027834; c=relaxed/simple;
	bh=OszlhsPAwiqJ8EAAdRSg2CToINJPtlqGDktPMK4/ia8=;
	h=To:Subject:From:Message-Id:Date; b=IrP0SxSY+7iL1CWesA9BBhb+lRmQPaQS0S1Ih37u/PBZOhku6TPsT4r88mZh0kKV2VQiHF25/RvTuh9rzn2+qQExDKkViZShsSsaIwG0nTfzuHG0/AqApW0yM4DsddY55/IT9DcP6HWBQoi7/0pI97+pNi4RS4ADeWOvAgWVZwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVxVjzbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVxVjzbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA31C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786027833;
	bh=OszlhsPAwiqJ8EAAdRSg2CToINJPtlqGDktPMK4/ia8=;
	h=To:Subject:From:Date:From;
	b=gVxVjzbUa9Eyvoq4/LW9l53Yu5l+Q0HnPVaNfJKpYmJRLKqLqHyfiGwQXcmNVY/Cu
	 7XlFsvuzM666jie8Rcn6HkfkPiuLfrxQl2oVXRlQZlW7a5F3slsRh5JugEHvJbONXl
	 Kzj/DpLzrLFrnJM5Q0rfJfaYJMDBHkQB5pgeGQ582kT3VOBZmyvKK5R8CO7jsyXnCr
	 ce7C5AetOcvv/0ZYg2lIsxdl4hOuR7xM7+Ya5WGJzKEictD5nHHP8d+BJ/VgvIje2+
	 yg4MHV+VhMPO5yyJr1uIKczn7xvUlk0kJKsA74DEBt3r76m6J4aQGWti3/6L3vGjD7
	 Vepe6Rq+Cpcow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB219C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602783369.10653.7568492982019909904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6256bcd33987b3ce3200f698532a2f3968c22362d562a0a1e4a06f81e0ef9dac
Date: Thu, 06 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786027833
