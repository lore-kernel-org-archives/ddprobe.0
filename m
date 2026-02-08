Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C4F346780
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770560033; cv=none; b=MashCgKo706yuIHHwOLy+mefCmLT6xx8lJHw6oOc2RnW3vyrhA9KA9TsCb7X2m2dgDewFXHBJfu62IiIFfEzDj+XyQwN8+gq+fGFiC8pRI1XMzQXy1ZwxUSmI5bGhW2e8OJDDKdQJPvIgjVvUz9w6VOaLWGHVB+pDDlRINWadgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770560033; c=relaxed/simple;
	bh=zV6wjo2t8bAG8c3shRPRtMW7K0GYti/M2WAVd6/8QqI=;
	h=To:Subject:From:Message-Id:Date; b=jQ9dQO5S+nhgE0+TKTNLPEBiryZ6AkdVJOmN3LBvUWATsoKhzlRx8X5ceRz+1mkNcLa6GYZsjmesgOGH+QGKOjmiwra+NfmuY5sHVrtroLYH9TWa4fVKHQfZup4D0DACjCHnlGr82knKwUJZPxTnT3qWkS/7jyt2PhHjGM+2VgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWQdzDRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWQdzDRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7940C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770560033;
	bh=zV6wjo2t8bAG8c3shRPRtMW7K0GYti/M2WAVd6/8QqI=;
	h=To:Subject:From:Date:From;
	b=YWQdzDRaf+BoJ7U0Qyj1w34N2//dvDCSFXmjqAQRbrDLD6QIo4BnT0NsmY1STnQ+b
	 eVaeC/OBCPBDnMdRxWxtdfmv469KPc12443k6XbXSXObvXlF4aaMg246QAY4vkr5+Q
	 fq4sOgaHkS7r9ymq4GT64CTOzLpPHjPNYr515GVd7wDDdqMk/zNUAcf19qiBw8s4rx
	 3YXwCd5VmtULhYA0shQT4myQo23CCPaOiJo26WmWuqpZXwewQLEKB3a9qEvVloZl89
	 JV76W4CECM7SeqAQUG2ZIsF7tkadlQz+WVbuPFwL5/Eq0wWpF187Ty73+FrhVBQ8Wy
	 wcGxiwpqF+tqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D7EEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056003358.24813.3003542301124068666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d6aeef1bdde90a019fdf2e93c7b51686b78c074e38125c86f5a1ff9f1e9b20
Date: Sun, 08 Feb 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770560033
