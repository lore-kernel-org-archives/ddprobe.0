Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C66211A01
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737545754; cv=none; b=o77TNtCwZdq9eK/cuPG02zQRSkYDuGarcdui+6eYbF+bNa9vPYsDP/GEstAFugzGrRGHqhF5FSmmZyHvPyooX17WDud+EcP0EE+vWfH7/6pFocLKPJJeVy+KJ18DrEeXko2JHzZWHaHghcL/AWj9z18eA/RUnKjScjI6l3mBis0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737545754; c=relaxed/simple;
	bh=zo0n4p5RZP1EfYlIl401RfQDF7VYp3cXROaTyFOesQs=;
	h=To:Subject:From:Message-Id:Date; b=jwZ7tlB5lE+g7w0HQCLQlQ8jqW3u+HSPQqBTnBHhPbPcBIrunlDK4WD1qVe7T2lsh5iDBpSKHCmCbjq6vLyFisP+1yFfD7MCeiQX3VCete6J7LzDpGzOChSfdh+Avp0LHIIiM7Rq2WOf6ZCwoupEm+KnEc5x6f4JwBefS+6VEzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/s3NEo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/s3NEo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DB7C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737545753;
	bh=zo0n4p5RZP1EfYlIl401RfQDF7VYp3cXROaTyFOesQs=;
	h=To:Subject:From:Date:From;
	b=I/s3NEo1kSoaANnNZbtOpHer4J92nsrSIEK6BVdNOMNglp0b+qG1EphXcnTRkvRAX
	 kQiFj3NErVJLMHZe5g99PwAA2KXem96g8HEEQCaNWVDy192YriBAcVj80kM27nbxxQ
	 /YfxkKCws007Hg8pUZJug9QIlcdHTT78x7zGHItPMFTg6ECH42he1xgl2asChqli9N
	 e0XqyX05bU/KNCDW2OekXi7oYnkwjVhX0s39b0PbfZZS/+YmY8vRbaKgSeDpokX6Kh
	 t3BZK04X67GjxPgPgrRRejEQjTye3MHo6qcs9Jv6nfAaSjGUZaWek6ntMN3kOSuZwa
	 HGCH/Y9WvLiIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981E6C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754575361.28693.10437640087880304733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ae561c3c1b04677651424dcd497e9d037768724465122ae43401abf675f7a2
Date: Wed, 22 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737545753
