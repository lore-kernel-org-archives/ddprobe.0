Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7CC3F1ACA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785965434; cv=none; b=uBpZn4Tmi5lOSKI9GXK2x0ZBAXA7tsd0SMvx1onlryzc0ZE76yphvQ/wkgM613Y9doQcAo30F6cVoihxnthBSaiANaf5qsv+AXZrqsSfbZTXxIno7+6d1+alRxRW3qJsM2QcbEvuK2rA+GRvfYIChA7uu9LhlXfXOe85eIuwDzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785965434; c=relaxed/simple;
	bh=4PISijJk52P0M1+Rze83D1pkHeSVVwQGZiUBGKX5NVU=;
	h=To:Subject:From:Message-Id:Date; b=aeotabXM4ICcI950WUpu7UWY3dLdmWM05iVXVzSkxlbkENIb+IewYDJ9zSEVXoXYaxZLsgFcNcWksyO9ZSdDKiXZhhuw0USBPe5q/iN/tJjsYf1xHeFVddv6V+ztTXUvulOaN3qte7tGoJyLDbhw+Mv3svnrfkuhuuTaUERn+h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcwGOGsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcwGOGsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45C7C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785965433;
	bh=4PISijJk52P0M1+Rze83D1pkHeSVVwQGZiUBGKX5NVU=;
	h=To:Subject:From:Date:From;
	b=GcwGOGsSjKDhcMvnMYnAuPHEedsegu9aUGqMIRTqYy/K5JYkfiPBrNG4Dami1zpWU
	 bkNqdYm08l4UBXks9vcX7u/H49fygz8qQfhFAm3+QPtI81H3rZrFwwqxRd+90JhVdU
	 67RtUiEhUCbxC6mVYQ0eQGYWl5lICK7OpfUz8bSag8RcBmtCZHgrKZkLQsiigmVwF7
	 Z4ZpCiSYxACl0tYYlVF3ymNq2P4IJaH9q95D2q44o6fzOldjI+XeR7MDkrTXBlp03O
	 BBL+anJ0GkAQVydvio4FedYrJkDhx6lJeyUoz5D8dqkQoDk90hrCuwOgE1nfeUWwW8
	 P+y9yD6qAAjWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD433C55ABF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596543375.6460.2882566018795484483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aba3e9c7c9701e186533ef85d5f1d2ff230ab93ec69a04365b8cfa2dd77024c
Date: Wed, 05 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785965433
