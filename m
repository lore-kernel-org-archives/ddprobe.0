Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FDB26A0DD
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748933994; cv=none; b=r77keIGe3lDVtJy1fi7PfFzH+sAvmzdKLuGSReest1FTOHzlnD5Z7F6APpWojjuApdJjm4XIEqFSVx03iYi9A4GqKfeEV111JGecT+xqr+fftCwW4atOsFifnbV5bxWAaDabN0zlau2ds4sPxA5Q1oNvr1ByD9DHhfEqZPMtLrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748933994; c=relaxed/simple;
	bh=PBpheY7iXScBeezWHsgpj9hPqL8+YtFfFAjgOkTWmMU=;
	h=To:Subject:From:Message-Id:Date; b=EqO6z2bBwA33NIfhn6vamoV9Yfvea1Ehhf20R/VW84mszMqKzYEPKZI91A3Njy8X1yrCoNgq76tHe6XSTBmJkGr7YO1Xuj8yji+Nckod0K8L9zgjCbRes+Kio65Nu+atHRqMwRTa2qGumO+cZDoGaWpWDvOrTglEiy4TipAyfZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nz6EWXiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nz6EWXiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4DDC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748933993;
	bh=PBpheY7iXScBeezWHsgpj9hPqL8+YtFfFAjgOkTWmMU=;
	h=To:Subject:From:Date:From;
	b=Nz6EWXiAOqGS/MMC/5mf3zQTujQf7Z7hvsa2h/z+AE/unQ1zb7Mv29rlgnLS9oaMB
	 cbeWzTSORCZlY+B8V4frcXwNGJDtE5481PlMZgnAUpMQAygl4okin1P49mn2uumkbC
	 FvOeK2VD84DXcaBMaTZxjAW+JhWVGX6K5NmCDnjKNbxEnKB8YIwqQ+HK/HQop8fiQL
	 HNupv1EZYnyQeCFs2vXaxy46gcry1R/ue2OroEg9zB6K7JfLjcKTntXq+y8co6d/8P
	 Qd+rtVwwChE3ErfHzBuMsNfiirj2kXJH4TMdLRp238xlpIRCLrOkuPCbBklcG13TVg
	 S3TKmThWyXjKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD7C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893399358.2192.10100091067983101579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2166b97655c4bc9d46fe64356f61fa118abdb35b9b7f5c11f286431c92c0ec26
Date: Tue, 03 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748933993
