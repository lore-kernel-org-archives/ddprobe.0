Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6667E2D8388
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761709194; cv=none; b=XDZqBc9HLxh9dLjlL4K8nSvuhYDPn3s7v8f/tjgmg5icXOGmiNpFe/pvrOBftZHD4/9spOJqGEzjfdwBMwtDEgEUu8Ku9/xI5Vy4HQtnHQGZ4b+uvu2fNkNzX/eOZLJMs8SnYOEeAfAEH+MjEk+8IglDhx3B+EzqGx98XsTHQ+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761709194; c=relaxed/simple;
	bh=KAco7emFPr4LSPpKNr7oHcn0kv3odnrhCfW29CIxV5c=;
	h=To:Subject:From:Message-Id:Date; b=X1MdrzNJkQWmHpgqIzVguCm2+JsOpxwrMnJunglZCcn1/ZQcJtqlMeI2btet7rFYOX7iX8a0F1jgb4il1y9rDsKRPaKTK5mL7DMbNCMlLoaFCVgLt2jLn+wnGS5jhlhKKAd2qjweCmUpjnFQoEuqUk1jlEKT7YPY5aC0oF416Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3LmSNb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3LmSNb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E95C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761709193;
	bh=KAco7emFPr4LSPpKNr7oHcn0kv3odnrhCfW29CIxV5c=;
	h=To:Subject:From:Date:From;
	b=X3LmSNb/+QeGluxyMuCr9wwEFWMnklFGzlDuZHzs8n+g4iQgS42qq+lKYESTAYJBH
	 +ko+5wDCRF4ATPMUJb83sy9iliQ2qEzcpQPDinqP06Qp/nC6SUL33/pRVsX4v40nV6
	 h0v3JtzqWq+1XfN1rztjAQBp8oGCKixxmRD+32QHcctqKjZC/KvXZ85i2MQOTIRtAC
	 /QSdaNVgG2PFYhSj6SOyypSMUuW+4neJi2jw2onsf5LgiZcRM+Fg6UxSwD7sbSf2H8
	 iGAkSXXqeEa4Zh/1P/Fp/qdz4/HRb1anjzgiq3GAs8/X85AYUJb94+uSNDKph+aSto
	 PaFcYa1htBOZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF91FCCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170919372.26685.13331103377570624780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca950a67c5c499845d58c43895212c4ea587672447a80a04a2b5080dfc0fde5e
Date: Wed, 29 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761709193
