Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A91E38839B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775499334; cv=none; b=Cudy6CBbfXHz4mi/HChLutUNH20MiS68cvY9EAaALHQQcIt5T+NG9oDykYKb2gOcvXx2klOnZcvIF8Qlua7HNo6zA3FsPbluZL5gZXeBLo4jF1U48TUXNoYrOPfP/9rzOGgKGtiAZZaQM47HwBcciSXFhR0yvY24Q1Yc0i/jdys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775499334; c=relaxed/simple;
	bh=vWViI7NF0jnjzjYd1Fz6RJgWrTxmts0tVlFBbNnoS9I=;
	h=To:Subject:From:Message-Id:Date; b=gSReWi5qRoVIYRIwL6z2vCH0J4d2dOYxmtUXVItxYrcWvFgAOnvpb0UDIJpWXOA9g3Ci7SS4i/M18s4vPzrKTsUdJ7cTp1oiGuFOrUG22MOgAMIpgRa7BiVGZAOdChFejuZQDtPJz41TiSyKJXCfr8G5jG5Fw0CGUG5ZpkLiymM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbD7nQ13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbD7nQ13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA116C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775499333;
	bh=vWViI7NF0jnjzjYd1Fz6RJgWrTxmts0tVlFBbNnoS9I=;
	h=To:Subject:From:Date:From;
	b=QbD7nQ13/X95RDkNHr/TAuuIQMPssQ9vuXH5wR68GhQ7f9z34YfSaJoCj5UMuqemz
	 AgvXfb2Qoej3Br76Ge1p7LgwwKU5X10oqirMY/webSVVZCuyWRgGaYDeuP+foBrOWs
	 f7/KvIaq0Bx5vNiyWQaxqfkgER007e+XqE0sqYeDS7JBTH2stugmwHgzF6lv5QtCZg
	 vEiMGL49mwgMcOxlI17F6dzPgaY9gvxKzFcQIKP9AKWIV0oMMF43tgqvK+uJXvRi9h
	 E6Wfg19VfZJaxSK4aDtEUCm0jBK+mepon2nLNEZAXOvQpx6KcBSfjzUIN8/hvgKD2k
	 4AjMMV8Zc2MaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAADDF46C66
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549933369.32637.2196735685479124095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb0dc582423cf227de18f735498e7c9eee5b4f00b1ce2b74233b11d89b85c1d
Date: Mon, 06 Apr 2026 18:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775499333
