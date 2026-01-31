Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028032580F2
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769851434; cv=none; b=mAXkmlSfyB+C6nug0cydABQzCdWC143wJsMUmT926MqK65a4xQyOLUOPaW3pihpUUBsocp81czsPUhaoCKQ7Uq6taRYTtVBJgZDdcWp1OrIBkxKV3iIu8cELtpJH/27xAf/9UUx6oExn+B0eEki8FmclymJoA1YoZXwr7oxLtLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769851434; c=relaxed/simple;
	bh=FVk9a0wO9W1NjHvlCzh2GpY3IWQc8nfRq9xy5fGEsUg=;
	h=To:Subject:From:Message-Id:Date; b=aFs8ZUwl6sOI6o0bPv+6iQdFLwH2RZiuMxBaz2cAsOcvoe4oiZutMc0v2+JnO7jyo/TL9gHXjqG2pzq+g0hgyw1q9CiZr0w4WuCSjP0TsYXu7zA4FR72cL5wuJyCDOt1E9gZMH7qzEkXVF8ppMmQeuB+liz81owSt8I1GhVeqJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpuXjnYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpuXjnYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00B4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769851433;
	bh=FVk9a0wO9W1NjHvlCzh2GpY3IWQc8nfRq9xy5fGEsUg=;
	h=To:Subject:From:Date:From;
	b=TpuXjnYXukAWvllsJLTXa9ZzTxORSluoHR0bOE/a9Jy2/fvc/I9trhmJ0mG762/zB
	 V1XRCbuxmyt97dgp48XiaPwEIjSIzUnljvHUHOG+D0r9DDyCLsdtTSEPJ810AUu0Ge
	 pVosevivJQcHc/a/lkfZS5kbE3h61t+m7m/jH82kFq+NfGIJNONGgBEuxXg9a9TWyh
	 +Zrm2IQsGVXHVe/un20ilLG5Xas2VEegse7bPZLwlAOnUz6kzU1DwRcRbUzfYjhdGB
	 tgbtwiyyHhSxpx3vIe9tuXzz7Yx1L8xkGfygxsSYmAHfoZVqjhreTuAEAIivkHl9jw
	 PIbUHhhsTPO2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF29D79766
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985143357.2659.7011698786714880003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea4ab1598af6e88fb27517bfaa01709a5325e49af9493efae079b432a76733a
Date: Sat, 31 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769851433
