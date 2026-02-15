Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CBE2EC54A
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771154694; cv=none; b=j09s69/zLsJkA4sqXb8BXmIfI0+EnMb933ZZDicZFyYab0Wrnho5T93F3LZoWZj+iCAD9TMLRhss0JG/edRcx+K2FyZ7q3pGOjJAjAVSW2Z0ce98nWcIXCecPdUnUAY9SbXp7O3q79RuDCxnuBQ8ls3rLgbF4OJSdO6mO3m+AbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771154694; c=relaxed/simple;
	bh=2Qctdh8eDFm4htxjAJzMOvurnmAV2ESOVJ1spqIpQP8=;
	h=To:Subject:From:Message-Id:Date; b=P1ve18Vc0XSqzmH2PpQe/gd+IKpmFCY8kry0+XSgzAB4tKEXuZ1RPmuG4c47krO0jck12AKsDxCtv194Vzbk9LeM3Q27R+GeiFDEyBvAdY44TK4KH6XjLPwK/Nnv2oYnFQgLe9n2ANffOZgynp7LnhhQzXk3Gj2p3ya7ZXgH/vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssqleHnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssqleHnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82F4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771154693;
	bh=2Qctdh8eDFm4htxjAJzMOvurnmAV2ESOVJ1spqIpQP8=;
	h=To:Subject:From:Date:From;
	b=ssqleHnbzwggbWYExUGM+S0NegYxwgz6SJsDv/NiM62wCYs5hARE0F8R8a2POCA5f
	 /hC55LJbFuGeARKUnXV7b1LRzamfqKnueoqDrimGBZiZirir+1t1PzASav4Wkcz1Hy
	 J/D3a/lyGNHSDxdAGFM8c+lQdhQUkcxyvaZQDM+jHGChtxpIIYVFSX6ldGLGVFYhcO
	 M6xUwuP+kKgEBEgmKpmRd+RTVv7GokEESS8+vBD6rPyvPB7mdxrDAF4l6rw/zXkfXb
	 fXTLJJ6vxhyjVmKKSjN4V8PMltf70c90xGEW7WXkmmet6j+gtRme1lNmakR/R7mzZe
	 JMSwJ1NHMuIuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CE3EF5871
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115469362.7726.14147014477702540775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30932b2938a803129711934580c42d5e304d6cad8544c18b6cf58a67dd821e8d
Date: Sun, 15 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771154693
