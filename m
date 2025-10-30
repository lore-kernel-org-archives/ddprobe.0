Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087403678AD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761839394; cv=none; b=q1WAYdHpFeJxMeXH/9wRNdSmrXmaFrK0DfixCO3sokclpMjPSaNVrdIlplCjc/hROsY9SA29sEvOph2YKx97Cj2s3MUJweXBrtkX6LqcYuUImPMhyzYyjsqdQjY88Ir0Mf9b/M3DEL+AEfW8xim9TLSEjZ+AFfEPHgstzOv4TUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761839394; c=relaxed/simple;
	bh=p+/2SSyrIQX5N1YZI7mim+FiQdP1jLkqPqv/o13+Dwg=;
	h=To:Subject:From:Message-Id:Date; b=eWDLJ3UdjBz4U61V0TeZT/2543fQmhafcHGL/y4ZwwsiTlYFQAqEYLknJiEz+GRaQnqix9FTrQMIKPeHyE8XJEIjNr67ESV4vnHy0M6RXekrjBNoovCFIoVPH/+vKsC3bKzpN7+9D9JIYM5Om0f/B+rtFDBAqZv4aGSwpzcUaoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iun8grhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iun8grhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98B83C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761839393;
	bh=p+/2SSyrIQX5N1YZI7mim+FiQdP1jLkqPqv/o13+Dwg=;
	h=To:Subject:From:Date:From;
	b=Iun8grhDqsOKLvhV9Z/kaMt7i7ELMlUSwLJH8n0EuTXWY5AobOSnhqbrmSUeC7jww
	 immhayj2HXM2bG6qPq2GAZm3l/ph6TzymQg4skxYB2AzleJj1U1E7JNQXe2bOy4wZY
	 PMJaR4oR9Oz+N6N21pCqqmS+04vsNCpCwRs7V7x2u2P6USYHz423wckniaYpltYzGh
	 11FEc0giVcaAFoo3KDLi/+5/xbkPpX6yI1Est13IYrVOI797fdUMR9BEaiGbMZ9KS/
	 CTSPhLWRtiBevSt4Im/EmNY09mGzUF9PsiUvnP5tUq5mXha7FebXXhISsjjxey5ugm
	 yg4Cyoj8Mmxdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924FECCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183939359.12262.16871382751595553138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf35229bf60fa29f95ef5c339223ea15d7999f4c75ce1a0e25c59bf495149ac0
Date: Thu, 30 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761839393
