Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3987E23A6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754014794; cv=none; b=aCv3N5uoOpk8n0rzELQtNU/37/hlXIXhHMs3///D9x+QPFe93y0iX52cpeD5OmusQpLDsW9VSn25uIDrZAjHxGL5FCOkhQhcNaRebyxdI99p2WAlGpsDvRV2Fd6KTOEnvRQ+vYPXjqprAmwsOQt7stAxN3DZO/+zhkS6mRZ62Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754014794; c=relaxed/simple;
	bh=TuwJOEv4CUILc5D3sEJ5BNtBOVNEfVOMMfm62T9HgPA=;
	h=To:Subject:From:Message-Id:Date; b=lbpRFTHJZWazG0ZOE5kjeYPYHYzkSX38fKONzqqIS5TsoSuJznUaqB7lESXwzNDxlEJASgTpW/+qo8+5TvthB/0ioDsSmE2zeZA9MMv2oN3lqkqmqdRmn2L5z/850lTeOeAr6xICQ7DMs4fat2lsDke0fudC21MYFKO1sKQmKcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKuzwWwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKuzwWwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A71C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754014793;
	bh=TuwJOEv4CUILc5D3sEJ5BNtBOVNEfVOMMfm62T9HgPA=;
	h=To:Subject:From:Date:From;
	b=JKuzwWwWZZ2LMGislEzdQtdPlt827ih4GTSety+nnH78EDUTZPc+cjOtktQwBbjs3
	 NM5WFVfervV7JjSd3r6F81jfJUtxfwLtO0q/ShTmxRf0s/+qN0z3r+XtK2ERHKrxa/
	 F32Q8zfyugyP5NstQAJFNnRA8H/PfB22i03gAqVDEqtQu3HdTHctT0O7zwgj0hs625
	 VjU2rhH28cuvGCnjdixAvIC3BbZWjKRY/8GNZmOAo3owv7+WN4SOuqIdDlmMo8ROJG
	 xA6/bK3p4x1RPME7IZ0b2VRvgfoLfRYl6x3D00wAyUEkSbENUjwPK0Vn8QxArMEqzb
	 kgarkiQnndFWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB0C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401479358.26233.15182569746354313054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff599a39d97ddb6a5ba53a16d431a484097f186775999155c9dafb2b0b295ca
Date: Fri, 01 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754014793
