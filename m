Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3876521D3F5
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764498174; cv=none; b=NR4fhD4f8Ce1lsSU7Rk5YityAaf5gXAcafrg2VNd4uGdKBXWMizm5lB8SKFTkqreGTeeK3BLNoGXth1gdjt4FBReS1fety7TlDq/Zom5rK9T60Q2+Dpadpvgt9OdtiirZa6UIRKdqjDozGgI2JS2aGRIzAqg8PlCwImC5oScwKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764498174; c=relaxed/simple;
	bh=arTFnGZlLiLnw/Xa+pWPiS/vOzuJ+p8ci5//G6EovWU=;
	h=To:Subject:From:Message-Id:Date; b=C5u2m/nywv0g2ydFeY6QvaK1QSw8q7raPT6NxS6rGcu5f6S+fJOwkvtL+od+x7vwpKcWJeh9JBB/b/UBzHpp70TICDrCKPYDAB/y7px8QeSxDzbtutnY6tjil+ehSWhXwzf/Y9GHIKO+AFEJ0jDZMP0NtevjLu+Ku/ExsRID9WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpcmwLNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpcmwLNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD463C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764498173;
	bh=arTFnGZlLiLnw/Xa+pWPiS/vOzuJ+p8ci5//G6EovWU=;
	h=To:Subject:From:Date:From;
	b=KpcmwLNwGEXFyGi8TwX1izCsLLBi4CUFju5OrrZw8kEfQ337Mrqm4rvQFPV5NiYE+
	 i+B09OR8j2NnF/TIrUKZptr7FCEPBPxKULTzqWKlvojN+BluliRmxCELAggiydfZYA
	 0k60OKXraiRUgW0bX/LdNlaJ/6i50iEP/rGHi2pP3JjjsSaAVeXWnmdRcyraZh3ogt
	 m+iY3rkTmrw9FGeOV0rY+6fyzUxO8CTIiKy3AeQe062cY1N/71K04kY5OyqtrCyKcK
	 X3kFS6xRoxzh5oCkCXkQcGalmvbLa9yyzMpY/O0VdwwGXiln50X5bPt7VhgP1nTJ2h
	 G9HjUNtE/gHrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99907CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449817359.31510.6052827276059655280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6caa54ad3636f9d408f1c0b4ceaca3fc6597759d6b62b8199f137275b69f76ce
Date: Sun, 30 Nov 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764498173
