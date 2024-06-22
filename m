Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7344515D1
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719021743; cv=none; b=MK+wKQlsAJSyMTTnv+UA3zFJknRjm1O/Q0Opy8QoeKlOvZdDluX9FmBw7fgYUKQJuc+qI5T9jCFC/CZagubbZmmBjS4bVCbpHdPb6Laij71ZvZzAnywlAxMi+EjJeIs4+EbAN5O7icexDmHPzYf9g9wasFJFFzqj36cG2Uza0Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719021743; c=relaxed/simple;
	bh=4FQmo6qv13K/3uQgzEoMpUfSuP6wXcu0EbB2vaLRkL4=;
	h=To:Subject:From:Message-Id:Date; b=FBxbCYqAab0Wzsp2FplA8e/7b4pwG4PUur6W/sdWMaEyJoWbN7Q5OUAcdzRhHlrUjVS5xybSeC0xYzrVyvD4WYKxcbubsoNBhJz0VRToTZX9alqFKsZYnBw5Qk53E6KP6dV0nyNFGW3vgiO5SsnHKt4DV/WpN6BjUllgHePkUZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8cS9IYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8cS9IYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E151CC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719021742;
	bh=4FQmo6qv13K/3uQgzEoMpUfSuP6wXcu0EbB2vaLRkL4=;
	h=To:Subject:From:Date:From;
	b=c8cS9IYW5jWeOWeq/b9fXh8rpb6CCAFzHPDsequsn/eXAngVidk4jz68wZEAE4HH7
	 eWgHBfhykDui8xxh6NeFmqLKPPTdQakkjZ9qsLmLZ4fPIb20sVT9ly1muzo1TKt661
	 AQHR5xXr7SGenrH7F98PjKkz49Yzv3pbSBpVMAa/Ek47pbqZOawveyO9qgZH1srS5B
	 qEsQYqTZJuJmk9UikPhgHHPh5IhmKbDLsQ66x97tZNIuaDLUjAxMrg5P4bPX+tOduV
	 7yA2FF3zS1WquD4g7OwEvqUfrtWt5Ht4wu0oZtptfezMDcnul/01cgvymThUENk/+c
	 Is9J8Gnjqrk7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EE7C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902174278.21728.3025799247438547094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70ea77e807a50b20b652dd98f3a604cbb460f1b340758b494c58818a67d65c8
Date: Sat, 22 Jun 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719021742
