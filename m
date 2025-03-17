Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3401A11185
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742206795; cv=none; b=CCkYOMEavFdAeJ1FHCmd3rFjXEu8Vb8DW+yRZHU4HGnHQM5ztAmSC6ib3Pfu6O8bEbyesV8+eRapXj3Np3T/QnFK9jvSsXUpO8FbXlLyetLE/fxgMb0tIOTx63wgyISTZR+a2TPoxzqL7+3ukqM9bCSKY70i+3dWDeLD07z+fHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742206795; c=relaxed/simple;
	bh=/5UL4IldghkZzeyPqwCicHcl+CnepSLeAyGY4nsRYnI=;
	h=To:Subject:From:Message-Id:Date; b=keqZhtRpDDLfYtjfvT8gXwhnUhe3VriMOeY+pWwmbHv86JWvCWd9YTpf1cOFfkf3yW91teJ51ZbPtMXQnQn7xs8pWzkPIXlK0BMJRB548n3lr517A+lfsCo75xScUwDzXSg0Ppuk1rznHQw30YUhA1xiGPgc84Ok9/4pH8Rb/Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JARZP8f/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JARZP8f/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82C8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742206793;
	bh=/5UL4IldghkZzeyPqwCicHcl+CnepSLeAyGY4nsRYnI=;
	h=To:Subject:From:Date:From;
	b=JARZP8f/hUysjPRqwhJv+LMLIV+KOr+Mvh6SGF/oQHKwr4saQfRBdhbER7rJqgmpk
	 80Mjr1dXVP0U0KX1VAPdDgEw4tkYyQBxEZvgWEqYTvWCe+9FgSMB/WaLmeczqiI4+k
	 wVEnqFH5FNHpKhyAK9CHenRDCoWRrSATUSxJaM/TJMDBNrEf1xhjNix2g5ms346koG
	 aNl6GJAfubux3Nw++wJuvry5lRp0PS2ir3DJQ3sCU1SlpuYVgvHg1XQq85Iew/OFPq
	 JzLsop/lOQnLD6iFiqzlAeiN1J9m9F28WCWI4lx0AYkxDF0nMQAIK5Ex5MK0xE8xUM
	 UXVtqtipP+awQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9479CC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174220679358.14597.7605633723810802774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4673a10a26c9fcc797540194999f7d176632720a5bae96f99d39a223641d30
Date: Mon, 17 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742206793
