Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520871BDA99
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737486954; cv=none; b=FCQJnIF0w76Knm3rAmCxxizQqGbPjcovDzCs7MTj6bno5BRF5+Agdotb4FIVEDbEU9ZlKs9A8YxcHCmyTsOHwmZTcxtb21An6DEwdIQVjvEZt+RRR5zeHuJw5iQd5paqbx/zmPwb5ekoaOdKzau2T3yPkuLQD5CVtUaT6bAe/Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737486954; c=relaxed/simple;
	bh=tvUnReBrPZ4N7iwpKqdEj4onuPN+S4bCRCCVOGUyJzg=;
	h=To:Subject:From:Message-Id:Date; b=XeRYxYO6DAl7gVjfyy6I3EqiK04NpdmrRXn3CRsExkvahKEYbwnrrgfBDm+kmSzmC79XrAbswKp+4owqc+gZ1AyPwAes7CfAWfgqH2LPLqT9WBz+sf65T23eSVcXNKpJXlCGwtf24p+T5aN4PscHGYXas0QKZgq64uLPLa4DYW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNMGJUOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNMGJUOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC62C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737486953;
	bh=tvUnReBrPZ4N7iwpKqdEj4onuPN+S4bCRCCVOGUyJzg=;
	h=To:Subject:From:Date:From;
	b=WNMGJUOqOrxasespqvDd0ogLUvvnc++ONq97oAyVjX1njZXtvfmxphQ1A7tkxOXYg
	 l3J1vhkJ5C2hYOlvUwuLnCmWFLmkxV1LfUHBk6La/gn+2bxIsHlCur5j06cpLFnhaJ
	 a22vHuxlxhETP1vNfBXwWYmOgpTweh4xgG+iQG2HmYntq8jKsiJvC2fvxAqWaVcY0Z
	 S8OB0sG2FTE2TPiu16B8zpT9XUaWMyfV4ouoJL6t5tFeyLNHLutBNeowTOOZSXh3jZ
	 CTbmPNqimk/EDvBqWp381saZXsXHADmsPb4ni325ITdIicR68YD3sA8MBkj8qrEcrd
	 EHaPH8lClKi2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48BEC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748695365.14299.7168463129084176907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5a5125f6b709fa1d0f6d02cb36288847491193272c98a68d7aba270ebdb917
Date: Tue, 21 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737486953
