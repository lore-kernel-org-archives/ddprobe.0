Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E2C17736
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757062794; cv=none; b=qJ90WNSIZWjK+6xYqH81BnQfppoy/nwzN7vHBPgSgcYAox7FhI0lkYmR8RC91B8rzgs1mkPR/wNcGClsRqU3D+/TyRaLhVgctr4/2/H3eOxe8LpiRgC7BosF8fEZVMjduSwW3QWBfdrgeYcJcRsCEOxdFDKdp5Su4Y1DlHNu//s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757062794; c=relaxed/simple;
	bh=qgLuToPL34pyP8vemDdB1ZSwJDK1rP+M63b35JJ8FMk=;
	h=To:Subject:From:Message-Id:Date; b=N041Zd9deJ1n/BJmJAMPyvsoGC5WDL13fzN8BSoOmXs2BT/WgXIMnkbGLwNVYdQOE1JGmsfdJ935Bpg4eH3TzH3DXc3RaiERQotCSVEt2RDr/nclmTMPBEwT8+hSLaVigJogWebg4TRjHrTE1NaEBFXijyQiAgDwzxZ5NBvRahE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQmLZHMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQmLZHMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F3DC4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757062793;
	bh=qgLuToPL34pyP8vemDdB1ZSwJDK1rP+M63b35JJ8FMk=;
	h=To:Subject:From:Date:From;
	b=oQmLZHMNDXNkx/SxzavoSJc5LBKeLrpKU18tn5djibiMj3gTE1HcigXy0W4mynfup
	 vWu26hmaGehHrYD6ghPmvoWYscQpybWvmAWdmhwLKNWss2WGGZ6waXcNQro1Q1YLR0
	 6NRIqwdUlABbVozKLMFxK2MxVjip1l9aBppsX9SQjBAtGyW/HFD1couW040CWjyII2
	 N5mxryW8kLcLS/+P2JcPwBr9rHEmu3wPl6Wu/sqrCWHRjUOUq/xYDVu5ukZBNVWxKU
	 2Eyi4vpQW2z/Y5qIqpM3/EIaT70W59ww+Z+2nObb79XY+B1tPkKOIfofM3DUpT2Sud
	 tt/9v3+Mdv5qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90226CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706279358.28171.11488857556250138369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9bf7249f3f255d03fd2212358727cb999c7b2b689d613eb96eda29aba30415
Date: Fri, 05 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757062793
