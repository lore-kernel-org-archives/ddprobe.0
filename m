Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5E8271475
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763879514; cv=none; b=B18ygpwJjU+quQC7SP2vlfBYJUXmKRvIOUI/3EoH7ozYD0BrpXvBgwCNKA5+TrlU5oP2L2szNulES6t6KZzDE8CA31RxeTxjk2sPhRY6hQpyu1iV2LfF31NqldyoK4VCIrsW3WI7suGluPYXYcuITh/G4NdBU6izaTn9Eyvd8SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763879514; c=relaxed/simple;
	bh=SmU85vaBd3tl5QtDeSqFWNSRS5XZWBywd0/jbJxmi8w=;
	h=To:Subject:From:Message-Id:Date; b=UGS5LheJQ0YZfO6kxx65cdBYM7rPuPST2Hi0LBsUiE7YPvMYfNWwRuWB3mQiTMKfsuGKmKLRI59WTqcphU6TjXyJvV56iaQxOoJoZzMurZ65Sp4RtgThWf0Xp9iWs5eoraO51PKGEhInWUkOyz5/HJ9IAPeiVNrmQoUJCPdT9cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6bKTDfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6bKTDfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28E7C116D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763879513;
	bh=SmU85vaBd3tl5QtDeSqFWNSRS5XZWBywd0/jbJxmi8w=;
	h=To:Subject:From:Date:From;
	b=A6bKTDfjWRHuQBk2RBYkMwlmhyZexD/O4Xa5DdrSE5zizakq1Pip2ltfz6rkjQiTa
	 la3utjRaejs8vVMvzm23P3TdXawzw+5lf6uE6nndCivfXX9jJ22uF0FL3EW9cgufCg
	 O4AS7TI2SI+d1fUYgG1BrDFbbpKuufn8Syho19zF1KlnulX0cntPt1HmO5htHRJGas
	 YuSSs6ph8zPYQtm06EZlA1SR/DGRmYgRiYWEEX8yZi51KxEi3EmP4vnYZnV+UkES1H
	 DVAV7ecjj086OSo23P6eHfNO/cS4I/NiixR9IaGZ23O3cQ4VbDJyoOOsqrYsDpIvtR
	 wAS8j/M+HdxaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9044BCFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387951358.8143.17601544830720120726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c973a21c0fe9fee15776d9bc2b0b002b30d3eeabe0abbaf67389a3b344a48c
Date: Sun, 23 Nov 2025 06:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763879513
