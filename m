Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308AC1AB533
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734687954; cv=none; b=mX+l+3GvHLXw2gLMxRZglK1XsZD4ESqB8+FNCYqbvGw0oPvl3k4bOlad+KGNzxPqmwMSOjHAARIYGoM1DcSDE0fiy0ih75shhZkTZVlNvN1EisYknpqEqXtYieZdhcfW4QxLqpimlMYL2fYNeQc+DjxIldW+PBfua+BkhTp3uOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734687954; c=relaxed/simple;
	bh=IfnIA4dUbtyIzQqUqJYF/E8zu5PZP1RlHM+VL51J3/I=;
	h=To:Subject:From:Message-Id:Date; b=lmUkTAmZD9moKEUeLCZK4YY/HudpX8/GgWUU8vHXA1z4swAbEpHo9UjThmOZNglO6amm3+8KjreWDr8UHmRuSaVM6mtkUsr+l7xFyy0LuAlG5f/o3LENCNA32/g2xzvLhCpyj827YGto/5W8tfEG4jWrKY/vCvBf/1hIqAmdyww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpAwjSFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpAwjSFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE909C4CED4
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734687953;
	bh=IfnIA4dUbtyIzQqUqJYF/E8zu5PZP1RlHM+VL51J3/I=;
	h=To:Subject:From:Date:From;
	b=dpAwjSFsRZ/lGTGo3yWqvxtdiL9Ff1waQ+Rzs93xi2BoqBp12ydflAJQv0sHBBph0
	 RVkL00pkJ7PpcOe2YpIKT6pMjZVxsF9qcOJ6hrH+oMDG82/U+40RLoFKCrVtHkbi5/
	 QUmRseTkS+4sQX5ObWP+LFhz6a2Q9efboiddD/D+C4laA4zWwiSrOD/FueKGzcW+GE
	 lZED8q6cDkC5tBcrcY94Ex6Rfvhh/hejutn9dHKTRTLLPpHgx56L6rS8bot7cCv4UI
	 Ch4X79oOqZ1rq3T3Ji3uyNawoiq4aT5UD2Z4trEfNO1xWAbjRxkFl77tuaQFOxkq8V
	 6W6gu13cjvy9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD24E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173468795359.18170.13930101917341610621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0ab1463066f463ed40938810f629a06d2b1281573c93d1fa4263354a2db7c8
Date: Fri, 20 Dec 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734687953
