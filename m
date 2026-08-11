Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4548633939F
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786410034; cv=none; b=OD3ryhC5MO5+2IkLCJAu08JWmNhQNOjtY923rKJ1FpNeHd5Q32AiNwERfMS+eSoWkVN/dQFR/xsJsH1r6PzeQroKpqrteLoBRhpCeMrIkB/XpbkMQSnp4iJY0HGtV7swxAKfkIqY/Ljgf+Z+9Xbcx+fs8SrV8UvsDGD0DG/cM30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786410034; c=relaxed/simple;
	bh=/lvnJ6BoBn8+l3fOCTOgCMZLnmtfPJLsxgYoP6Hqk7g=;
	h=To:Subject:From:Message-Id:Date; b=IWdnjQy+vyILH1x2uE+xAundAyTERTavj6nWk987F/sibr9ea1G4enDcK8J7SuiCC1/e3b90Pp53E6PyZRvzwDRYwLPiRkXx2nSQy1tX/TLC+XgI4Fi+0L8a+KeEFUU7pOSItvlkVijlkmvXEzpX+qhj6UWDH3yovChun6qEgd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MliEoZ+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MliEoZ+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15F8C19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786410033;
	bh=/lvnJ6BoBn8+l3fOCTOgCMZLnmtfPJLsxgYoP6Hqk7g=;
	h=To:Subject:From:Date:From;
	b=MliEoZ+erYVFPH89/moPvTY/c0hrLulSeUwG83pLMEPia1d3CelRXTsuMIbd0tC2L
	 qujpdYzSDVoUhUxsrdJWO306MaRy1sU703p1Es6CW7BspznamTrdkyk1LWW42Qfaks
	 MLO6oqHfMsT5GCO1dV68R6/yBmjQRoneUYSjv+SVw4vnuc1X+MjJltnZ7XdVUdNROu
	 BtwwhuMHQIFsL44d6WyHXcgfG1UX0vCzIBgrvbsrizMfmEr/07ebVljRH5D+kK1+U2
	 QaCAu7NUmJ9DG3GFF1cGR28SKzAP/mlc++DXQ4VWpooKY9tdYInSKLdDeQKrlWbUir
	 f2gQ0bkHl081Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDA8C5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641003368.4413.185394658486508462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9308aa1b3658764fb94834e66d0b5bbf55c6c461c2da6c0884550467a85e9088
Date: Tue, 11 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786410033
