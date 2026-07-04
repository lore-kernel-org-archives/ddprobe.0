Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6241F2B88
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783176514; cv=none; b=R3DlzUxCj26OJlJnmbpQTRLjS18rwV3tTn5sn8746cd2fG68tP6U5LKRBK+gesSuVeCzlkE/9CL8lgrbc3AT1//srE/hpxFzyH1cuANNO1yQ+D3UVaorFPQYtpWrWd7hCFhEKkuE3ErP1ftfu4X/rgXOzp7fm/X9OlzLmhGg0PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783176514; c=relaxed/simple;
	bh=3mwGN6+RDll0NxZ2tTtYaMd8ZScKOsSGedLSILCWNFs=;
	h=To:Subject:From:Message-Id:Date; b=hTcsSzMqUK4kzB7xten0nUFK5XhslUGHZb0iYL/cSW7kqyQQT5tqDZAIUjIdtndUVcHCTaYkqKfUy3MYA3al9Wc3PlEYHVpAU3DoX5NRT/F0dFYAT5SPFZcXsOGHKxCXP/4UTn0hLovWg+Wp+0zJrGBfihJ6/H2xX15KSe0HZcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGlUkPwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGlUkPwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5FCC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783176513;
	bh=3mwGN6+RDll0NxZ2tTtYaMd8ZScKOsSGedLSILCWNFs=;
	h=To:Subject:From:Date:From;
	b=mGlUkPwBCklN62JLWVK0fmgSC6uw7wt13kk0Vz/NF2E9dcW37ISQXjf0YQRaSz5uQ
	 YHcg+9F8sYIiRCkB0P4xX3n2LsEdE8BohzvACTAoIlX1+ltCR0YO6XG8J1l7eLqpou
	 sSknsu8YT4tQL1uQTslKUT1GjnvsYRvHhtat3wmce+NDrPzPlnch8XEaSbSLvTqdLx
	 rKVHCXmnzKifJHGosty69uI/4GH9yLfbk+m5oF5xGSTenH7DCmvQA8PyUWuFaqWUmr
	 bDwcR9ALOu5dttW6fsBCHagCGxlTDJJX/RenfyDYrJ0/rPajOw5sD5zmvvLrbGrJiu
	 7AnEGkWIB7p9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B7EC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317651368.19392.13895534994412657130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 969cd0c7cb1edbea40f5b9f3ff7abe4e9ee6eb3b38ff9446fef81fd62874c9e1
Date: Sat, 04 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783176513
