Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381FC944F
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746084597; cv=none; b=aU91FGmctcq6Rev+jTGOVU6BMENVEDvjOQ1VE3mw+iH0n3qQ9HHcz+B4Jzy+yQL7IePILNtlWd//DtgD/1uvRHzYXcU4MGxcQm2KW/kDxB7VVh/aEeJHzGhLaGEo2V0jS0tJRFBO7UFc6z+/UOQpTtxgq8jKpTUipXFf7C5vlow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746084597; c=relaxed/simple;
	bh=vsWzjEPkey2UFa1rE0bSNFFbSNLqA6rUw+gvuK5PoQo=;
	h=To:Subject:From:Message-Id:Date; b=oILmVX2yOD6CB5XC4T4jH1YLqB2S1hXkuOBfA1IunV5AFXCNOVtKXxSx91FwTT09MQT7dBmV5/YpLIUacrd/g47ZxXsg5kAR71nvY1gS+iiPbeErgidLLfkOVx328E+vsnkUSF3awQt7+CQyMmWWAsr9RCH5OsFP+UQO03xk6Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlT8rzPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlT8rzPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1860C4CEEF
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746084593;
	bh=vsWzjEPkey2UFa1rE0bSNFFbSNLqA6rUw+gvuK5PoQo=;
	h=To:Subject:From:Date:From;
	b=NlT8rzPGbgmssARsBfrUA0K6B0/c9MkGKTgfKg3uikWWnTT85Bf7OeUzUcA24vYV3
	 Y59aUhh7TtFmRaoLmkESkbFDnb5i3li93hfGnmn1D3LNBekTqdcdEaZXX3K7AUzGOe
	 b6JFmdm3fzcvp92B9aNGIs0LbORL520kOFvGkQ2tu9vTcA82FFLge1C/gatKM9rlqm
	 CEOyy2mcJdOld+D2GWipKMgKXcFK1WyDPOKCV0NdXslWKh9MOykEguQvCa5gFKh2kO
	 v4sOXwAG+U154IjOszLI7bSdb3Aev3hO1Jy64irzYa7pxHJONXDt4NVj8kj2EN6CvG
	 VV7TPabTpQ0Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F9C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608459357.7704.13227280458234511287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f42c4a1ae11c77adef36101a1ddcbe8ee3171888ab72c3742a9b63de456060
Date: Thu, 01 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746084593
