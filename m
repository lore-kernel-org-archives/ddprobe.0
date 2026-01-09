Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC85278E47
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767980034; cv=none; b=WFFP55S1Y3IkYtoK2cKUTNOS0PAFEUnuBoa5X4pWQHUxaoGjHFS3HR9wzH8x42Y0ofPhh2zoreVadoY6Xnn4QaXQnLQ0E373zEf0vpK1vG1LgfL4ELiTn+B7FIR2Qo7tsN+94jOaD50/10VBTF9OYQ6iBGcS44yYMNZAD7ChrLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767980034; c=relaxed/simple;
	bh=3JuYwJkoqZcjGA2x4ZnYCfII7T8u7GpNseXyqYq5tcE=;
	h=To:Subject:From:Message-Id:Date; b=HbGAoUqkuUDfNcdfGiE5WfnbqIQpBM0Pjqa+G0uYV0jKbAAIlZYKgBsez25oK3/HAVN6UkTigOdEr4n2Gx1lSce8dhXGCagmq9zHPH3Z2gpzw2Cj5tWoVd1tViYuPhHKOIwew4D5WnJL1hw50QzoQYffAy33tMi122sv6oHVkeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEG6oE44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEG6oE44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B97C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767980033;
	bh=3JuYwJkoqZcjGA2x4ZnYCfII7T8u7GpNseXyqYq5tcE=;
	h=To:Subject:From:Date:From;
	b=jEG6oE44kpeLZYAjLTYcIkpug4AZSGf7G05SWrMjlXrA/vZLnNnWCN1WFZcb81qkb
	 1lQEJEGsJ6s47wJe7wyZ4amR/W2UUu4G8zmBx2y+vgaPliiuF+womowZq+JXqLSMk7
	 5v5MCKm6Lu2bj9jxpi+khofHjaA1mSi7B9PYPLf3rvd9shEM6NLoHf8iitvVTFYhJW
	 ygmKGdyfPU9Vl9j7P9uijTS1F7EhImLotJ5jFK1SNweUo63KvTciMAvB+oUjVX1QCH
	 onWubu33z/5jaKxoHX7VTTYIy66CJG0ag2MB2zUlu94e7xlfSiC1fkk8DSrVcu09w7
	 j4qTQMcOX3zrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94860D26D6F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798003358.11619.3682202021880137144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fae82637a6925285ba702a7b561fcbfdbe449ada0cd39748316139450e5052
Date: Fri, 09 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767980033
