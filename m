Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9807DA91
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726557954; cv=none; b=nR7Dm9Fip3P+0xyRxgc+F+9o0Gm/eh78XckKP9Isg/K/vyH+kL92SIa253ahbrkl7NzkJCwEYdl7jKTB+fMjuLI27sU7SEBJm6Z9VpplF/XFzwIZXBY6RUYHCGXKbHhtrRAFlJzO4NL/+5kQKzJppIUf6XaOCcpqXN0ewMW38Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726557954; c=relaxed/simple;
	bh=yYl6I6Q2IGvZ3QHEIUOKTJgkZfDoHRLyVPPBj239Jpw=;
	h=To:Subject:From:Message-Id:Date; b=dHjLdgxnzhAkWsvb2Kl5ov5qrTgb6NRrbz1TMYlcitzem4H0JsNsn8QQa3IxiMYpcT+y1aJ2OX7BbXI62QuTtkYvWyNndP5ygy7altR4sCP0glf0bhTnGrnAYYc9xDP288+S6sXni7xkbT4BDMDtJrP41Nxv5pnD6PpcEpSWpPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVb1+0eK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVb1+0eK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C1BC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726557953;
	bh=yYl6I6Q2IGvZ3QHEIUOKTJgkZfDoHRLyVPPBj239Jpw=;
	h=To:Subject:From:Date:From;
	b=eVb1+0eKpYDmzl7BZDMCEXdOMeS5AGnO05PIidiCHmU4n+SvaATfV5qK3GPSogCPk
	 hwU1vcXaaipcK2JdwvgxQ8SAZhTE9A5sPAguMmPuVSZnASb9d5t6Pg960igLr6s5B0
	 aZuCw+x4IntIMIjR22rc4WYvxSOzJiWrJa5/NAk8o8a9C8Il7YzZAFcu8BOwwtLNjq
	 vHMw+FzRsp1YbIFzy8VJYmx5REhsoG5usO8sLjL5ajz7qxRUI21wYRzQ19p30VW+JJ
	 tNBFvacJolwGPIKKO9LLuk1TCmHWlzIIcj/uLgbLFM/OA5hw38167y9cn9zAHXteiI
	 3/81m/abAA8tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F1C35FEB
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172655795359.9553.14742596670619949494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff1acd2a9701047697806bc640064fedc2fe6b686f943965159669db6925234
Date: Tue, 17 Sep 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726557953
