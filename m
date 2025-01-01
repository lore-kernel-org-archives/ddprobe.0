Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B0738385
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735773954; cv=none; b=fNkU0lGT0HEQ/E1wxLzzRG6RmPuW4gjpPUS5b+w7MoBo0Ax5bvi3G0zzYV0G/Vtxy2x+QpxlEQ3Q4YCSTbntAMOhxn3JB0Hako0ajZoAXWdClGWbYqDX03VXi0oc5V4Daspghie9KimWkrKk7X6ICd0nCijazgI7MDxrtkvDIgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735773954; c=relaxed/simple;
	bh=94fd63lq02be16hp29s/7TRCRo5onOy+sRRheCOmLn8=;
	h=To:Subject:From:Message-Id:Date; b=dCn2zI8M1nggdxBW3/HzbI7OQ+JPWPIMa8buO3DzLXX4xBKQZPdfN6wiwCkb2qlt4ztocFE8eJP48sRe1HlgAYgRT34bf/9t6Dad4HwcW7IJ7xcOqjtN9EfnGbslgSZUuotsf2kTR3TuneffMFPfB+NdQKRZpOxGmQzsT4sAgUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvw/CJZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvw/CJZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DC1C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735773953;
	bh=94fd63lq02be16hp29s/7TRCRo5onOy+sRRheCOmLn8=;
	h=To:Subject:From:Date:From;
	b=tvw/CJZM+lgYlJmJliug3JY5azeC3bnKVJLKhaX6Vt3qT+LaIeednJxzAxy6CQBCK
	 tKKJOs7KsRI9GA5YYFek9PV2l8equfrAHSDZDuyfjT8DonJhM2Am6xzI5YnTWK5tN7
	 79HT906CJV9pKwDqMBT4WH4NzEGcVrsppRKcY1XlWrAgSZq0D7zOhpyEcK2DCjhXBJ
	 3AX06IR2dH7lC/y6FvJjpNXkSLJthzg6DDb9mZ2zCXyaNxgthEfYlH81RExuttCEMb
	 XAljlQwxnSSFeRueog/a3BFolh20vN9iYVuuFMWLmz5BOqZPfh46zXfcuajxP6+OGW
	 n+8sEQrQtH9Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41F5E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577395364.5142.14523859029428847147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deef6d5a55c57333fe6662ff59a6c65caed030a39aa355ccf77667a248a4a180
Date: Wed, 01 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735773953
