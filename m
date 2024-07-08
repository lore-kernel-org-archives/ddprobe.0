Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63676A29
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720412783; cv=none; b=lgt8F16sdgrYK0KjOfNCEqED0Bij+i8ulASCieqviP+em48cX42IIMiJo4BoTbIapPZaJtlSnUGx7zNS4iCT/oNahZW8/4DCxDX1fPg6ymySWTL8IHQiK3VEvU01juSect9YiO9Y7hHI4ZtPOim4YyN26dl2W/vSBOilwV9Zy8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720412783; c=relaxed/simple;
	bh=Md3mdRWtr/W0U3kP53fIQlnHCcJdAM5922a8EUsJCkA=;
	h=To:Subject:From:Message-Id:Date; b=WUuvl3ztZ9kLI3GI34dSq8nGGEfAPoRX/bDZvXzDczLfEDw0OxVqsUGiuwbpHcwjGa+S4CXyfplQoixR/thpsfyfs81G+Mfb1LXyUS/EDwwfr15ruji2wnk6KIuDx3o9K3DFf1T51S0zjqjmHmSqN3A1rrQzzRLV72J0etOOcno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poBCChOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poBCChOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01052C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720412783;
	bh=Md3mdRWtr/W0U3kP53fIQlnHCcJdAM5922a8EUsJCkA=;
	h=To:Subject:From:Date:From;
	b=poBCChOG2uwfaRsIvQDHdP9dCLAnsgiTnOSr1FUZPAk1zoGH/WxXTHt0lAdec9a8E
	 Fh0c/o2MjcLVFIQGHcjdtPBFlVKHKBp+halcD/suc/0Fb76pOPcS94u1HbD54sXNQ8
	 Nx4CYuFTa7tvHLwTlg6VrhjfxyqqJ8SaUE6/MgRpwGA9w7zsp1OsXb3rv3W1rk8UAe
	 g3c9TB7h1kzHSfhyT97VUdiOMd9Gd1aHmtlCtIHiZ3nfV+QbQK+uatsQVbiVbufCJP
	 92sOVhi330EMublFRAcC7xFVtcXl8ZWKl0dVv+BID9z3/tqFoShx+HkVN+5eai4Obr
	 q5xHcERAGf/yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA849C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041278287.26599.7607311966774334418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00d805f2a6bd904832dde38f155c79e1d40437af47bc64b00b108d90f1bcf47e
Date: Mon, 08 Jul 2024 04:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720412782
