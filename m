Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1345E548E0
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726154754; cv=none; b=aQx+hoYqpX3CV/UhD3dgslxgvochfspARBAmpQQyt6SkiAAkucPtz2/GsmG9YV7CPXTMqU5RDuv7gRrI3LfObrCvQWgCEDjPTeju8wUaCSRr57ef2n96BinPXD34Wqpxgm6j+iUwpNMQ5qot9sucJSLyRqaGYQxFfUbTAFhtyY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726154754; c=relaxed/simple;
	bh=09VP4uTpdBbaUWvFNw5SrYsGqDYxUNB+Wes1uE8zoP0=;
	h=To:Subject:From:Message-Id:Date; b=czz9XQldp6rMKXjc1Z5xczsWSL7J37h/SYsmX51fJA/RvfOQVOQBtOALkbnksyZkFvRCA4dQiwlZKsiDXRWxiJik4UETJMeSWLqGZu299YThY448kdM8yrvCJhpIoqBkBIOgqGYZNE09VT/Bq5Oa5ZQHK28UNkpw5IOEbL8pF/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvTYlKjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvTYlKjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82A3C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726154753;
	bh=09VP4uTpdBbaUWvFNw5SrYsGqDYxUNB+Wes1uE8zoP0=;
	h=To:Subject:From:Date:From;
	b=KvTYlKjZhe8d13WRrFAxEp2He2jJfSLmlHHiRNJH4QkCHpSK78rrOkJPCiyyn7dgI
	 7B/KvOlcFXUfyHYri8XTVkSAtljlr4uSsxx3MeUR7URFcNoylMvPazHt1b5iodGNoE
	 Ua0lJzgibuBCR/PbzYTiE2aNEAivQP9Uv70K7/Sq3Zmj2P0hUOEna4gF8LIpXCigzt
	 KhmhFz6z/fVbB8z47CFzmUttyQLkE1ugNWQtAV3P7iOwS2J+tNcFDRzug6nSDCFcSg
	 gCsl9ay3rAdKpnta7SLMaw20gZ2tfhGezHWtlOtGL/ndy/QJ79e5PJXSCYBoFeZHSD
	 Yi/AfC4Gs4jIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961F2EED615
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172615475360.19010.11349112983930249885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab63c2d6e3a09b703841f033f8036f6675b5b568313ba0e6e3e584ae1fe9fbf6
Date: Thu, 12 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726154753
