Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAE814A82
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737669954; cv=none; b=Gb4Z5CvMRP+eXHVzG4VfCsp4i9iTTXJZ/lMqevUFFuczYdoW+xbeAgShtJSQynpzOOA+YMvkwqtA6IdBSVzk3f0Y/unvYl4cRuruBcFyL56e6HZmDLtmyEgaOo0uL2YWVtnw2f+rYooJBHBBAw9wyi71ATrusAdJPLNq9CcLN3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737669954; c=relaxed/simple;
	bh=gppssyLVIWRePSuievrcCMBlYKhgSkfF4BotywahLCE=;
	h=To:Subject:From:Message-Id:Date; b=Q/iMsa497f4CCffg3xz7KKngLorM7N045SDR42H7tDomNmfYt7CAM68N7H/lx6Jj+hWsUraANDfdqhxI9POT3dmscFtOS5W0tifmtk469rF9QK055rz6fMhj79PakjO3+G/cC6h0A9o53THR+VoEnMuK6BVZZEIlS+yoa9+zvJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEiXoaxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEiXoaxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D16C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737669953;
	bh=gppssyLVIWRePSuievrcCMBlYKhgSkfF4BotywahLCE=;
	h=To:Subject:From:Date:From;
	b=mEiXoaxTI3AoMoZWO/+FuLIF3nF521hYK4HxixKyqDX90B5hkrsipptvyKTTLX5q2
	 /OCnNN5C2JVWF1yJk/xCYHw1ocxI1j2wuiahewSFYqyqNOBmEaRcOULYkTi2/Lw7oG
	 /jpKSmUPUXYxaSNHcyipUNaWbVqohyXEpJIsCf+u/Bk8raUNAiFu+WqR9l7yYtLp/T
	 DFgnWjXqN4z/scKcbPicY/zo3Tl+phLh0CfEIlCz2ZHzS9LLyX62JZrNxXmP5uCWxI
	 Jigm9LYWRjBnV9N5w3x1csvBBkwiYpirpFB3Swl3RQYwN1/wgLmIuM9nRDnWmVArqE
	 UghnfZGCp0wYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6C5C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173766995364.26034.14563153397169063798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4dad14049c4863f2adafe415ec812ad3308796b9a316aba6abbac175a675a60
Date: Thu, 23 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737669953
