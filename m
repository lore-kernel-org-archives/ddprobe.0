Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011111459FA
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772754294; cv=none; b=ryZDrX4yM/knF/ihGEFr3YNF6a5/AiE/0vwKZlGYAxlW/CjxcKR64j/gQaLCOS1pRv8Nq0F2H1E9d9Utrua0nLWib8jkcFGsSlEeqqF801sfWrV1wn30TpeL9yQAOHbd0dAAlNHosMsDXf+3urZnr2Zkbfr3ZPK/ssY2GKeErZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772754294; c=relaxed/simple;
	bh=s7JyEOWi5IM3DpNJY4Dz6VdDsObLUO0IR/h+vWbWer8=;
	h=To:Subject:From:Message-Id:Date; b=VgLrNWrjVmvFTqeh1iekxpUqh4XL3jjqKsDCMqnYZuD1lyz/Sr6Mg65AHG6B0ax1dJ5BosTFnAlGuYP8xiF5dAXGEO6M451ed7OjVpLPfLE9L1a7kCmFVpLulR5izRctkNwkR+G+STiktR3os2zbnIhV76N0wDBnvvShlTjYmkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGkORXHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGkORXHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A561CC19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772754293;
	bh=s7JyEOWi5IM3DpNJY4Dz6VdDsObLUO0IR/h+vWbWer8=;
	h=To:Subject:From:Date:From;
	b=cGkORXHF0HiFnisZLq7j3u5j4aMn1iDOXsnP+cwoHMp8ss20/YtGzakx8iU76N15a
	 /eNp6r7+XzgAdr3vUa5ZOzu4oNqNXjNcEvWbAamFpO5abZigOh8aEb8mQMHIw2CP5w
	 8e0Qe6tgw04ti+deJb+AZuxbZC0OYQLz28yevngCeaIzW3wNf6nBoTFe19wOHuH7Be
	 u8KtyNTwsq5YhmZrpMbTzCjiSwn1NqmssQRRgY83jx2SG5DIIfGwHN2pfhsB3Y6Lx8
	 I//9Q0fniL5DvjBFrKVly59WfM4eFYZ8m0fiQFXAfzfzhfsFclbmJB0V7JVTfylTfD
	 1QD73c7061GuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931ACF513EC
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275429359.20331.13264068486798717297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282c5ea71fe886a8a90c3ca654276ec31b29bb0a224f08c444aa59d6546829bb
Date: Thu, 05 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772754293
