Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14622382F19
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772534694; cv=none; b=Aih9ak+KstcC51di5ZBHATWsE7IJHWpmTIoFlybVXyTRdZYcEqfihcgHh9R00r3HiTH80vYOn2UwXW+Hjp5XpuH44pz+w5kzoQlrmbjntbyqUdSpILx/I6s+ob2jTYxjTeZ1cR1Z3XI3x4R81aX6hAO+b/hmV4m2n2c8/gaEaJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772534694; c=relaxed/simple;
	bh=qqofbxYpPB6mSM9gap/auHxj2YyT1NI/GEY42+d28+Q=;
	h=To:Subject:From:Message-Id:Date; b=dw3IJP41F9Q1qgnsAxleR1U8Me7wj/JuvKu+bRdTXMyatBRa+LxMgM/cPQ0B6XU/2AJD/R2dmkloqcwFoMAUGV1u5XtUpf17hxoBBmpW/SUJt1AUVDNzLx3ux8xlE8GtOHKnEhRaHMKYlMyC4l+Fz7G0c4I7FzGiLfap3oM+k8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByY86lVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByY86lVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD716C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772534693;
	bh=qqofbxYpPB6mSM9gap/auHxj2YyT1NI/GEY42+d28+Q=;
	h=To:Subject:From:Date:From;
	b=ByY86lVJP/LcAqfSvDLiJDRlOE+CaEz/tU5dhua7pUSpia1+hVh2m82qJU42kYtHC
	 aYaMMSe2vsKSCVj1D3He0ZBYw5dR7nywUm1fXw+6OvWdBZYDj6FFpM86I6wA1mESoW
	 LrJzYnv4TBdrE4G83PH+JZ1E5T0xhKM12UiQThg4/UlhV9pxBIMfmI1WbzLyp27tKO
	 HSvubXFUD43oSxRLbX2J2MOfVVnUuTyeq8XS+IZmx0wSPqb3pkFvcpL9jsTAxZv0cJ
	 fPNEPXRrgEA7bJgDIU5SGsMDLJ5MK/h2FyMIDazczBm+hPqllqa3SXycd9P6cB0s2H
	 PhApA/iOB09WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61F5EC1423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253469364.31737.4536119222705433428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3571ecf86c0f7a2c32320845f745bd36aaae94f4fc8d4ac088b9cadbf1c85c
Date: Tue, 03 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772534693
