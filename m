Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473551FD4
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764490374; cv=none; b=m46cBvoyQYzYvkEPtnkZRolTmWmEgByUbjeIdHwmxtG4N0JgO+Y3PGQStUtrS2Ekv/zy9ZU4E+tHQGX43x0ZImAiLDjbiEUijNRytFL3xSWFhnG2i4Cce3IxcPyoLI9b1ddhoqk/0QzyoKEFidGQ4WBlFwz4E5kjWnaH0InYy9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764490374; c=relaxed/simple;
	bh=+bPM+P00xFjsdIqanrPg3Y02LGO8W8Yrstneg6ryzLI=;
	h=To:Subject:From:Message-Id:Date; b=l84xvA+NUTxrmgcaN8a95j8BCFn4Zo2ehL6PJGWzwEUS9cdpwiGdDA+y5lDQKSbEYBLYBF2DV8B6aPBU2G1g+gwxwHhTOdCNChIhrWcSYKu2wAhYiClRu3nMPE7JbsrjV2mQJK0UkIgIe+fIzVnJFqSYZ6d4cdCoKk122eNoM34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXCRIW7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXCRIW7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7272C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764490373;
	bh=+bPM+P00xFjsdIqanrPg3Y02LGO8W8Yrstneg6ryzLI=;
	h=To:Subject:From:Date:From;
	b=pXCRIW7xD1kO/YnT+MrB/sd9UXk4+Wb+f70ZhLwWpqdBokCcn6iYbVRR9xCggSBud
	 XU882PXUdbHB6qkdaA/PmIHr+w8V7TrNMc4qmNHH21uJmyYlXBU8wTlT2/mW/Gt3nh
	 b9uq1snOXSQ4e2dPYoDiIMlLk74PjALnRa/Z18CeYPnXFYFwJfMQ0Hh6h5E1waWgul
	 8Cpdb3kx3GTwKYghz9+CvQktxDM6x9ClEyPSoW4G7VwniVXbfraPwiYgtDKetT5gZG
	 UREyMMZ9DlWdWwhETCM5QdmVxH+gqu+dCKIeGT77ew+VttDy2s3o/RdVihZp1I3iAC
	 1m2VO1naHhr9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A292ED111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449037360.12880.8585695414644768767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8105c39d1f6961147afd7f4a8313fdce51b86a7814d3266b326da239b66999dd
Date: Sun, 30 Nov 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764490373
