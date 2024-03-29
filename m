Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A73347B6
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711754897; cv=none; b=s61xoTwJVthNP74OXZ2n5INLhezAQ1Vp1ga//2GeFjjYhS+o8tB8NJ+3l/Xj6Q6eyOWXScVg6vxSEM5vL4Dkj87oA00G5u89eBvzgSr0eGa4Wche6ciBW9LUQcRW5zveleZUEvGMUwrjP6rNQE/neaCtQo1dN9WGkeDyreFgz/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711754897; c=relaxed/simple;
	bh=r5XdujjUfS3J7x6gkMEkDAbW2h/BjC78FPjhO7YXRz8=;
	h=To:Subject:From:Message-Id:Date; b=rgAPgOtA+Vepv30K1h4O6YICD+gSKHxd3SU7NDY8efpPqGxvglDUIpQisCPCr0Gbq/Tp5wzw/XOongS+AZDcAdz72StrX0jjb9wgdos73VfhITBZaYmhPemfvJ5AeS/dNDTHVGKXEhdE/dHpCTM6AqAXx3GEuCYpDqCOM0YJLW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLsozXtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLsozXtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F2FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711754896;
	bh=r5XdujjUfS3J7x6gkMEkDAbW2h/BjC78FPjhO7YXRz8=;
	h=To:Subject:From:Date:From;
	b=aLsozXtK4SjTU8rpOGHwa5l/DTqLSwQJ31CKf7o16WV17Vo1Yrz5RWfupKnx2+zfn
	 BhS9l105HNUJyF3ojvkQTFyif6vWnG00s/59GuCkRUah5KLvqUIodzJLcLnMpNdFyq
	 C8sHp6a8TDPuPWeGkxt6CAWLsbDsU5F5yEmxT4ED8+jAzNre8ipNl74eYTjtgG9oJN
	 gQgiKkJSC11T4ZQOPGRg98BjDSVjYe8oTub+1VOuUYcmW0ziL2aN0nm94soLX9vd8T
	 vh9Ax4QxEMad4Wtaarq5+gqExqukgTndFi3UEQA0Z6JvuerGl3bGEaFKKeC1RfD6fi
	 ffEowBjuOn0Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A605CD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171175489639.29813.18261342848235176895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211a899e49c0c81141d3a60344e26b968f3dc40dd5465378a3d5055cd3885d3c
Date: Fri, 29 Mar 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711754896
