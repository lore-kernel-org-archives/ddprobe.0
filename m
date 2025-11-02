Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3541E2376E4
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762061994; cv=none; b=F83cO9muqwzQULzHCxw9fEQq7MX1dzSXuBzXRHSA0F0yE/24Sr5FHuhcHxEwEzBP+/WCQRW/Iqrnz4HgtzkBPvSEC3344VfsbhsBQNGBZLiY6j/rYJQrseZHeSOEBE1fnU1cS922fzyxS6A787oKQ1rGG0lF/Zx9VRlpu8gOkY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762061994; c=relaxed/simple;
	bh=QXiLA+UTEjFpjiZTgO346N1pYVl1tZAnVSx4D27/1t0=;
	h=To:Subject:From:Message-Id:Date; b=MrG2JKakzrZCmHRi9WBpBqPyDDGdjuZzPf66rXQ68f+ZrrffT6coUmVO6XFf8X2GY9PLjsKN+pW1cPMDW00jPn0tutq+GJ3pW9UOxfN89Dt8NQkmwvkzgXzPpx1CkuYKuSIioIE46KlziuiR5/auSO0wvJ3NGn9ESbjzLlfO3cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+QDmDvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+QDmDvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F64C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762061993;
	bh=QXiLA+UTEjFpjiZTgO346N1pYVl1tZAnVSx4D27/1t0=;
	h=To:Subject:From:Date:From;
	b=S+QDmDvZ46mdFh+vq3BgYbgIGEEo+MU51GCq2xPjGnwFbIE/ryY/oNtGrMo28+595
	 huD69eH3qUGM2jeYSzi9d5g2hFrvnZJdw82UzHnvlEURE0Tk4O8JSi3DqXEvEGNpgv
	 GnFPfR7dmdEF3BFPJNmg1IJgp8aSAcgqbDUXMDTjmQ76PXxlSFK52VlTs1F/LCd9AZ
	 Meu6kNLxFlbkB7/rju9Vh/cNgN4qiabgSu6zMENU6Febt0b7OFOuxCL6Y+Wi+OiH5Q
	 y1tbdYz5kOqfvInza0lb/1V+GwE3h2y+jAKJnBAWDorNUWxTaz1NDo3Je5n7b0zj18
	 VVWSmgWi0geIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7D1CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206199363.24258.2607691185473312501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b5ead6acb31d0be0bf50bfccb18b67d850a1d298a12a48891e2d0d63ef5dc0
Date: Sun, 02 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762061993
