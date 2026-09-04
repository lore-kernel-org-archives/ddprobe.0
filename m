Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3775E47F2D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788522634; cv=none; b=rAuZZKMvh4rexrmzShRfiYvIOiGrfqfiOmUDVygd+ptE6cus6NQiBeq8N/ZhZlPZ1u/rOFFvQAODpA2+llYhirJ9YuRjaHK02fLLZgaGAUB4WjmCFdhHMLjakT3lxjqwZzLBq6T5ZiGlQYU9XnUedoiB9anb59ACLvmUaoT9gKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788522634; c=relaxed/simple;
	bh=XfooVLQ2wN9guxDJ0NGlIcU5BTYVaHy9/WE7SkSSgdQ=;
	h=To:Subject:From:Message-Id:Date; b=CQQROLLZh4NfM06rZmLm7ZQUhfMcvQObXWXAsOY4qJ5tep54lhaGv/D9Gcc86Cw1NbQt6RipXlzlM/6NrwFuXTsN0YnSpnmfl7CQ8fihJtsunHReyaJwxrOBnfmmn3wmmVqPhT7wx/eWfxq7tLeZRZ4JUqb8lLsWbZ9YIvTeAjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouySjngu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouySjngu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BFCC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788522633;
	bh=XfooVLQ2wN9guxDJ0NGlIcU5BTYVaHy9/WE7SkSSgdQ=;
	h=To:Subject:From:Date:From;
	b=ouySjnguQ9EaOs07qbgt4esIudhSDA66Q91pCbPghIQA60fdV76fVPPp+Q9nyaB+F
	 Jc7rZI6sWyDlWhxcFQCio4sY1KcpH56fm9/OiNxtO6UVQRgykTau8/5XcyjheQwvKg
	 SRL2RCr20OZTTO/uZFwBjbLMUb19svVgX9pA4VDhclFs3WCa7Dlrt9N04cePJTZIYA
	 9YiddAzsEdjSvt3GBNeqYO4keTfRb34SSORWafhXnaOHg00T7J4WLiMn2EV5Tpr7fX
	 DB0fWCrGCWmXtfmnAjkq+b7XPFBlJ2S/W5sITd1G6nqQeeKyI5P3zX4ZLrcSc+VvFM
	 TPXpbVsRefkBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFAEC624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852263369.19060.8264881374533968498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494099c233bb7b6cf75cb1b7b3d6fe4cd071f32d1c3b45b27dc164ae3f44e5ea
Date: Fri, 04 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788522633
