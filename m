Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A9C2E3FE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790832034; cv=none; b=V66Jl0HSuY4g+TaHiOh648pkqxwnB82I+HLBi3GWqb6DjXlD29wkr2fpJHz0pqdcCMKRBuxLqyUujOxkvYukhHkdj456pae7WHmuMAV1+6nJYyRN6JUlnstdV3HENnL4dG0hEOa9+LHDDatdiASog7OBR/FGBZhRc+i8d48JKoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790832034; c=relaxed/simple;
	bh=bbqTE+CEmVznzdAv4OaKkKAYmzET0/arNirEpuQsMzw=;
	h=To:Subject:From:Message-Id:Date; b=E44j9xSgD8peOcnrvD+c9W10gP12IVOQYUQW4CEjcx3cM+0+ZldyHXUCxwlqRBN810aoLD/2id07uytLuLL6DKG1mOY2yuP0bLQowiOUywDafROswLOAeyRo4A7YcHMcgRVOlwGBWsDKr66CwtUEapeAfv86QoQkJz4V6XOlA9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjVb25B8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjVb25B8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73E6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790832033;
	bh=bbqTE+CEmVznzdAv4OaKkKAYmzET0/arNirEpuQsMzw=;
	h=To:Subject:From:Date:From;
	b=UjVb25B82ANZwTAR8+JAj1Sibm1r1faBwWGmi/aO4E4+zve7ZFFJPO1bIpeCeKNKD
	 YvFO2gvMSYOphlXQISoVn/054kQrnhWcUhOO1PDxe/SRMXSzdWmsCbKMfadZT7ybeb
	 R7Nhem6E5KGTklW7bmZcsiJiPhASNLf2LcPmYH1JxoTx77xO2K/9cAXY1eVppvqpKL
	 TXLHTHyOGgdZ2sWycRm7GF8Be3PgmehfS/+9b2kzYTx73jD3OPhkJOCsggEjWLOIfS
	 7NbVYsIhHIY2p4DICJxUGHGsLszr3B2SWSVtoWhkRD8t8tE7HxuZVtw/twruy3cWXt
	 PLVmgyu3FnZ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC613CA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083203369.22723.16247327518110689225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0fc5a3ad5fb7f8e1607269299353492aa0ea6538091e738539381f97d77dfe1
Date: Thu, 01 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790832033
