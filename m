Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D337A26A08F
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771015493; cv=none; b=sdZ8bQcewXSJjSjq732xWNnykCFN1fwaJYRawEI/TvOAMWgj308YcufB7O5sXgii+h0qamcwG7OjtQ+VnDRDW0nFrVL6wsFRf2+QbyVfwht8KqY06d/rA2N4cfnexF/65Q3sjQ8JJCGXEq1ZHBrSSfHcHlHG5Rbn5uOE+r3rFf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771015493; c=relaxed/simple;
	bh=+Zwlv7Ulp7DcD3sfOa7/cXfChdGw404zhSWgwxLaBL8=;
	h=To:Subject:From:Message-Id:Date; b=PDhSfmkls0mDhXHXpeQaLPrn+xKydhNHXpgqQhisjfjLWft5dUjno1GMdNaeXfEVW15fgza1AsJ1pSAXLAAg1D7ln6/HIjlzf3Hg6zuemHKTxJDqJwvCSDksEdyVLJTxV0KydQ79fK6VQLxtps3HFISC2KgcnUaMZeZIB4xrU+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsmDns1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsmDns1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5697C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771015493;
	bh=+Zwlv7Ulp7DcD3sfOa7/cXfChdGw404zhSWgwxLaBL8=;
	h=To:Subject:From:Date:From;
	b=dsmDns1LWoC/X9faGYBjlPs+Psuum6Q0CKRePxemXbE5xBvlqzHBecjP7avv3ALoM
	 H8F4Al8L9l7yZV1FnQkbnIHxmTYim2FU6hCBdY6BbUPGJuKutIs/BHDwHmRBFjn82M
	 aSMaexgqrBZXmBSbYeeS16FR4zTkRsufiEy4V6lip+xnPp73VwHbbA8M00TiVUU4Jg
	 brFwD3FpR62W1VmCi4DOi4zVXTzhaqtyry/xDtzloEeUgTCwNJIAybUnGe7/0yXyvO
	 n5/o5GjkzAi4ZkXuFPY8vVbRH6utx/qmfQMrOWfHSe8NXvMpX+X/KJpIJ8p+ykqdXi
	 Esq2wHofXzK9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B97EF99DC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101549358.9871.13146102057788711965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7949990ff01e1b410bc91edc211f83b0c764fbbd763832236f9983e400bf00cc
Date: Fri, 13 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771015493
