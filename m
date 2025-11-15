Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4EFEAE7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763177994; cv=none; b=VJUXrG4b9c88QP0vxi/fIdTmRDfqK9S7w0CI9E7PIt8NJD+rHTazOL7g1t1vZazp1c3TAJDRYoYIaEM5OOQfRvfbjBviR1SQ/lrVnyYnq6QsH798/6wW7mFbL5AEjHqQDJGHwZGOdXzb7/XrPyw1B8i3kKUTL2+d2SdgFJZZbPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763177994; c=relaxed/simple;
	bh=v480g0WaYq/fJLcn8WDqxKtUqov4iCkyQ1cSMisLNIg=;
	h=To:Subject:From:Message-Id:Date; b=FU+ixsch7RXrndgYDE3BsEmXXNJAzHgyQ2b9Dng4Q3rHfdi2vVgELG2EnJvoATmUoUzCjwyPbQ8IhoTZsOEoMeuRDc6xcdlot6Q2N140FhDqBwgDKTBeh2why0KutcLkfJSuyhBS6lUhOyLs0S7jur+7scXFTiD+c4PN8h1jsKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmOQ/JOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmOQ/JOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4626C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763177993;
	bh=v480g0WaYq/fJLcn8WDqxKtUqov4iCkyQ1cSMisLNIg=;
	h=To:Subject:From:Date:From;
	b=EmOQ/JOJazSBs0wV5BkFLa85rs4olpyjAh8HZWOiRfRouF1boNLt8OUNwQU6kx88t
	 Sl0D1OyYJ/91gfLhZAqmFI+Zg0GUBTNO/bQ5+bepIiHrHRpS2nDufyNOnqNin+YPe3
	 q0hdtm+X5JaCAUYEehLy+EDoyDq1rNSNygppoor5TX4o/ekgpmlomATwaX+nXNPhP3
	 gKqKtZBk0NfCoETE8Zpvegw5Kp8bYPw22iiHxGqCyCNjL1M3SzHumZlF2azydruKU1
	 9KeEgn+xCp5NgZ5vl1MlqCoAgeBuGAaO0TfL3WFEDo8IgNVjLvLeY/lkJLo97yiHJg
	 dbNHpj4u41XHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94111CD4F48
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317799358.8108.17990904858384403879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0718087cc1eb334cd8c281e1e2fc4acb411175369d4c379080e8d250279bea
Date: Sat, 15 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763177993
