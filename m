Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F222F2E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750624793; cv=none; b=d4ddEkYOR88NvW3ewIk9TTYULAeQ4M68DU7yhFPTZheWIfZ1xNEUKztdcHphmPKYLBQmAEHNoPxMpT+kHTAZlFfpq0nRa/qxUCScVS4ltn+tI63PCKgW69UHr+L0fI8JaECNXkuVK2U5vyjLELz1Hk5f9/iakc1WDuVVw96ZyQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750624793; c=relaxed/simple;
	bh=nsgOaYV93o9v4VJkq44VggaDdl8tQ9GephQTiI+XddQ=;
	h=To:Subject:From:Message-Id:Date; b=j9P87Qw/9RZkRd49q7I+JRT6WRA6UC4oCLnq4RLZPBuWno+K2ZxuT8x4pflJ46wmysYPMbGxJhXN37Oj8XSI4riJzr/mFq3Y7MN3ZNm3PMoKTI029TkpXEdmWfYoB3CNIADNosorgrLSivpYEwpXRa+8A6WfHnATngewT2yaH9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NK9LBrXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NK9LBrXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A667BC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750624793;
	bh=nsgOaYV93o9v4VJkq44VggaDdl8tQ9GephQTiI+XddQ=;
	h=To:Subject:From:Date:From;
	b=NK9LBrXiwohHuAMH8QU8J189jd31zv6zarOFrEuwX//R118Ab2SR841ysWniFsAi5
	 5Q2awVbb7jEgEBmLzRuFJaIcqlv37cPsYZPWdv/nr1qMNUORSiLS6oJZtYihOrC8Pt
	 USZDBNqwrdjLb7ekCcr/Qkc6llT9okXNzh9TkeKMaRDppgGj41WBFAVBwTxt6Ip5Wi
	 lDoBp2ETtvMT3e3RXZkDYtsklG8ZjsDLJDssFoHgSB6uK3N48ixm2UUOBwNQ9s83iq
	 mw9jcVLRcDH3ma4dJvYF2nNqmwqlWNREPPT96BhfSfaq64cSJgDLykynzLt2D6MiMU
	 6pDr4OCWUi4MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977C3C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062479358.17766.14449028585279326232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c950e1b5530b1eac15015571ea2d601c3fbd2a3948a2936e75cc007d839ae24
Date: Sun, 22 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750624793
