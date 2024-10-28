Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5321DF267
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730133954; cv=none; b=no6CZE5YlHwPJn1hTDcFG/yKPTaetXlEPNNm34MzgI3SOxLwgdumm5B1MwGZ5heDU8DPIiw08W7NtG4bLZyrNeO29FDmuLjXL+hcicA+CozZTicNoux6X8lDCbNQN8s5IMuoLqwh8unfZk35/lHHY35997FlbfX0ibZy7i1uSAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730133954; c=relaxed/simple;
	bh=AvfrLNftxMMzH9nh+7o98Srm8FxNIp6AQDpDw8wgykI=;
	h=To:Subject:From:Message-Id:Date; b=nOd9SXgA8YLseCziWNTXrePhO8jLBw0r5mpHFl4wnNQfmyo46E8n7IPHsy20KXXqYFpxmROd53dmwxBFdjFmnLIPwqIxwjYgB6e8TBF/L0TIjNYllTQJDixw61NMa036vAztlOL/2XIzqyKmT+fOcSRSru5D/eJ4UaCZsaYR1+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oS9XkX9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oS9XkX9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71C3C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730133953;
	bh=AvfrLNftxMMzH9nh+7o98Srm8FxNIp6AQDpDw8wgykI=;
	h=To:Subject:From:Date:From;
	b=oS9XkX9f+Ybg/up+SNwgd9PUGDTf3ViB6nw/Q9OF4Xbi+DpK/6/avmsc/uzr+dQGF
	 5MJksrfZdZNyO/blecDikwd8B55qxaHxgBCJZcjxYeIgT0on8gL9pFlBVQ2fqMJtDU
	 E6Me8PIOPuDMm+P67qDtGC38mYzZnXfiPIXwQ5V/562UJVsGWso305xRDTgXAi/U9h
	 5Nqr33DMEUOg6uBwgCDcyZGJU7d7ScQ0UL2N9W/YydEgoS8P13yQ0yIFOEto1SYHxX
	 RX7Xya9zcnNd7pdG8w6VQL/QprDZyR+nqUyLdmT9QlsKwcGtF606+uR01Hk5TEgPSB
	 OuSeUc+Cqq1Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BC5D3399B
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173013395366.6158.13282128989972016658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a73918c4f4ea1b99b5a3cc388854435ded9cf5bd640a2f72b671ccdd80da11b
Date: Mon, 28 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730133953
