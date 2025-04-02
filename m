Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423E82E3385
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743560394; cv=none; b=Nc7v5V2SbzK9Y2E76qgNithd3zAYM1T7sEWfEfeacDraKQ24lg55F1Hon7D9r9TpYNGPdNZPa9KaE99xhzcnct9ZCjh6yhCIsTCs/tLXjaz0OGK6elzNOXrgV6/IwBbGL6gtuSccLGmdOfVYGFqpLiZu8DXw9gBUxKQ//QY9bGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743560394; c=relaxed/simple;
	bh=wcnW+UzAxbdR2b9i82PfHPvjlWSOFPvnoTJYJwlwvrA=;
	h=To:Subject:From:Message-Id:Date; b=gaD8ISTY2vZNQe910VOSj++D7wIIRr9j5d1V3SXwLylKh1fagwnL42QxlR7fzVw4ZD0FbzUeKud0XYZciBAQBqzauyB8wL4nS//sxDbPYLmc+mwThZ7KIuYCRi73lwStK4pz4g9DuDpXc14S6SXHctp7uyajM+SEz8N+4mb1Xwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjjYkd6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjjYkd6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEDCC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743560393;
	bh=wcnW+UzAxbdR2b9i82PfHPvjlWSOFPvnoTJYJwlwvrA=;
	h=To:Subject:From:Date:From;
	b=jjjYkd6FojUuNiKzd+rqgCt0CjAuKO6NRccWFTSTsErEJs0B9arw8kU6v0163eEdy
	 2dyEkqDR6DlNxdkE9XH905C53ms1hrevn2SeiBbuox0hdMvoFQLFrUHwaLNUT+sztl
	 YDxaoSGIkMdJJeSVzryi+UZfgsONuGm0KhQZvLH2OQAT0MyMZQK3DVpIGUg1P17Woy
	 5ldXW4c5tPPbNIvUu2n6GanR9mqiJR2OAEEr8xoGPfiWf0TmQEyTOVXOjTfvAwpxQW
	 5mlIlvwjBI1YWlmNj6jT8adzHIFAeWXb2Ij0oLgOWi9lAzTpm+EmdtPiv2WUjAq4XV
	 lDo9aeMF2Jhig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95297C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356039360.5920.16126243185006438835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a1b7ec68e4bb9016abcfa752dbef20d1ad743955f89cd41d28572efccfd06a
Date: Wed, 02 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743560393
