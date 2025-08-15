Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D46D25B305
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755286795; cv=none; b=ajDpdv4Igae/6p+jr1lnOTdsCaCvbq15E2DBZ6aG3ux0wA2xg0EL2hs2NCEnWZypqP/g9WWiE5PNfgxeztPE7OlVk1EVVxC703pesMybLOaLrU3rAFt2btqJ5DzbpKEhllb/n2gmBd8oF3nds48DMzDhvAJzRNThKLWC7cZV0bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755286795; c=relaxed/simple;
	bh=XGGXhl5Qui1fqgN7Op6JBY0WrGzKVDJcDyg790FCdhg=;
	h=To:Subject:From:Message-Id:Date; b=AbvzNeZME1UK2ktRAaYdfJuz8z0J0BmEv78QG+ETCj2DBs2S4rvYp7wGIbbeSbCKS8C0wwC20wSqet0HYl1AALkSGAZIufEGxA9Oex8RGjEePLJpf7Np0LjO/cxOwqqgzq1ohdtwMrJPT7IVxn59ObrGn8c8s9nVBu7cm29XylE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meC3es98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meC3es98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ECDC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755286793;
	bh=XGGXhl5Qui1fqgN7Op6JBY0WrGzKVDJcDyg790FCdhg=;
	h=To:Subject:From:Date:From;
	b=meC3es98zxG1jz8nF6JV1/FP6Qmrp93/xCO31vjTtRqxluIE6MLpefJQnpNLyIxA9
	 Dlse5UEzX5U/GeNogxsXyEFzSVcPCQqxgMs7Y7FKsGeX4SUpJ0I49GDD5zAj6H5OcL
	 L6G0eeWmuBjMpBYWMDLMNuwCPK564fX3rZ2135qdd4fsIv5rURK95y0AXBn64dKdzY
	 J5RxXUfz3+KUpFUGXfx3Ho4uSpzbe2str+lLQfFGtUTDXfWCFQ+FJzdzQt0vydZZnM
	 3tG0Tr2VPWzCOueVwrr0mNnKYD/V1jeqAGZg6t0BNYIPaIVsP/uncTqxEej586t4P7
	 gWXeTTz8HRw8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7D2CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528679357.23714.498464505307539995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4aee62d701248724f7972efe5ba0ccd9580f55457cccbc7f8ffb9d620f0beb3
Date: Fri, 15 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755286793
