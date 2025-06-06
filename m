Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1081B201278
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749236994; cv=none; b=io9bkLRMjxJ/jCoLh/5mZl4oynIwVcmp9v1ELwOkuYHhiqi92q16dyKq6sg9E2rRxC/Re8IB2KGdT4lfoCd9kmJx8fZpKK4wM3Uu3HWgQmH/gH0z5PTxr8ui7HZ964u810tCOwFqBpy+y8XkIzQIU0tFLor58zBoKCjd4wO4dq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749236994; c=relaxed/simple;
	bh=8GLabBYd/4TViiE8jK8dO+fzsc7Rs4/xMnqFrP2uptM=;
	h=To:Subject:From:Message-Id:Date; b=kxAOVP8FrOZuK9akNATuxfgCnau9QYIF8XRB+NXw5BT1vNYJEtxlxYE7fA/OcUm12BcG+UundHDxNcqNyCYOoJYw44rTXs4t/hWRtXBG1uZmBfyRLhFNSUO3J9w+y1+DG8rv4bJVb74yUEAlsJQC9xFi4fS4meHRC0zJbU9ed6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VV9jxucN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VV9jxucN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B1FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749236993;
	bh=8GLabBYd/4TViiE8jK8dO+fzsc7Rs4/xMnqFrP2uptM=;
	h=To:Subject:From:Date:From;
	b=VV9jxucN5e5xr/xwhmZU1GmD1ze8QDJeYd4ieqWvcS0x2j/K347uxKc2DPAgEFLnw
	 qaE7H/s69xofMiuVBk4kG9toQ1oORf4QhiKbZ3VnDdD/DiF3x8HSStV698b689398q
	 rZIu6cWl1IKRITLXK8rW3mt5b54ASWZZaX67eFaaw/v/Ag6h6DsZ/tkrLF3bxY9+za
	 u446ZbQaQiVAPzjXVtXK3XcHk8vjPNfN92h371il1l5O5ECsevwmmgM7Ig/ANfk9de
	 dWoRJihBilfJXtq41jpHTu0oAb3A0ctzurZOF9U6QwdhWDetuQn2bNMsrBVy/iYIed
	 C0NlX4IgMnlWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF37C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923699358.21072.2754775263254549579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3362c1cfb41ddedde4d1cba31385168872b6c7aee96bc011f69babd4484ced39
Date: Fri, 06 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749236993
