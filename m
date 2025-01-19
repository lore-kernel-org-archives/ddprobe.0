Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D2819B59C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737290754; cv=none; b=ZL+hKWkZis74hNBZBKG/f1KZ9yZ0BRYST4fXWuZ4bj2XG5HcGXgpd8RcWxn+1theVeTnoz8ijAuiy+9gQCx+YRabuIOjjM8NQuhJMg5Ki8tHZrYZFEbIK/t8qaGOlCAZ42DufjP33zlR7evf8uC4Lcagw5VB2JOxO/Hx1F+Onjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737290754; c=relaxed/simple;
	bh=rBTr5hMbNG1iNnz1g6QTHwvYK6/Narc/Kb8aUxqWP+U=;
	h=To:Subject:From:Message-Id:Date; b=iXQvv57iFoZv0uoCGNVKDxxN0I7tQKnExWJA4rtxUAm6aziktxl/fH2Dneu7xwC3lgQ30DOdZd2D9GuglPmARd5J91EUmuCfQphJDXL2Qr5QsTlGuuHtcprmewEBI+kBNiXEi2tv71/3fHjX6r799n/NHplMMn8j/+li7frBZaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erYMrjxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erYMrjxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9538C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737290753;
	bh=rBTr5hMbNG1iNnz1g6QTHwvYK6/Narc/Kb8aUxqWP+U=;
	h=To:Subject:From:Date:From;
	b=erYMrjxoVPyNycgVe/7CifNpKCtcyZmMVy1k9L9mAwr4LmrYq2afuHhK+exK83th+
	 8/THwfMpiwypQkg8nLsQ0X/aExlgw1v4n/rjERk6IzhseNu/WkcGGAoc07c5qezlLj
	 EGcznprLNx8eWez7X748Ha0yo6vm95AbZf8HSlxi6+8N52YqTxtEsVh1mWbvAuDrU7
	 ZGeBYVGChH68NlFMetwhVCqDVpb+ZDLJHoRvDhHk5QIlQt8INRVBt0WrRi6GWtfn1n
	 L8pQODMr0s1voQv/F/MsmTKjXvYdE9Yn2ckumvKzPqQtFUX1ujrgkfRtZhkOdTf2/x
	 POdgkG8He0LtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EADC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173729075358.18982.9587080562638581827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc47cfe520b904c111870687a6cf448c1d36b0af54e982b7e51d598aca711df3
Date: Sun, 19 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737290753
