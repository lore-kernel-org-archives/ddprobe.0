Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D791E1020
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742042934; cv=none; b=TWQD5wMZZWz/vRybk+F/1POcxfqOMDg07Z6fCnExzt9yI/CCrCbZJF//CaTo2NBtfEwOcsF+QqdB8cv3um49QvIS8ouERbzccVI3Z7tDXIUjkX/20059ydu7alBUXZ11EhVi9hId6u8+bpW3HUn0VTDQjhPmse3jgZiR704RapM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742042934; c=relaxed/simple;
	bh=4J7MqanDaZ6CNrthXLONF3HjiE/6/uyUf0rsFugESfM=;
	h=To:Subject:From:Message-Id:Date; b=blVD/jz/XkeUiIVd1813g3VrT+YrImhjgbidpmRsxS9J6UIHFwaRc1lF2BS0XgmcMlHSGN2uO9VkDjvnw2miN3OoN3rdMhIA/w8GIE9dr1l0LpnVyVMRYw7n5YHBf0ft76BdGl3ERLvzSMWVN3ouoz/1irV5DR1DgPdLLsPHfRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pu4jYQfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pu4jYQfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED3AC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742042933;
	bh=4J7MqanDaZ6CNrthXLONF3HjiE/6/uyUf0rsFugESfM=;
	h=To:Subject:From:Date:From;
	b=pu4jYQfkr+1Ld8eAhdqUa3Ijci0mUZMke+hyfOFsSUQH8IgM4wlOK1SdU0JMWkWGO
	 FGTMtPv34zar4/5gTlpdXgii0ppMhVvOx8K+GZxwSEXD9ez6aWbIcx68Uaa39ypi6K
	 IHdEoizM2JiIwy1VBy9cdZnjNZ2+3zOe24W02uS2SFt0yjgNYGa4H2SMNXyINiHSPN
	 S2H5XfGVdCzUb29CF+ob8cGmo0fe2XaNApSu+qvRr+llaRZBKbnc46jsbHOptdwfJc
	 oYeLUqnbo09+Z/n1EQuFR6yPlLTYgFnOQs2dic1JyNztsDsQ3swE5N4bdl7XGbAXyz
	 0UWjS++xKzprw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B146C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174204293362.6625.14547144830469612288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ecf70f6b70325152ff60fc599c0838339d32738de8778e8c289acf8d1100d44
Date: Sat, 15 Mar 2025 12:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742042933
