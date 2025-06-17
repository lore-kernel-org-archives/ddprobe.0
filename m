Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDD928E8
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750175393; cv=none; b=idQbqIQxsXDIkS2H3JK3CBTjpSsCr3hS1I7oPo/b2YjyE6SltNsAW+CyjopRxIuVEhJEj4fGlvT/d7MxpfmxgKPS7eTDuIVEZINGYfocZ6OKdt7vHHfYo7PYK0cAMZdGrO+syzPc5AUqxhI2olYOuE8TtMgFnQs7euNcITnIaV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750175393; c=relaxed/simple;
	bh=g5p8dVWIupWn8Gdd1SZX19Hrpw5g57+FIAETyrwGnlY=;
	h=To:Subject:From:Message-Id:Date; b=XgFhlTuSVEcRIVfaLomBFiT2Y88MFAmhfFpWAP13YjSq7AuMnlhbglfyNoYNlORUtrqR/kE4i1KNRPjhES+j0PFM180IoTAlusu0mvB9OOgUH1al15nVQZaq5j3N2NAWWTBF+Hwk53L9I5lt6AzHC+WDbVKdxEd/LFYcw3yGcZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/n1WQfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/n1WQfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D01C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750175393;
	bh=g5p8dVWIupWn8Gdd1SZX19Hrpw5g57+FIAETyrwGnlY=;
	h=To:Subject:From:Date:From;
	b=n/n1WQfoJVijXnvxBmzD+xNAsblMwecqJCHoBndfYxeRFdPnLkWaaZ5zMFwg8lf8d
	 PMpD3uILZUc1ysLVsacWvHnv1HOyAP0IE3wciW7IHUG1RRvTKqJn+CJtLKzP5LH8hT
	 m92UFMzw4yFTwZ6PhHplE5oikFtKLswmzvN20pMbdxByr8mABM/QjBsBHGurF9VwpJ
	 QSbwjI5DA1CwvsIt6Nsc0q7W2MUX83PvnLICZvSG4woZmUz+0ETEj8jZuQrnEXkbim
	 jFSK+0OZbWbva4MIG9hdjgk7yE4PGtUJPG83+CcHyEwwnQfJxcE0T1YMWEBUXOLzaL
	 bz+kSPpYaYkFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91553C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017539358.13721.7146352977860544702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d1c96ab0a33f59a12dc1119fa9551c139b8da55639ebe5d8d8c443e7b22138
Date: Tue, 17 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750175393
