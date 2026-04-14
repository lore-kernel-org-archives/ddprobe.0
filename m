Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BE382899
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776139654; cv=none; b=DkF0SmcsLA+0GuS40+kaa75wIrNbI15BHQrp7VPpwDVLqZYSwcOY/xTVEH7HN2jZLMfPyxTxcoZKQ9XLJ9XtO8vZbAERhQeXn3Y4xGrjBLPkU/7tC/DgGI4wbaFwq+q+Fl2Ny+SF38lKiB/uY7UcagsWfv7bcyvoJiHB4pPyN1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776139654; c=relaxed/simple;
	bh=0OdKbgjgfrACVXj3nXm8V5Lf1g5N+Te/bDzINnNU0A4=;
	h=To:Subject:From:Message-Id:Date; b=OGu0TXbzXYQVg4UcMCubvQsAx4izwBZk/KFBM/Csx9FRx2HTxlAOp0O2/qgiIvf9c3l44ARL5AzGymlKVG92wN97jlK+h+PT48C5F/MpXhtnG/GmIRd7OCk2XCqT2yZwdn6cT/bmqQ17c+1xgJ1czC3Pki0XaLtIbHyxwqpe8pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3qOdylb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3qOdylb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18E8C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776139653;
	bh=0OdKbgjgfrACVXj3nXm8V5Lf1g5N+Te/bDzINnNU0A4=;
	h=To:Subject:From:Date:From;
	b=G3qOdylb88Tp/jloDxUcFY7r5L1FDlidqN/i8TAgI3BQ4YyBVM98Y+sA3Hz2B1zpb
	 2hx/R3qQ1rEicXqJT/OibpW51wImmum2rT78bWpt1WcfuK0G0JqvIIHX+r/aE7APkG
	 xq2bz30abQ48aQlWWZNuxhuvxl/w0HqniJBzZUCraYgww3A97bVwWZNUGYuME/bcdX
	 cZAxH1aRhcJqKGL+YLa/+xz8x5UZZlN117IZBlsLKW2HqSFgUxc94VXxQslwpwyDFv
	 eYEfCM0+AEiL3UWwQB6a6LeK9f7Ednb5c0nRot2CxjDNmVHwnVDvkqgHyygKJDjSPe
	 e70pfsNr9RnFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA2DF531DA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613965368.31389.230641631484937170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75eb8d56df45b8b0d4f9ae7973aa9e8956b54e71a991283b937665d23ec28c8
Date: Tue, 14 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776139653
