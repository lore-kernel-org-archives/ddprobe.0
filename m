Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFE51292DB
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713268163; cv=none; b=sWXSlp8l3oyP5xI2HAe25qARgFw2/rcTbIICfJIXXslBVKiNEnNNeZOambdqz4AtmdUDz5ixEHvJ9LZAkGsZ/MOP8Jqo2wUCN/oWpM1lEvZ5rxn1Ekgwba2q02OP6CO8wX38tya0XJFtc1NpZzYHqP1Fhq27IMBYf/DHcy55oJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713268163; c=relaxed/simple;
	bh=RozlExqu4qci2cL4Dm2XqRwo9mcjSHT48kqKKxxa6l0=;
	h=To:Subject:From:Message-Id:Date; b=VwEgFUMhYQJ+K6p6B/7AVKbiP1ViQp+XbXfP2krw38whKcXs9yUa/iwoz4SajIkZvKPiIjToLNp6e4GVo+7+kTvuk4SiPgzMValYs5xByDEAbjJ9Wg2FYp93f8E8XURXMeH/1dxe9G+jFv0hB6oUz3NF1qiwSjzoFKTXBtsbJdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7ujfO61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7ujfO61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E96A6C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713268162;
	bh=RozlExqu4qci2cL4Dm2XqRwo9mcjSHT48kqKKxxa6l0=;
	h=To:Subject:From:Date:From;
	b=n7ujfO61br+BHimiRF5CcbYdAskF/S9RvEqdAGWasKQxrUCGivctUIyOLlIT1L5jV
	 nfeUwlqT2uQRDVEGl78UUVokoIyijQQGtvc3GrmCU7ZCHAK/fl/CCwJxn2MbjlEXxr
	 rBHx7916SQWCEAzw7i+3gHCaKsa6Oy0E7qEiWkYS4RaLfiOLB5bmD9YvtDBkFJoh2P
	 FRz5sZK2uLsPgAbFBY00WzQtRb4wg6dn7h3wQByDe4cFopYtVFEDgNvaknEKO1V9rJ
	 WfegLQNZT/epPeW9Jl8LCKil12IQUbF58BFoTHV0q+fiJkNuZ7iQCU93DPZj5eInr6
	 oxFqmhKsLI62w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A34C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171326816279.2360.10700493277609696872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188398b5ee6250c4bbdcfae4bce50571faa71b24578404bda6b50a5075da9cfd
Date: Tue, 16 Apr 2024 11:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713268162
