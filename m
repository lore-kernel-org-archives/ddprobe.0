Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3ED17993
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785462634; cv=none; b=K/uI8orgXT/a8po30K/xBnJSjM7KN4mssX6TA4k4Zu/8K/pxb18925xe4fMtRBFVt8k/FgSuHLGCuZKLGRJNpRlp5tCsVWB/jTQ26IZjpl6s+M1o8/nwbbLPX/IMgAPqbXTAkbuW0hb3aA5WxTldKbJBJQUQYv5l8SxeuIr3b50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785462634; c=relaxed/simple;
	bh=VcF4xnC5e2hqjv+2xWKg+kgeRWeEbwsdRi0hXxeLfGI=;
	h=To:Subject:From:Message-Id:Date; b=itRgrq+7lswdFbENYvbqCJiSn7kT+VNeqSugz5Wwb5xsIG7vCSl/gPKxcmXik5FvM7OLU4v+hxAZKMSH5xvFs8mbxCb1wJJeWLIItuJTKbxrR5zB9nllnbI7Z8OiEq2hipNiYI7ymC2+VWL9LgEKdsGvP9lwdTK692rsujSLCz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7UIIQUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7UIIQUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D365CC19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785462633;
	bh=VcF4xnC5e2hqjv+2xWKg+kgeRWeEbwsdRi0hXxeLfGI=;
	h=To:Subject:From:Date:From;
	b=b7UIIQUGWdEGHYzPnFV7dvwJ+Fkh10eFdMfrFfvTG/26pfE48sA8qsi9zRRxNylyD
	 oA9TFXVq/UhtuR+b2+4pr1w4AMitKwUwfsuEq99MH7sjiW8YyxK0jfN7NaKCfRa7GA
	 xoSMZlu1idlGlq8LXD2NpfrX/ffy9/9KVxGAgWVjCkNFij3x3pDEwdFGzy4F29m9VF
	 JXlCZ6H0nx6xGB69cPFHgXk5pKBDGE9OcQOU9ru5pAZiO7ZplVdULjDxwZsVLdJXL4
	 v7/19Z35ce3oew89h2NPdi512kHFQ7XZMxwMA9Hrmdz6Gt0dN6tWNe9C8TgFu0feOG
	 Nxl7olNSqMdSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98CCC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546263368.5335.17473955375221012046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec6a6d5677b2dfaeb9af055cba990381c827aeafaceaaa34e4f6697aa8961d5
Date: Fri, 31 Jul 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785462633
