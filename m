Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4B53F328F
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786097434; cv=none; b=n+1LxRzrI0hLFFap2ad/C+QTm8aN3xTkz2Cc3cJSRaGejacSM+7W8WaOa7DqnpRM/717FhWRMkZl12yXB9CN+4iG2gSV3e6qVzKCZsk+0+I3JSeW0+ilbTJ5XTXEEBm/Jflu5p27URTtLuVS4TdkTIUDY7HAEm9H0ThcZzy6Ztw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786097434; c=relaxed/simple;
	bh=QMNYbx4FzIW2hqGMxlLqjtlnEyF3rPutHuuTSQytxSg=;
	h=To:Subject:From:Message-Id:Date; b=P+O4OfoBor/nyyRuiQMlJ85bk1CZspYaoZ0W7T5a21Hr9k5+zz0xxtmSqH1rZzNREEjIWbsUryOH868XvwmNRJeyozmqmp9LTqcpGjzM1fJG8POTUBM9j26T+cQbbZyd2AKmP74fLKWxUH7YfF44Dowsmpl+pHAR5GgYscclem4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfYpacsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfYpacsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D075BC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786097433;
	bh=QMNYbx4FzIW2hqGMxlLqjtlnEyF3rPutHuuTSQytxSg=;
	h=To:Subject:From:Date:From;
	b=bfYpacsNJs/aOXc84Zy/JEGpM5cTKBzQvfFvQXx4Zc9jDeT1KgSdl/DULqjxN/pdG
	 3ZCH7VWH7coV/8USHOM+f4J69cimlGqR5NJGOovVZ5rbTplKkJ5v6ai7CpE1DbBR01
	 dhtGV+hM2TfqZBVQdnjjy1b3Q7OLXfTOArzgYnTnXTvIHdD4nHPqzPWRXRFi4giwga
	 ux7x1keyIuFe2DbQ2NWlxUf60zLz9imer99s3uClc/28d801KStki0EkQN0mvOGRRp
	 vsfz7pduJzN7lpFPwNAb/En49RPgSbSxgI9kJ+QtIoGW83J/eAsU2G6VLKgCCqiE2A
	 KRdGAiPYsAbfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E35C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609743368.6387.16742673143987750716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dfc23dad9dc008e14764a2b6a066d1a213aaba3e72ad8f5bafc013e967f81c7
Date: Fri, 07 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786097433
