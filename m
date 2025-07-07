Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C08433086
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751921994; cv=none; b=D+LIxOQyVqDeHBLNNryJjtiHvYSB8g8eoYlID4BZ7HRODo4DP419u+bRQ+9FBXCOQ4JfF0sPBs4peXqfuopOLnxhq8PdmgPNIfPc5okDzx/kAs05QJASvkPEN0cBxPB4PJsdOkExomyWnkeQr42i3IP7jMcWL7H94pk1PQw3wbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751921994; c=relaxed/simple;
	bh=rs1WD6CEa717KIME1fU2//g4TSc9BGLB3uDYwRayCNk=;
	h=To:Subject:From:Message-Id:Date; b=MPYrSvLawyV6PDYYQ3REexhbSxadDdDoSC13md1dboadr2Z4EivhFCYAr/LNKoUkdODSwsBj9OYlmxYoz6hzmQPXz9xvsPlG1Nt74KceivGeUTK7YT84G0lig49LmUxnPqL8DW21VH8i24nEWMofvH9sdt8me2CnOxtni0HzpzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJLDUNTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJLDUNTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A186FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751921993;
	bh=rs1WD6CEa717KIME1fU2//g4TSc9BGLB3uDYwRayCNk=;
	h=To:Subject:From:Date:From;
	b=MJLDUNTFtumnqS42JIPaIACi9klpqABxcVF04nlxvjhsleHWsbIeMh/wJaCdZNxiG
	 jPFhsyoiWwYPDOb6TWR34kmzpNH9gP8c3W0UhG7k+XzwREsDP/8uChN5BLKlABPnj/
	 Syjo+8KSD8kNTcTWR/srKn5L/hZx330IyUIpJYJNP4E+63Qph8N+daJLoZN/TjHKhm
	 reWzqKRfXfIcjqepmdAFcWQJOA0ygjRsXMs1CpA3ukzP8dv+m9rlh/rE7jQktUNJ0H
	 ETOxMnPp+Fe5qWleJV3KvvPl8dwNoDO17I+UUJ3JHrGNOqTl21oPlUnmIerA19rk3d
	 ETrNsfbDFp0kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45CC71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192199357.31078.9594570939637990052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3aea513cfba9ac5cb61889db618a6220ebd848520166ce2227636f79f2d2af
Date: Mon, 07 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751921993
