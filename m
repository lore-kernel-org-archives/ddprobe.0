Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA9C1F4621
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758455994; cv=none; b=gzQ2GoP+iSRShMnOZl8VofPpAaQXqSLFjPfOah07NZwrSnS18jJ3U/6R+4yuL7j4uCACRuwDsthaFlllSVqBOMtCpe2Sn1qh6DECByO5VXEI0TA4aCeMOCczhxpcpPgiK6Cbx4nIlQSEgG5a0jCs1l91K28ZF5I7j4pniNAazF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758455994; c=relaxed/simple;
	bh=WAJx3k5OHKd/om3c5nQGymoo5CA4eIqzn3iRQb2yQJo=;
	h=To:Subject:From:Message-Id:Date; b=WR3oDXCrHVAaegRJEdvAXeRqhBiCAK/BsJIrVdYmPJQjhqzmCFt2BAQqSvhO/ueZSXg0nSuzzSZCGxKpHR3aYz39B1krl+xII2z9LLAb24gDKrRgiZdbt7PrWPmIOXJc8UOOR0Fh6uIS5gbbByUF19ooWXZgHVLAHaPnDqLd5y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2lgk8i7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2lgk8i7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BF6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758455993;
	bh=WAJx3k5OHKd/om3c5nQGymoo5CA4eIqzn3iRQb2yQJo=;
	h=To:Subject:From:Date:From;
	b=D2lgk8i7yMPPZG1+otKXXXUevi11CJ2S2hH1gcnnYsXFAPVdxg2PiaQMallgTkSSH
	 WyN3NVkUBO1M8O4EvW6UTSqkFq70DV2l3QPXWi1dRXsNIcmiFdf1FfSzo9J7+zbHCd
	 3yI/Z+YwcW62U2DGvEN0xnfxUYcqdUkhvRaLVxelHvbDKAfl8GU3z6wv2/2N2HE3wR
	 jFtrdpkWV+9qUKlHth0sU8v9m7sMrfccuA6STqFCc/sKWUKRmjK5GzZKL5X1CGbTA6
	 3Qn3HMBWWoyVjNh4RiBZtGubGN5WMy22mlP1PJ1H2NgdwshNCYh/7mzp0xpW6SInQd
	 Ei9iWfxy5DKBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91652CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845599357.1230.16705272547138159653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfce170b4924cafca8e4a5ee5d6687fb01e1b28bbd7c8f0579499cc8aebd3335
Date: Sun, 21 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758455993
