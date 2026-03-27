Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5283603EE
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774630494; cv=none; b=FK11R5t71ET9DHFO2osxU01SDiTpHqR8nZaYpVt8ZNIMhUc3TV7RKXF4GgbWgDu87NwE5xl2zFhrexlwhriPaW5NLn5z19+hzXrNXFLbtyFBtxoWR9Vx7BtJ1bMcTb313LxxcRWdY6XuW2VnGR8jUxepNwvfhvSr9saWPVm6iR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774630494; c=relaxed/simple;
	bh=L4Z37dTeK+2sRdWh4gYxjgkiKYB/5nm9ItdUfZLCNXk=;
	h=To:Subject:From:Message-Id:Date; b=po50xKX92VNl27yNSK/TBxXwkbsw9AvyqqHQK4zbw8xgVeqqh6UJk+L8wF0MLfQ4bvzQLVnwE8bgggedpi5RA7JUI6epF0AsoHckc+6yXSCSKfZDtj5039sjF3Rdz2rMkF1zJqHUf28o3JO05QNGmU2TDoUuDJ8Ln2SDGAEUKWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIs3r428; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIs3r428"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D5AC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774630493;
	bh=L4Z37dTeK+2sRdWh4gYxjgkiKYB/5nm9ItdUfZLCNXk=;
	h=To:Subject:From:Date:From;
	b=BIs3r428oPEXF5eDLtcPhL5mtu5wqkgoBPsMLfXk4IhCGWolaxGNkV+N6FSxDCbs8
	 DGbJKgvzXCBolmB3Ga1tsmDry06hNoqoWC9xGQ/Jf0RXz3p/BNQylQQpTddhlTjYqb
	 6LjCkuzOUaFDMMFCP8tsPD5Zq7nbqw3ad55N5OtlSyU5ftg36B3K2wPb2XzOAhuPaH
	 2Ov7Ew+lGL5bGyCBogNq5g58XjlS1wT8z6DkxvjFqUroUZ6+iXxL3SiaVdiWjqKiK8
	 ZRP3tlNe+hW4I+eftueFavMkpmcVoZILboMi5dKtSl9fWXED7l0Hs3F46Ff8sQDWTz
	 n/StmXSUtkhOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA710F2853
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463049359.26063.9249238112345994878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3020d2b870a5654cb9471d7b139b6df095f140731f2f3a6f7abdf24365941878
Date: Fri, 27 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774630493
