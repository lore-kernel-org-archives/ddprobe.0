Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC0C42049
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770480234; cv=none; b=AvxpSz0W8FNXFyymmKOEicztWLeqW3Am1DDLS0U4FaCSmspObup6g9Kzaxj2HUKyCQBKrJxUaY+q8vIEzWZrr27Fwz1HDWlaghEZKTezRdQkMEqgGF2Iv0EYWsxu6vRhPamFC/pB+Hh3HozwM/UtpfK7jI8vklZe8X4A+ugmBvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770480234; c=relaxed/simple;
	bh=hhlW7ZAOTVKEiNqE+oPPUv0xfb0Uh5AnB7VTpQRSWSw=;
	h=To:Subject:From:Message-Id:Date; b=hz00vN+oDhd4CfDj7P0DoAcu3cB5EdGOg7GQei1EXevf0iRcyIkxqj5rcY2247ZbTRrFqyxtK9fFvY4wgaT0cfsFk5Su0mj/YBv+hQS2HjdL4rjN/UMjcCBC8IwQSx6EmyHyDHL92lCGKl/rkjMH5KVV/DaxnuDkbpaKKF+UjX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcPBD5pN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcPBD5pN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7D8C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770480233;
	bh=hhlW7ZAOTVKEiNqE+oPPUv0xfb0Uh5AnB7VTpQRSWSw=;
	h=To:Subject:From:Date:From;
	b=pcPBD5pNqWp2y0wkDQNYt04szVXaqMf+Fd4MxlMlRNxT+UY4GIIlppDpyyjzLdQzY
	 X/iXcyGl0uiv9SQKqAnQu6DA2929zfwV8M6MKhJswLxsqD5FfcnQhJaE/J1KDYQBRa
	 pHNBXowR5vLlmd/QDJBfrHHqUvm79MuC0etEpriXHWda6jjsTyyofDFVaCTMeGHH1D
	 W0qEFmJX5UAzQTUaue4sFl/ixOTY4wWYrHb5j28hkVDNGgjLt5a0k1WfIZZtKOlc4D
	 D0x4+a/Eo9xqSX85PuscXwlOxyzlxujssVGYwpzC3BOTWvYrWAjQj/8nGYpVGCVokp
	 mI7ZBBCgqje8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF8EEE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048023363.17255.12110938160735137811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182632dd7720a5077edb33087349600fd963ba1064b7ea5cc854c49d33291535
Date: Sat, 07 Feb 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770480233
