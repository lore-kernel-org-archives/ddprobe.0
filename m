Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1BE24166C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743677395; cv=none; b=P1GvBTDMZwJHXyQdX1/aeCmKuXtDd1+VMIMQ9BEsg+l6IYcgAxX3Nm8OEVgKA4AigEGiQNcKOdAHSrduZI4LdSZoP3ZMcfz52t3KDG9+C+mjsJJnomlr6IG5KyUPl2CNRCrsPNNXGEkSJQyMEZpnXjuxwynPZQjPJDH6vpVWGS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743677395; c=relaxed/simple;
	bh=TfjF+J3ObP5tKLTD1yaulG6PT2wuTZPkObOOWtwikRM=;
	h=To:Subject:From:Message-Id:Date; b=cjjQA3DQc7lgoPfyPBy9KFv8q4oMFPvfFCtuSADMzpf33NI2SC7k9Okvd5vYQzrdg7MpYTm1yamVbKz9M5y9k8ERUP7hiwLrLHDyNRuQmk09/m47jcyTxkqW9qPbf32OHo4h8oYQ5Cn8VU/q/EZMujorjTPo3jqSHZF5VxVEyZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7VkNGgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7VkNGgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD5CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743677393;
	bh=TfjF+J3ObP5tKLTD1yaulG6PT2wuTZPkObOOWtwikRM=;
	h=To:Subject:From:Date:From;
	b=a7VkNGgJPu0JZB1PN6dcsO5X+P3ImW0hxrSdNJnZa60TYCCb+U73SCT2aEOyVf0zs
	 3j2Bl6akxu1VIuSV1Bd1BBdDd8fSzFfWvIW/7F4KwgWyvqJ7jTlH6ujOhhdtiI9rhD
	 j7xMvMWojojaIl8ICACAsa257dpdVM4MCMU/bD3CNa1y5CTOe+xV6KaxniUJBH29qT
	 c+fgcb3NWeYVZDxdsxSjEUcJHeJLAWjlS9T3p/AhQDRkyyDtvbyCRn4KpnZP+MHNjU
	 RcUTmn2UVSKI6j2JrSzi1BUF8xbcQP6u26M4jH4TMqYH0Fh7BV7YpF+ABs88gm1f0P
	 9A/pFrov/wY6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAE4C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367739357.12755.16704311481289178033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0393dc595e5700bc748d30205f0fde83aa90063caa3e3fce987e645a5dcf8002
Date: Thu, 03 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743677393
