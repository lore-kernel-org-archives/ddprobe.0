Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CB71DFE8
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741526934; cv=none; b=hRZl7AdFqtD44Ed+mPy/hszZ+O9QNw8G4MnbZySibm666HOpJyfIXTkOWWEvc503f+cdyrd+lrc/o3x7WjFj22ougLMSf9bDZ5IdjgDjtnUITWSIG7k6+Vc/TeREanN+CJ4HZOZBr6AO3pJjNexBrbx4iCoDsRT2u/zIQaTUGmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741526934; c=relaxed/simple;
	bh=ahvtfCqvtoTzCEId7OKgF+QXr/zgaUFfcpEcdTchSEo=;
	h=To:Subject:From:Message-Id:Date; b=C39gh3D0gKhA35ljeHx7qSugYfJ+55TbJVC44DjaaC+fUwG+MevJcr8LBsJ/Xh/LauLt3q6z1mxudRTXlUB30r63cM7IqgJQ1GvuJ3r2K7Y89mOqjQA2jF6siWvxW7j0SffwYGn8/8BgW3xCXhxVtIRwPqXcC2LpH169okApBHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0vXRqbj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0vXRqbj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51FFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741526933;
	bh=ahvtfCqvtoTzCEId7OKgF+QXr/zgaUFfcpEcdTchSEo=;
	h=To:Subject:From:Date:From;
	b=F0vXRqbjtGmb/FsIYHWHyqHx24j9xInH8mKDKSknxiUQprOTwVDz42bt7hp/isVg6
	 QAL3cLS26ogVAGbNLLyx3vsljMwytvbTROz/h/Ph5OJJrTordlyvHAVSIrjD2bgzf/
	 sVP7FnWEB13T2+kaPXcL4alL3gEt9983sopqOGa7p0SMYk55BtBfOaYrXGSil5get7
	 3EgHV+kgkbUzv0mcRvsusmFkEiGctiXk8lbuBwtfUON/F9KXLg+2tIx02eX5B5RmZl
	 Klv1aVqO2J2RZqUQybO/4UhmjtoZE9aiuvQiS7rUVFkb3NyOvVTKpMQA9u947ZBrE9
	 7+FzRSn7q8U8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE52C28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152693364.25519.9298803396538213501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23150f9a004cabef99d6302e28c006c127e6a09c8ec1cc6a8782e398efe13280
Date: Sun, 09 Mar 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741526933
