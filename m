Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5302D28751B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784321914; cv=none; b=gVHTJgiJVFVEQdHgadd7NvSt6NTrl0BzhWcdYHQ0yeLKAWy7iPUvxE6q70hRBWCJuwYom+TtOiT/Z10mRvqtHhJ1YbP+B+lKCEbngRYyywI53IdXU9Gjaxx0yByZHm9f7CF41/Bq7I/tYavEyXkr8voZesUS+vhyJBcGH53/VaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784321914; c=relaxed/simple;
	bh=dobBcta6N1lMu+9gkcAGT9I2DlPWwKCtKirV3DMl3PM=;
	h=To:Subject:From:Message-Id:Date; b=lToaOTi0fnD5zcyZNDaC6mRElFbfTpoQAT+ohHJZqJM9mykmiCvXORziF+Ra4d0zM1R8iJieVXtltx14EV/kD+8mbV9hH/+5Uue+GmvONl+cFz0RzAw16Cl0czeJMcqNJAuC8KhE6OAylos1LRi+VvUs0A9jN9W3nqBcK5c6JS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcdL0FJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcdL0FJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF360C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784321913;
	bh=dobBcta6N1lMu+9gkcAGT9I2DlPWwKCtKirV3DMl3PM=;
	h=To:Subject:From:Date:From;
	b=lcdL0FJTytKYTC3IJRFirvpnM9RpDCx4jwSa8OTE6ihJ+1muLQx4wq82M//R4rFVh
	 3QTpc5ywKHZHnmou3LLVlfCG+4Kjp+xhm82A+5PUPoR2DLapKMKmU57F8VGIzl7stq
	 EKHITQG7G7c1IcDolswsOvJRAaZ8MoAjlGJIwA4bdKrsjsR9ND0oHapvcnMJbp8ei7
	 4stn2UvZ/RF2qntytQFfNAah/O+lLWU++9VN+auX4AkI7YYYAD8aTkeIz4JMobG2fN
	 g4Rpz7ueyuCOjw2Ms1SnAmm8IyP8oGgQJx/Bq+C+gJl5iNL5IVHfRvoMP0rTZDe5PG
	 dCYISHsxeieZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA92EC4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432191369.6960.12575312791093627580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ec2714365e606bf45542fe0fba50d92f70df077d9cc29c3fea3595a6bb6e60
Date: Fri, 17 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784321913
