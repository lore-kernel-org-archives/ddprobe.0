Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B731CD15
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760288394; cv=none; b=FH85lfxXa999919MaS0kKW/M0VSRa9WJlb7fhJ7w/7iTn0lFeDSa3TdvGaPQKPIhSw5wP2ndb6gTxc240vrTIcK/GdHQ72h45+KFa9KxJjjLD2tidG3xhsKysswQrffgZXaPEXhTkfkonODJi+nhW+rG+zwVNaSN1EIEseEurHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760288394; c=relaxed/simple;
	bh=sIIS+gGo5hHIEO4c5BuqFXPgWxarhcRABpU4s9U8wGQ=;
	h=To:Subject:From:Message-Id:Date; b=piSb8oKYCD6pmiUOUZnSTK/qJyidEDJB44WBsitiCpJaY31b2KFfySAGvkXrwWNPreQNDXsQWfxCFU5sMeDTXrlToagbZLfr03bo86y9COM3SavZ07Nj3ws0j6Z65J/KvyG81vgyQwp01MYg5woDOeJrgx5eHRck/VMBVggVNRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYqZBhrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYqZBhrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1548C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760288393;
	bh=sIIS+gGo5hHIEO4c5BuqFXPgWxarhcRABpU4s9U8wGQ=;
	h=To:Subject:From:Date:From;
	b=rYqZBhrGlpxukUqvFvGtrXcY9Uid0MHEX7gffUS39JyFlrwmjITZCA0oMxJdvXtKz
	 Y0A+Q5GjKNkJeGv2JcoHA2HPw7UwRlQrhhUsjl5R49XNFikWqmFIQ3kKjeuEbYYEhB
	 3+n8/fRJpb3awUny8h7YfpNzXPkdELxJFzstsXnk9Jw5NXHD+wNl4tqVw0mO2a+nC1
	 1/wzHo2+xR8JkA6YWZGxVE1vrgUSeVJzQNcrZW+YLYN2YRgeJ3X5vQ6gBANHKXxCIU
	 mffIhXx1HRP/tdTF1K2OyCgBYjOOPgPE2IXBUzE6liR4ufR9c5ift3oWVlIq9oxqgs
	 mZfz/2YqgUI3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F268CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028839357.12836.12967479996457439699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3a1a39da8ac088f4be152510ae38f13874d0f116ecdc132e8ceb60fbdff04d
Date: Sun, 12 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760288393
