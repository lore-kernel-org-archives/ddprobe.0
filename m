Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AB222DFB8
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766796834; cv=none; b=TIKZ22BPUnGR2cRAtpEEJQaTOmcXeT7FPKgJK14csoEe+gSwVmdNMsBhe7RBzBP3Yec9ILBOnZ2NSAfqkyEdsl6+9FaN8pKZeVJcx9F/V7UbMFq6MlWKWlfTKgcvXMLwYC79lhVi8F4qIOHodbwKEjl9bvJr6yUenLRMyhainmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766796834; c=relaxed/simple;
	bh=SvdA4m92aQutY64F4gjYQTZfjfDxDvoDZeCcGXmoEtE=;
	h=To:Subject:From:Message-Id:Date; b=p4XrFD3Gy6A/Y5ajuh5qPpcqt7ku+PC2BnjFKk6fvfX/gBnYOX0Cd/d5xFRV95h66so3ZftHiy+sHcgQh2zrj1D2mrUbk9OP4Ho0pJlEIz3HYWl+NKFHNFkc36xH5O4irrnrRSS3vOnY7fJE9Q0/lAwsajG6xrdWZT5Y0YewjFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMR2j1AJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMR2j1AJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73D5C2BC86
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766796833;
	bh=SvdA4m92aQutY64F4gjYQTZfjfDxDvoDZeCcGXmoEtE=;
	h=To:Subject:From:Date:From;
	b=DMR2j1AJCO6gMp71hyFJ5Ol/PZdoYcazRa+4F2rqORrzTDtM840RPSLexAB6Rcvc5
	 A0ramSDRq5cT6otJhBdmeqZo22ZmNR33gS+BBuPd5eQcPRn7FhM7rUFVNxUUO4qKcz
	 INtugpcYb61agUeLKpd02QVBorvP6Pf9WO1YYPAFN1q5cEcYHNN0oXAUt6RNqlYhS3
	 4USo0bZIz1LjCjlcI85GbpPMAKoc+ZauwkK06khPSE0s8uSoo+arjgrIotb+4r3yRD
	 UDhKdfwVCA5IOVIh58fsRTq9qDVxSqe0gfRAeD2PLHfeyaAmgivf0mOD5tRsBnNvVn
	 hqOpYpydDo8LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D4EE8FDBE
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679683360.10398.13265196680934683165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e101a33f479ae3487534ac31fe59ef347a87737734630443710d9b701cf34f
Date: Sat, 27 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766796833
