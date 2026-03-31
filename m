Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186D13BF67D
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774944894; cv=none; b=DML4gTb28hq9qvd2sAKkKY22PCHtb9R63hyTrIPQpobvSPu7J3eTtGBQrva1eghmoFMNiGt4R3dKWiZ9vlIn+PUt1a/mlr3hxWvoZnWaD1o+NbbrOA0A6kogAyoPLO7DuqW0aJzaBDyzafQIPT41KuW2V+mYPIPD3oNox3KoUfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774944894; c=relaxed/simple;
	bh=3ZVtEC1BwYSXw+TO/vA6e54SLAXb8ibxYFj12+PtcNo=;
	h=To:Subject:From:Message-Id:Date; b=EH3n6IKP2Vv/yOrcyhsmvsxGVfqxcfLN0M/0oV0q3GLu602M+l/B5g05MsbVB/pB3loRqWTDTIGoQgd857H4CCrbrwXVxW4zb4AKCrbX45a1fyA+K+IjJ+lomux7fvP2cJePoMkz7oL6IfUfzAxJtHTP0bZsTWCmKOxg92m5HR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6hMBUjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6hMBUjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E2C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774944893;
	bh=3ZVtEC1BwYSXw+TO/vA6e54SLAXb8ibxYFj12+PtcNo=;
	h=To:Subject:From:Date:From;
	b=j6hMBUjqDkEwmt0IFXzx3zUmQaF6Oe46nST0hAz8KIQtluupLdvykVvz6sej6D5Ax
	 R6JIk75FVEy4vEEtWQv9v1fH8vnrwAQhMf0Trqc9LebwDqOHZKsXb1RM+6MNq1WlDs
	 /Dk15BeVT/fmZda+JvqUlqgqbKwHLmHAcCOsu2OE+XEmD4m4zKvw+eM9tuY3WaqRUF
	 ZqdTWWtrNbr+8pB53LB573b7EspgE0H1m/cl86gV91MGkLrygNGZJE/HZGzkZKp52F
	 G7INjLP2uBC5w5bcBzYnabdvNOGgdVw3dzeMZ7opzlJSrosJfrpTik4VmHCYttDvIc
	 FLcwCrtaCXWSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91719FF60E1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494489358.1824.6922088548681999990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14772644815d6040f7cfb2b7e29f5f76957bbf3936d189da4148e662a2a01ed3
Date: Tue, 31 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774944893
