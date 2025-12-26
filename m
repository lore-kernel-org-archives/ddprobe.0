Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC7B17A2FA
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766732034; cv=none; b=rEYm8gtSAzmUnqOk9GBfelEF0LJzwBO+ELwoir2DDNcXlzoSSvcNod6qOy7N1tqF26v3hG4ladTPjF3gq90ht2u3e04dbEaWPvHgWFh8D6BVLkubXtBNfhPpEP2Nl9DDsLAGRcHIzNCLlxGi78OWvkqfAjVTn4f80+quDBczyE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766732034; c=relaxed/simple;
	bh=W6pUToZ/FkBZHUGDe9Sl6KAnXjVhKEukxXLFL9KQeNY=;
	h=To:Subject:From:Message-Id:Date; b=I+DiFqXBNFV5fKZ95awQKRTyT75lRnI2q8c5HMiYCQZNB7f/qpldZOERyn5+3L5PAkzAWWyN/1XYqdt3zeWAtmKnwUzwj/R49ozJkLROVMcopkBUOA5VEhwWf5/GzqNAxd/jMjb0Co33Kvv/GRGt/PndoYA1W9vWu0mvExbHwXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mA+CbbDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mA+CbbDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6601C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766732033;
	bh=W6pUToZ/FkBZHUGDe9Sl6KAnXjVhKEukxXLFL9KQeNY=;
	h=To:Subject:From:Date:From;
	b=mA+CbbDB+W53CQuuJz6NORJpFSH74FsBw3InufzEvciZyL42K7XlOTJre24p07xsE
	 sXBUfekPhrQ+qDq2BkjiaEpKACXIq8SRJys7iGapbx2TSk6V4+I08hsgrm1CPHxN/+
	 P71UIhPJrKcqVxVfxI+cbbw1L0Dtl43zA/ChKwjnApqMrqVNp5+T72eg6cX7+ngoPn
	 N2vq7AmhKrjc07Ecp/qviwnktxRZ2NW99SqrDUkjsxEbjpUDYGyS+UgdSQvPyzOrtp
	 U3MN85cIUPMdnUHje+yExLhwOzf0pGpq/h0i/EAJl48RahJOK7DzeQgmTBgujcFHyk
	 lPAQz8c/P8FPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923D6E8FDA0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673203358.12411.4804767439618558614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b0ed9cd8927e74b0e7f1f396bdaba7a58aaf2ee61493b2703d4bc3b7db1dda
Date: Fri, 26 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766732033
