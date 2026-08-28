Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08ADA2DF138
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787908834; cv=none; b=L2g55yNdIGX0XZwZectGZ6v2bOx8g/dPiG96svIIDdv88euLe7Xb6Ft+vnW0d3ZZIrEzwVxmEI4hYnLoJqxQIbxo0s4bE6CyR3HfXoxG4FG5I+4EDPZBoH+0aW17tzfxRCbOXTRBOZfZvYAK6fiP5x1Jmqsxx/EyruqzSBdkQqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787908834; c=relaxed/simple;
	bh=b4Ce4exvklOKIFbQijsUdxk9HTPogzmLG2edH5WfPB8=;
	h=To:Subject:From:Message-Id:Date; b=TpcUjuV3B2e4jOYkOz5XmT05Km50/kLHas+E92rK7ya3IPxspjmC3PwZAQhpl1xMz1RMy7g83xF8wVK2KcMoTmwkDCJjEGHMfJauN+AF4+sd+kLlJO7v99hLyp0kFcZJGjW7+Oq9qNxahUmdGUyewfnFC7+PYs2mpPbrdffQuts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNytGgwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNytGgwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4E3C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787908833;
	bh=b4Ce4exvklOKIFbQijsUdxk9HTPogzmLG2edH5WfPB8=;
	h=To:Subject:From:Date:From;
	b=qNytGgwYxkWa3tC0jnVf0obMkncUJUEiMQ28rBm9O78KN/wWpbh4HIYgBN2AQPL9S
	 VFvfqRv2lgWZjqmRL8wI4benb5ee9XkLNnJiz8feQt4oCM20TYqfPLVvVdGBk40mJ1
	 /MrFcRjLL3FwgJGCbA/kEXVfqqRmfOgWIGopp9Ap5sHoylQcFUMF9hT/kpKD6rTd9d
	 B6Q7ba4UOgT4iR2Srid2xCb8wvxjuMmw4Er+TOgKZQPUYcLoZxYxWmD/ge3tKE8gJW
	 AI+yRjor7hAI9znr0fbsbubgaxuFU32xd28JNMnXebjFQUC4WhUUQPHZD4Dc5UFSKT
	 fogIeFVHtAEWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC29C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790883369.8004.8033039541796013751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a2148c124cfae34dd5ef91045e4ebb8c4458f7be29014e4d7b340e4af8924e
Date: Fri, 28 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787908833
