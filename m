Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5CD3101D5
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760684394; cv=none; b=iLnsKro6JwF+rGWMpQikWli2HODta0Dy1hKLmoztp27cu3YlrA7BvO7zx+QLOMF3Y5dKaEElolQ/Jb/pzBGlTRwzPe75ycvCGffe8/svw6P2+Z9dGX+9xitEifBsgdu1Ekumo4michZNMUCrdkq+vwlLc2oBHXpp0Tk/DdOjaGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760684394; c=relaxed/simple;
	bh=fG/6wuKccwu2b/JT3gO0eTVqjN1jQI0YbbZSUD1wU+M=;
	h=To:Subject:From:Message-Id:Date; b=a5ymxBZ8nMhgGKxk4AD71jodFtv7twM6YtJB6UCiQ7BXKo/vB7r+YpeNv/1Bixw7Tdp0lNC0a8DGmwhzY1sqM2xKESxOvhAqHRLdrptTAedTgpri5eTSKOOzftFMSHRFbozf/zgIFwlyv0Gr4tbZRM1bV9XHCol7bXWvrV8YG7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ul9AZ2mw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ul9AZ2mw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EDEC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760684393;
	bh=fG/6wuKccwu2b/JT3gO0eTVqjN1jQI0YbbZSUD1wU+M=;
	h=To:Subject:From:Date:From;
	b=Ul9AZ2mwSb7VAo7xoaJjczNHXumwNaaOD0VE+21VmcEyCtntFDK56zfrLbbBM1b94
	 9jAASN7YoXROeJGPXEqklijguWDadRRfpgVgE0hxEidqfOSfhSFtSBDVGFDsiRVqy1
	 hNsQozN5SA5IhtcyCgMyAORqpWhKPovZ9QXMenv3qomChP+fvqeBFdQiTTyEdSYNfy
	 Rj4HHEbqxCGGCq248oVbfdd0CKcJ3pKuPe343smaLup/Nnqs3BzPi0tOl3ERSjOJT3
	 tGVhlOgUBb/U1GIETruFjrtI40d7qIFxztm2HtFphC+XgzrG1n8Bba84MV/yiaC5Gc
	 cvUdN4oCFYj2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD46CCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068439358.20573.9644088459377864414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7643a7fec42d3e2a6f05183bb7094ae50660d2eb78e2529df11c5554f46accfc
Date: Fri, 17 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760684393
