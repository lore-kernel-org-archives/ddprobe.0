Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D153154C08
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737906954; cv=none; b=QlwnRTCBDfIcTxVVlOU4mn8qUQmh0TFwI0GR52AfRvclPjGnw07nP4FvVjVEd56BlQJKMZ9uqIMjlXI7RFPpNO30L3ZlbnD58qqBAUcfHfGsPStKTWhilEwOBEunyqVVt1xXF9U84Hn7G3J7ihaQ3t96EUHO4BWOCYvevhkqVIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737906954; c=relaxed/simple;
	bh=8fTK4VMZtqjYQocEOjNlzArX3TBJpt8kB9XGyF4AcAk=;
	h=To:Subject:From:Message-Id:Date; b=I4vBBCrUmeQ5oaSpw+zLqVgNPP9/RJJ595SNeoFDK3Gej02AHCpDI27meuxH7Lr8yjtgo6+0vPDsAf6H1HASeTbYfc/hXKBRbTaSwzUdW2TFGawKjMXd3tT5PTjTVaLmRfCgEUJaIAGxkXTptt950MmkQmWR4RDHRTfHv53BkdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAWramvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAWramvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA92C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737906953;
	bh=8fTK4VMZtqjYQocEOjNlzArX3TBJpt8kB9XGyF4AcAk=;
	h=To:Subject:From:Date:From;
	b=XAWramvNZmGbnyvCKilV94y6u1GgLgkz8ATxkPm5mZYPc/SSdEZx4biR+8zHplFW1
	 O6tGRyH1jfaT4jHi10by9KEYcdCTe9K8VLGf0jIyBxLa8ghhVuaNDKxNdYWGoa3yoX
	 ikizpK9V7DdjO2tRqlA2Gfj48jBiOeZJmuNqwNu39a+VKFXZ+Y0A15ryPY1tlQmwqa
	 iHRiUDs17Y8WlI7xm/8hEe6zUT+RHk5sjWhf3MOVwzBTwdCPzygUOH2J4admiwPJJ4
	 5+THLgSLhGQ0CyauaN3PjpDe2GUR45MHtFbVIaXNO5EN3+gDcDUWrwZ+f1x5SpLgV2
	 8jkZpmHGWvrgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE1C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173790695359.9571.16118112894685460296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccc3c818de27939eb8231eef6655c4a7019e6f115e06b4ced2c8310569c3098
Date: Sun, 26 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737906953
