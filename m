Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B2E1DDC1B
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772646294; cv=none; b=gvUnEi79saTeBtLdU/s5ZY22zb2e83/vFikPdMTDRgbUkiKptJ4AJnHU/K4xvpXCpMWxwXYhpw65cxIOIXZC4dn/KzzVYz6Pgvu+sjQtOCqSC8MIB5MYvL2DWGC3vutaPoabrGXLUjouQltC9yaoxO2FleAUKt9+QASQbm6lpKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772646294; c=relaxed/simple;
	bh=RqNwZvGXbW6hQdnb1KnsM38vAW3dCtpmO05BIC8srGM=;
	h=To:Subject:From:Message-Id:Date; b=jIr6zBH3HOk/HFQ78Ps9q55lgezOGTurWaQSUi5WXTo3PFC+qrj2EJ0xl5jO7dEirCHLVcvgVcKgUHbbZA6jwRjjdI5kTyx5LBsBrIUjI+Fgw3aBU5gvg0cd7rVbu0fc1KVaCarHYZ0NPut53sJZRfDdlDBJVvdDXfRKYW+KDSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQow4lca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQow4lca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01C0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772646293;
	bh=RqNwZvGXbW6hQdnb1KnsM38vAW3dCtpmO05BIC8srGM=;
	h=To:Subject:From:Date:From;
	b=kQow4lcaW8/SDzcTZ1lPiE2NP2HsHIvmwHAZNqrfo/qNd9lMd/Mx8TlHEaaJIosMk
	 YViEgTiFkiiepH8ci0/EQ9Ll6OkaHEv75UXgLUfrQmbdQflfL7UBnJg1sns86vnoOS
	 GnbVd0OJGit9dch3Lduk++mGo14822Ju/R59C9O28I82st7Qjc9V/Lny4UcTIsrRUd
	 nWRYbs0WfnNfW3ilO2QDkXSvRmhjte8sujsc3DDN0kLCuQvVBurXfHhxn0nMxZbdLl
	 UpOiwHgKkUek8rJFpLinao+0D68u+hjMdgrTqzFXq5wHtWbaj62T2VY1b62vyztVhb
	 iWrujohk8X1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DFEFCE2A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264629358.20578.5976536442735008708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ad964fa2e274827e0939d8f08dbce3181aaaff7c7418b9d24f7a4ea1d2d7a2
Date: Wed, 04 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772646293
