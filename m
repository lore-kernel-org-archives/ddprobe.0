Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9DE1891D7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719416003; cv=none; b=i5IJUBxn7xCi7E+fVQly7oj7Dc8Ur5jZOL/Q7705S2NWz3XfcixT2BFhw0guBp1UOnO9OBa/y+pP38w+iXV24Ur61g/5kAIhfNrES7DOpQu0ke+L3hJX+8+LB68TwOdKytq+Y1taxJ1UIwiG61K2kaxvDyWiejoIYIWm7p0ls5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719416003; c=relaxed/simple;
	bh=W9TRNzn1suzBEBvpOgoN3f6P3KAmas97Fe8Q13NjBRQ=;
	h=To:Subject:From:Message-Id:Date; b=GcoQdXMyzuYmNe9/8gjhFcm/qFQqzSwZ+9mwRVUbRDgcYFjeSza8P27vishARZCqYrFGisL9MtqXM57WBIEngAYGqbJpKRmYoens5HccunvpJ+th6iSfy2/+d0RS4S/bHguMDP/5Ypzapk5P/6NFqT+k/f6P8s0vkDmiaY0iUHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rml7QJpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rml7QJpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C5DC32782
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719416002;
	bh=W9TRNzn1suzBEBvpOgoN3f6P3KAmas97Fe8Q13NjBRQ=;
	h=To:Subject:From:Date:From;
	b=rml7QJpUS+p7Z83olNsFpEW7b/f/7cVhce6JNGHHCb1isSPxS/4kE5vFvr9P8c+Yq
	 o0cy1X62PbtqcYD0ghF1KKnCUM0H+kkqp/ECRYClFex48KzmGrfAAb89coQYI+EyW2
	 ofafNg6gwtG3l0lNjkhVSxnKSDoUNQpv233nrSYtNO0+ymwwSanD2loFKJnCOQM8lf
	 l2U51xq8e/HkXlUs156DLZ1Zwb+74hBYVmKZtf/tKS61JUP90VsVcEieVNrKxB+SSu
	 Stftc6IF648PzgESDnCPMk/ZHRvGWBxtmS44lxF20eRrjYj0bXSW0creBGCsVhB150
	 QTy0EeTS6Cgzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FEBC3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941600280.23810.11322944182516570796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c890f08f4dd49815fa419519443e3cd09dd98140308bf157f58ba5e718ac94
Date: Wed, 26 Jun 2024 15:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719416002
