Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40984280037
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746510594; cv=none; b=k4Lrjzy8mlCVPHGelY2FfLX9dUySVsXWbB3bF2Pw30BBXooLBRW+nb48/HRjpidENX0vfrHTPlOH7SW70WU1eQXn5VAuBYf6rjIwDLbi1H3F0GlXJlyQqXKV1butxV9alob8gOMsjK19xnJ6joLdQnccG46OonubmOWLvNe9Ra4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746510594; c=relaxed/simple;
	bh=WuGyKkGPpc9vj4XzTAoC9uyHw9lsG3zBrXUxlaONiOY=;
	h=To:Subject:From:Message-Id:Date; b=VQSfkj2SryqBv0VfwkcZ7phE94IY1sFF67sqftaaM5tgJeHAcVgQbDVjEOgAxl3ePaNuKXk1CbXoMWDgzZj0HH8wXsYkn6IpraJLMo4SvHTyRrJ8YqYtMiuR1cmNwRkNHb+CeI+246e7ssVIVIAZB2or0XysbBNkGY6D66tViS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOFUUpmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOFUUpmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC585C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746510593;
	bh=WuGyKkGPpc9vj4XzTAoC9uyHw9lsG3zBrXUxlaONiOY=;
	h=To:Subject:From:Date:From;
	b=nOFUUpmWUAvm8qCzY5LggMymYU6lnk40DoXuXS9EnsvzwnMAd8k2AKYG64dx2I4s1
	 GM42doAm4E+Rz5DjrPZesNRWVQpqSd59vIFqI3T6ZwBcEcbGbYDFOI/b0DW/fGqhAR
	 NY5rQaaxMCbghysDJv/ZIklmepxetT0fdPwqDTLdh5LSbJ+uEXptjvVjxwhUWPAcDv
	 TevT8J6HnljRYwgUAPWL1Eb57kX6DHoVnGXFtdwpgacBHxmLicFGIg8ta+c7ooF2L6
	 oW1PBQQ6gyXfJni8VE+eBidNaQhs8LaFpM4VVfLYaQVrF2WcfrL8PY5yPYSiTJoQJD
	 bjJoTl6bPc86w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C413C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651059363.24964.7959209210028916488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2976aa5ba51ef91b49d09066ba4fd9f6f8915676b53b90e676b31173f425db62
Date: Tue, 06 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746510593
