Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434602F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745779794; cv=none; b=CLqh9slVY6cY0/m9VTErQkBbwD9ungQ0hZGPkFx9P7um9duAwBFWv4QHFyeHCdMqmXH7K73PM4PDBIaepbbux6f5K9l6n6jxsrW6bMSjUZ21lHS7MmNoBEaPn9CWCvdBZJVeQcZqvH4x/4gpMpVPkiGf7tej53nCHCplKwFU6Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745779794; c=relaxed/simple;
	bh=dd01DWrcfo7g+JfNzsHthQLa0dyyfcxJdnIfmWIldCw=;
	h=To:Subject:From:Message-Id:Date; b=oVjglwLo5OjY1DLYUtUL1+zRTxkH4MMB1nMUnzjuhP70yw3jyNN3XgH8syQbW1T5fpRiBRi3wpYRSOjSEuX+9jSNk/uqVPGQIJgid/o5Ev03myvtAb0byLTFyr8rJsmpwMGDvj2hhLSkdn3bKIVk/lgjFSgnMBGyQgIulGzytzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjkT4KSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjkT4KSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A530EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745779793;
	bh=dd01DWrcfo7g+JfNzsHthQLa0dyyfcxJdnIfmWIldCw=;
	h=To:Subject:From:Date:From;
	b=cjkT4KScVUQrMVO5jXBifOzP0BchExu5GA8gbbtTfag3RD8mNOBvNKDx9fNRuJI8w
	 vsmDt2l6H0+rb5YsmkzUIKm4r/kcHNX0ObZDiZ2oDPNYmrC/BI/AmBHg9ai4bKeULx
	 IEo2JJW7Nr3trb40bKKUpSEKCbfvZHdNrllP9hhM4aEfxDXfJEs7JeKFveoGpizNDd
	 QSGjaswx0tEgJRv49c6w2ZQyvd5z1QoAp2iU0pYUX9EkRo0DPaj0FvxHz/LD9EDUyW
	 X4vrCPFQ8wz5b96IUTWsq2P8ndCQUNXQF4/4DlNV9Y3UgblZdkY1ETH0Q0MwUB92pC
	 qI8SOKZeDP7lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919D3C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577979357.28039.3980311156096867407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297b1311cab29de99b40d6a62f70145b2701f5d1cf5654031522b22db097a1e1
Date: Sun, 27 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745779793
