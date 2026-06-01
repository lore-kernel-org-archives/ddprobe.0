Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4436030B53E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780340074; cv=none; b=RoRY8Y2TbvvRSFaJuCHgsutBdg35rof6ZrNNgnoyJKaUgvyd2QybdOfY1ZHQhoxsUk0Z5DJjm6NGlEyh6TPqKZQhLigApBHV6vliLrGlqdjzwA+pacH6oieZ5pqtQXnxatNeArW06GnNb4tGgVbcn+iEa0OHH50bM+4cFcEwmNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780340074; c=relaxed/simple;
	bh=kZGaY0ZCi/WT5QXLmh5GgPPHaejvgDhHxEznK4g5h/w=;
	h=To:Subject:From:Message-Id:Date; b=GHMDv2XBA5fGLcYql3982iSDyuvSjsCRm/kNOSj/45IDVxpPYx05UgxjBuy7bRMzDxK0uYNE79rm07gf6ekOU6tt1MJxi19XUctjb1YKefAymwvvV5/v1dRJtUbqZimChGPYvrfukO6/OhTr8gwRoLszwp3mdCt97G7EbQD8zds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcTuNoqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcTuNoqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A82C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780340073;
	bh=kZGaY0ZCi/WT5QXLmh5GgPPHaejvgDhHxEznK4g5h/w=;
	h=To:Subject:From:Date:From;
	b=TcTuNoqgt1yoOLR81oRmzCmh5LTaCH2o7b0G7+ux3rDPDVJpQZyMtYJOWY323SHYE
	 NAOaSEQPl39Bu7CDR0rZ2zsLKGqrtxad7jmNeOuRtggkZazmAP6RdSpPGe9pCWK0To
	 UlLowKX0TmL+fJNBBg7rNfg7k7sE6gITWK+tLdwCRy4k2IcvkzQBrwNUxS27fuRVXo
	 tC5YkctGjg2lirpdyJ/8D3BX/ecB6s6ZRoYrCFlMlQ/Jmvb/9RNHvKuCiO/uxdNDaZ
	 9LWBSfMuS3sUTGEExATdbrB00lKYkcrgb0JyIRyO7KdW28VUCAzVHn4lxxnSdme//W
	 SuYteCA+UkYwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECDBCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034007368.32496.1739582475100017837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891307ad2c1c64ea2e658f3f8c636dd6d7f419c117fb5bf2c9a5610d6e85e716
Date: Mon, 01 Jun 2026 18:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780340073
