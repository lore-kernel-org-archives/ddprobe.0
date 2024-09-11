Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEAF156F33
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726044354; cv=none; b=q7obMZFk2wr5CyowbJIlrAMf7hzcUdniXoQ+rQtZPJiKO2rHzIkGXuuy7fyTyxQglkuSIT8Gkb2R0k1yVwSchV0Ps60UE3556XDKwXu6Pc69YsbaFgmpvJZ13iNaLcwiGl/VwqxwDzhxvrl7tf2vddWhaR3pTE8Ji2zX+cY4iMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726044354; c=relaxed/simple;
	bh=HCe+B81NYSbxug+DUlLSPrwoup+MkUBK1g25ERtha+o=;
	h=To:Subject:From:Message-Id:Date; b=J4CO3ZG5QZ0NrlurYmdrb39uNeVsLzB5aHwr3Z1WSy3o++EaG0aDiC9vSpPUoqPG74IdxbSAlckeJeDnduzd4BNWB9tIYUvnEp36uOKhVAISqDp0vfsUcoPTtDPTQWTAMwdK97/73XBMo4/y6KRpBPxZZsineNCpTmIWY+NEPfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYKii7xk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYKii7xk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCFCC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726044353;
	bh=HCe+B81NYSbxug+DUlLSPrwoup+MkUBK1g25ERtha+o=;
	h=To:Subject:From:Date:From;
	b=DYKii7xk1GXVUtvnCJBYr8QhdQZYG2u63qCWiaA8avBOYBOOM+tN5Ccv2bdWRPDv8
	 a+1v0GrGZpy+Vc9t+yxa/W1xwDMkeGmWgNwqke1J6iz1a1vKqeDVi/kEqHHI8iPF+O
	 9qRiVUI7ghLYLAQtI6rAifuR1r9/FOyChnu95K+g1GUUyc9Mkb09az8hKdMP10UENF
	 7+FEGaDQNREQhlleQnT2aakujupXchoVbMf9mwGtBb7LmUkMcgIbIiltEjZhLQzO3z
	 /yKDihgGKVwcXVum0Lnt5yha1obvztJZw3YJmgaoGyWaE4lwx7KvNo/wMO+EIQtlXk
	 6LMIDBVm1Zm5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C546EE021C
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172604435358.10736.14685799262451652008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98276217cef0759d52e53a9678c6e95ba429945db156fea2cd5f3904637c9195
Date: Wed, 11 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726044353
