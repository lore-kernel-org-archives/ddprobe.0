Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B701369A8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736306154; cv=none; b=D/TrXUIB4WQieGMjX9wKM4S+vJd/Rpn6foT7BajHLMouf0wEv773B+iGlyT6yHzfHJYH5AzaXu9/5LZs18cceQN3IXwxCFKL8OBG6ykjZ9ZCaHViFcWmAfP+gfyuTa9rrZyvfhHxwD8Qq0Tt6d5lhkdC37IYdhwJ0WM5KP+3L7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736306154; c=relaxed/simple;
	bh=dXyOybNefdmQ+vja6JleHmjZ+/IoWUKIlcQQKjrxXKU=;
	h=To:Subject:From:Message-Id:Date; b=u9PwSheQjC/aGsQXLxYWj03+Cum3ZsbSRsivFBl+Js6uQ+dZNNbL3W5qDt39Qbnfb6C1vIYYKyhZPnq/OhZd/Nxm7kstP8VWHqUjK7iCHLTSRuxwcpO4qtlIyBb2Ec5jyMypO94V2MZ9slg8aHz2lBmFM1Di5X+tKk4m0LeaBXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkUbR9u9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkUbR9u9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A680CC4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736306153;
	bh=dXyOybNefdmQ+vja6JleHmjZ+/IoWUKIlcQQKjrxXKU=;
	h=To:Subject:From:Date:From;
	b=dkUbR9u9aaulUZyHwpIr22KW4f8+Es1iO3Ywe3i47NW4v5FBvkpnuEO04/lQPitRw
	 DONxOEn0uXPyLLGLSunMaU3kfeEHlMqCpWOjUSeTB/DZcvdKwsguCfbIHm0lQI7CWo
	 a89xJXzRfgn9aeSyzKksKz+ZIu8TFDLvg3Mx1PQvJAqLdl4NDe79tIC0MU7jtEPuic
	 bs0OwJ2qa1N1JP6Kh+h48sreb56itN+0pZE8JR0a7aqN8DNJyO1BKXJPBBy6eBndmP
	 NNcEWyImh4IXFsyt4q0hpSScHTfDnXF6xPI6ZnONFCz0CNLg0AbTA/xy5wdmgEGsPs
	 9Je0NoDNdwOVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90714E77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630615358.16402.11267319090151552837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98eddf1173c212083146634938dfd394874d371a79d0fa3e6deb7369eef112d4
Date: Wed, 08 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736306153
