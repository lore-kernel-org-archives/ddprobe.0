Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C521D54E3
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757745594; cv=none; b=pLASaeRd7cSkHxGNr0dTELYLmDA7KoLwvzMDAwnX+bSEFCVaHU+7kxmrMikCsz3NQW2yB+CBvWoOWHMkQuxIbAJSuBwYXJ5HQtYzvnshShK/7Q4NHYUgin+9MM1+oAragoc7uT6Sn9F5yo5Ft6x1Z6VBeH2sWWvh2AcJHNXlDBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757745594; c=relaxed/simple;
	bh=ZB1s6qpqXynaMX+37X68r8Jqfsuc+ZFA627twcJT6pw=;
	h=To:Subject:From:Message-Id:Date; b=I3WMlNCLmJ66d+Pb1/TMsHa8m4aGYmaetI85l7IjxQAPxlxvOcG+Z3MVuc9jZUob9QJzh8m1mBrDSZkSEuHRCZUm0B4gJWO7kV1XieZRmBIuKahOu/pe272mm8yXO60lo5YJilIQBc36lAwUwJVTcA2F/5si7WTVBKWD98eKVa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1AtyReX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1AtyReX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8662C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757745593;
	bh=ZB1s6qpqXynaMX+37X68r8Jqfsuc+ZFA627twcJT6pw=;
	h=To:Subject:From:Date:From;
	b=R1AtyReXvYjosTX5HwI5WJEPYAvYKVYAvkTvqClYDlwgQCIO8BvgA74UOFgQYi9Zs
	 OBnlLEO9JPBfT9TSS80So/zxu0GwAREgMffhJMnRnjIH7vjkQe3cR3bQNLm+Bkhzy9
	 6KTOENyFLzutMQBXAxf+1s4HQqh+dRnLsfuDiMFiGf3NWOFFLybvGidMSbCCns7VxU
	 v3nKVMd/ANfbeNyzpdD5KbksLgtbDXpSyC9b1aYDgm2n1oDCsKJEaRHKt7i2sDv2jF
	 gLOLeh9yrWM4t/eP+qytS39jJkfZlVqOmdITJ0SQlex5b+kJ54Ks0rITa3wPgUXFCj
	 J3H+fNLw+Ou7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A9CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774559358.25327.11532854729001617068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12145a01eb61d484f8f8f8029fd322045eda1a2ce1637e53c52cc52bfdf2b95
Date: Sat, 13 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757745593
