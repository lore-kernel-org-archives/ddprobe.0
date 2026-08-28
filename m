Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7F83B9DAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787941234; cv=none; b=bBrELNwhIdOnr8zva8P+cQvyG7AJVcKKpruwz6WyNfowr/LOQ4KGy5/zPSx0SCzQ0S/cAJi69VhssaSC917GRWRzWh4SAIrmVoGXjptduUbMdjur3SUmm78ohNE5VSV7P05mIiQ3WgfHC+fi9VMS5tuvJi2JM7uG3NxYOF4UDRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787941234; c=relaxed/simple;
	bh=op7SXo8ZPalooCcXNWqIxaWfWotzy0rQQUKltS9MxY0=;
	h=To:Subject:From:Message-Id:Date; b=EkqjhDgJfZmk0od4jImRe86ybnAqH7RKsLWCWHDD/+EO+MYDc/SgO7V6RiHDx4NG0nIsM97Xcnv1asbo8FyC/wajo1oLrEtgTNt92qrmhVuLapBADuBQvBno2j/zIXHO8vyA4fgrIj6tuU/ulbZyLxV33Q6pE9soajrBrdpdP3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGqN5HLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGqN5HLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED7DC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787941233;
	bh=op7SXo8ZPalooCcXNWqIxaWfWotzy0rQQUKltS9MxY0=;
	h=To:Subject:From:Date:From;
	b=QGqN5HLKf7dogTNHTV33BWzbw2uAmLhc2kNElqL/AKmsUd2MzaNWavEQfA+cIJdS4
	 z0XfnHCIx/9UKTXJudKkWSgpGzPbM7qc/rVyc8pLgZYyvpyWqfMYKQEIKMqYSrHkps
	 O/kY+d+Avo6vYq0ieeicqSeAkbRudnD2IUN0Ww2FNq+YHlij7MrACCWW+QVYfJvgWx
	 /K46oY6wt5s7lqN0ZujMKXbkbPRB/GrDKNWR+kslnKwnbmO+snOmNEoOQhJQiEQW3O
	 q/xO9Ckp0RFQKhOveYgtKkFuatbN1kI2cpK/dQoL/SF6hWp5+nYcESFFqgD/H87Y3u
	 UT57mf66g2FhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2EEC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794123370.32167.11383903510474733846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28097b4cb619d5e67f802fda2801108efe8809cae7f12c8a8c40fbc907368ba9
Date: Fri, 28 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787941233
