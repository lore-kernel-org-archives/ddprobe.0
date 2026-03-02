Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7333E8C72
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772457894; cv=none; b=gBn6Ldfsg0ROlQB6dSi8GW7JSiV9xDNKEZTXrBv/l4R0Vrx64AsOpUYTAAHNfN7zKCOLUDj65Sj0uDgxvM8q9IExUrcToqYBGfOfpxZEytBu+C0iOetf5u3XKD9VqeddikjVnVWlEmMJwmZFIUrr+2iHjUiUI1F50fW1UGsYci4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772457894; c=relaxed/simple;
	bh=8UGR3qJ72FTBTIDbctqetBtCP7q4gc7U8/WjzrezOaI=;
	h=To:Subject:From:Message-Id:Date; b=FC5oV8w/gdMLydWlFRLQc2z8KtH+u/j6jeaomLLR1afxqyAEcpw+BgnY0N7R+HpcFDj8ozclaPqjKmFYVEpe38BQ3+ZXywKFlnIC69AbOyn1tjXm85twGS9GkBWQb/EDevbBQMvwANsHzjBO1leBPTKuakAOVdx6EYYr4sIg2Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIlyLP2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIlyLP2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B37C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772457893;
	bh=8UGR3qJ72FTBTIDbctqetBtCP7q4gc7U8/WjzrezOaI=;
	h=To:Subject:From:Date:From;
	b=YIlyLP2RYLKgifvvJ8cxFlbUiXsHPGKrLQRTt6eaAiPMu8DdHuQlWNgWN31SuYJNJ
	 3BcC2FuVni2hTi7Ptc+ukT7iv/aLz+qCummeWOrcabs3VrzYzHGOee88yqbxLSsKCz
	 J6SMarVK5ifwIeWwqNyfWnnSZs3vyUczfdFPMJdxM5wqQ1GaBi/SXMBH7AW7wut9yL
	 ACl/djK2salEpjPOxtsEssUfdZbP4k0H/emDMOlRw7/kIejTPsHFsczD3EtPtchcK/
	 TApGG0QmjVknhOir3Vse2fhESuBaknQoPBXxUfrD/STFWDAdOP5yhQ1BWdznJ5bEMi
	 rH0QXm3SKxGNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9707FE9B37C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245789360.20767.17983500300617235003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9225da2fa690e73fa474d2db7febd2f3c1f24d33a992b2bd4ee78abf976db3db
Date: Mon, 02 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772457893
