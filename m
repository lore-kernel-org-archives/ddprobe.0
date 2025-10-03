Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC1B264FBD
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759480795; cv=none; b=NSahwfiHXTm2AXx6Ss4sQa+bDpXf/a+ViiaDQlZgP2QFThiDA1G4JnM/mMe6lOI86T5t7N/O3+GODXm9hd++6MYcu1WidgFVLU30zudYkyZWx75qMPY6kk2hWUj4ojdUOwLuLfl0qwyY4x52A9y+uIKfR/ZbiAmJEPHhVX9rUDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759480795; c=relaxed/simple;
	bh=VmIOG45vYTv5dgxydcZpn+hLJTuOBNaG51KqfT2GDWA=;
	h=To:Subject:From:Message-Id:Date; b=mo4Q+uYGr/SkpzNg6i8MDo0AgDGfWXzPZh+0eAO52NGjKe5Hl7ndxfghTcGqlYvayj5/c6qpqBWibRypFMEVlsVgNxcQzewO9BFcNrJJ6DBlvS8ZPmtGXQgB52yzVJmp3gf0NDe1scuEpI3zRl4xXtnGMQOon0PqYZeawQaDG/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mq+w/Njf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mq+w/Njf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39CDC4CEF9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759480793;
	bh=VmIOG45vYTv5dgxydcZpn+hLJTuOBNaG51KqfT2GDWA=;
	h=To:Subject:From:Date:From;
	b=mq+w/Njf2eG1ROWR0DSS2sxNeNjRXncGZG7iKhvplTXy5m/L5R8+XttQXtnI+Qivg
	 gj55mbHwNoYIAiOw26rl0Gc/tdiCVwrf1ow8Qj5sKIoT2qM2EO1gCEcSEj6Ho8hCSG
	 AIUc/20/jOY+SIyPPAAkXrvwj1pd2jqTaUf/o4uuCuoC5PKjmUyhgoT1DvYfZ8ImY4
	 s/djGI2jXCGqscZc3xhCqnxjswm1I4MqUykZSHLTfQDpQvRN0/YKW7wXCysmBePXpH
	 58CzKNjNFYNU1GrQFU3GUonIfLMDnPgAjEXd+0zOc55gkPn8NBkPCnDIYFGx2Y9fcf
	 3Km/mfbDd527Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909ECCCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948079358.15222.2404056736275744121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d94cb6c5501b961a4869db61295735f06b2748455ec140b635114530a1fa77
Date: Fri, 03 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759480793
