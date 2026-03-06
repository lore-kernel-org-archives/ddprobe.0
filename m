Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4E3340A62
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772837094; cv=none; b=PfvmGzgpOYFNSr7n+3+ERaE5E+XCo6poDC19P4v/ymt0j3zwuFYvfbSKA71oIUqLniZN8OtXDlccUJIR/q1oGvxvkjTXv+4Cz3uFWCSexGon8VvJ8BKsYjqiGZQwaO8lCyetUTlyTFyKPAIkVXhHTekB1NX/EGdvBeju6YOBhug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772837094; c=relaxed/simple;
	bh=yE05uuvFdA9PCs2G+31LNr4OiFe5rh4avfNg2AuPeyI=;
	h=To:Subject:From:Message-Id:Date; b=N7Z25ANvUB75K3+qnGghzD5LV24g8hFCexd3Vldo6uh81VtCWOp+nnlXGO84RDoJwgD4xivFu++xShDKhT0FVgG7PunKfMvvFxvOVaU3q14z6UKLZC1PiOvj+PXPXCABtZYXKkNXxG5FLphsxi9DTPkDDOvhUywCLyXtPaKbkLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILuyt4Ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILuyt4Ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FA6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772837093;
	bh=yE05uuvFdA9PCs2G+31LNr4OiFe5rh4avfNg2AuPeyI=;
	h=To:Subject:From:Date:From;
	b=ILuyt4UaDHRz+6hBG2QIujOfVcSb1P9gT+YkfmStu3oOOw1yDRG1zBz07r4ZhNsZZ
	 qt858Ztqmu0QfhAtd9wAbnaXd6nhtVjYBqdRj5nQBMOTZKx8wastJeZO7jmK2XOuzq
	 wCqyvaXtMvyZyQBlcpdpik/hkELcxdmskyDRyfn2Zf2+x/XAWj8X3i0knl+cZjYsr+
	 yNVioO7qj7IJ3SHJWht8eTNDL5qhWuMCCTR5zTAJ5QYedkAxRkBWgU0pqNTE8I8bAd
	 gY0rfzQjeHtEg28jhqTnQxebSDwJN2QY8bApO44FfFRkUyYxFyus6E9FuV6Li0r347
	 lV5/zw1aXLEbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBD5FCB602
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283709363.10867.12653330938206594952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1227f975e7be1c1716dd0061c3f8ed0ebf00a27de64ebcd57f524809865d5c
Date: Fri, 06 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772837093
