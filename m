Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2093C988E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784625514; cv=none; b=P47WeRqNnNNeqdpeYs3LQhMUvu2fT++sqr4j94gtmBiSMddhAIbKHjyFxJnwwN/61cQxWzRGmxlUAJBW3WcIbYWyFfEsjhUViJIH058ThIRi4nIDIzqEpw1xQaM5qTRoTTp/u9ooPreQL4bMAvceBs1NddaQKk3DzR4wLIcPiRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784625514; c=relaxed/simple;
	bh=sti7mWTaPFXB5NMHIhV1vjcqSjpK+KHFZIZG5Ub1w0o=;
	h=To:Subject:From:Message-Id:Date; b=P3NzvZVhj69pAWVJxNd0ANISdKP/3iInVPImsgOkTiafJ2UuSXrfJkvvPYKsYNbTqh75kfttTQNnw7BU6pCWUmyX6aiI1YgXrWpk534YvA1QH/jX8tgFRuBv8fVz0SH+jjHD+29B9KmFeD3SJSCK8t+nLXrmY8VDu1hj8DA6o6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQ8HnJcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQ8HnJcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDE5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784625513;
	bh=sti7mWTaPFXB5NMHIhV1vjcqSjpK+KHFZIZG5Ub1w0o=;
	h=To:Subject:From:Date:From;
	b=uQ8HnJcLLJfKPosgWrGqpUiXrfCmdMsJQ8WhGziAeF8mxItgWcH6cZaq6dB7rTOCE
	 Kcv98igi9vPhtpoj5YtCzna6Ey/9JF2pnBGD/LQnTKrVfniYLkmGMRUldGvtHbb/FY
	 gePlHHFr/CGPLg7L0RAhOR8vQ3N8ouB2qCUH1WXbARn4TfT4p+771zk7DznW07Moe9
	 dZzpeEqDCiXx1Q2332zgud0Ko5RMB6SOqxncjuOZN6n6CQqIQ+4VxWdmYQBjUD8HIs
	 kLYmI/skKLbULj07ssRCAQ3LhGWCbi8A4X44l0UkyRF5hIkhINuxBMBTLwBiOSuxCX
	 JcHxGk9nXhXIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2C0C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462551368.21571.1834908921771988043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f40969adb9df46ada572b2dddfa9b7c1a309159ca831c3501152ac933a17132
Date: Tue, 21 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784625513
