Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664773BED06
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781886394; cv=none; b=skKEHPDGuytwfz04JiNivStetTDK9ziWRpE8jFPssgSCZL98ywxu9t6kiKCtYxrK30EOWpTiIyMtxzVXS1uo7xFmSsC7LA4/xtWndXIoclyz7kqCQUuujQLhNXXvSvxrXajlIyNezbCgqq3tJ8cSPnwK+3Cb4I1Q5EGR1nO5KSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781886394; c=relaxed/simple;
	bh=qZcvmLCisJEuJUekpfNwZLd0xPflsRHqzLQgsJIZTqI=;
	h=To:Subject:From:Message-Id:Date; b=e3JIVxZPMEGBju4PP9Ya9UU51C7YWWfDGXI9aD9n4LJcrpg1ohvddft0ZASnDRMhALnY9sCV4l1byflEiwOk7Mlv5L8xaZ/ft9zJceMKmjYBfzZ49ex+BXmRktEimpR6/Ro1t8uB0iw1SXD3FjHEeF7ghsU1AdNWOEA4LuwjtuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRL5IhIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRL5IhIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90B7C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781886393;
	bh=qZcvmLCisJEuJUekpfNwZLd0xPflsRHqzLQgsJIZTqI=;
	h=To:Subject:From:Date:From;
	b=oRL5IhIGBWRiPzKTcNcF8RMIMPrL9mlAv0LR7a1FfG2Re7p/5QtIj85UPEycCH/dQ
	 +XQFTnaaK6+HpWHYQtQ9XjaYNp+5XuEsIo6pWSiudDsHnAjTpQg5n5ewCjmIgI7tAy
	 GfLcor0EWq9khKgUVsLI+HghEdjgIuF6llM16xqJd57piLVcv4XxmqOF2HiGGT2Gwy
	 F082QAJKgRt7CQIrwa0QvfLcPPi+73zoRFNKhsyQ6yrdMmDDpgm+prJoE8OJDM9eyJ
	 n08m2KGfmFAtijWlZLPpkyWH/c6JZnf1TwCPcR6OK/tFrUMc/niMMNHn2IkW2ZrOiK
	 3klJY67/jQnWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2FECD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188639371.9694.9057831555895955413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e4deac008a7166611ad1e38e6119886de4380dd7d5dad33ddbd81b67ac3f32e
Date: Fri, 19 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781886393
