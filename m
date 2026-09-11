Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29126438466
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789141235; cv=none; b=U41eq70bep5sE7bIt8mq39/2s8UZMuWTNZ29uu8PRNTUzPLtPrcD73is8fc7mZp78/0IxRXUIgWu+vFhFwcG96lGwATghB5AH+W/VVn53ySR6LReZk4id7gzMjDcKa4wTUaEw8+VGz097TGguZrzg4cV6Wa52I5GTprbyn0PAnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789141235; c=relaxed/simple;
	bh=ez+yF3bMEhfXfXi1VnhtFW5xvq/d6pZXsZsbuIM+HsM=;
	h=To:Subject:From:Message-Id:Date; b=DEODQSChwbbMu2RBJ4okXKnDbs5lKhHv5dANLEnTfhlZ5hlEdNmbfNc81oWWfd/ePzh/yc3nrmdF0YcoGdaxGm2QnhvQxeRf99gUjVBJetIWcO5icCpOBMIjaBoK5vGkfER8f5YMpH1zR5XapzaAT+hA7b/wRdIPrwZjr8ksWCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vog/mlos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vog/mlos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A8FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789141233;
	bh=ez+yF3bMEhfXfXi1VnhtFW5xvq/d6pZXsZsbuIM+HsM=;
	h=To:Subject:From:Date:From;
	b=Vog/mlosxAs6LKfTw2OGpzRWduqzdQdAyggP32kaknoh/WSAPvapoYdW97LUMcnwG
	 nBC83LtkLwzlgwWwjyxwrSCZBBorxjUfNGmvrq6TcavbSYWLzVugKkJ5jxhFCbr4rd
	 gZJ4O86kPWli3fj/my+tZCA15WCTUUaigrnM00fCOTh8NrXzpobRQ8D7Gea/gXwsNI
	 HkhtjCeA0FgGZvxODv8cKcu60dsacVsrmzxkIeS5BhCd2dOQ+mRPdJoXMMwC3aDARx
	 LLb6PQ0M3JBolyCjFH4PN2wZ5yEIEp7sADfqhXm9cn9xlo8aD/CFHVYQABo6etG005
	 WQ47boW5esSGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03EBC88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914123371.27455.15962965391573358140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89ed5cdb7ab0249713cd794028a5d0036c61cedc9efca8feccd898e976d9b4f
Date: Fri, 11 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789141233
