Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373FA14600B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721775354; cv=none; b=fXFeRIyQQMAXsnqlei5jjFTOaOR9SQ+3ROa1wvaYCAp7mjKnO7QiohKFr+Tc5nkaAW1RAQMglacI0BKitOrlCz1F+GwdzWIGND0VJew20FyTg4bi5siDeRQ2//a5Z3ezcicjyZwjEymWmoCtDErKxIhCgBMigBVJKO65NRMrGbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721775354; c=relaxed/simple;
	bh=ZRs1gspZ5jl0WaB8jBf6hPBsoiVl56rB+OgM4MzLoc0=;
	h=To:Subject:From:Message-Id:Date; b=HlnM6yN3LIK05C13UWNxYlF7BVdKDeZqURjqi8V2vk+f115/fsgyFb86FBToAER2hLJcjhqYrw0wgdqIdPcS6XI6PV4UTQIzwHQe7rEI7ckRa4ylIgIQVVKOwZ6HxJOOItMfjODR/DkqqAQppWavA6yIwvP9/5XmDS7yIlC4ems=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzsOAHl6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzsOAHl6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD263C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721775353;
	bh=ZRs1gspZ5jl0WaB8jBf6hPBsoiVl56rB+OgM4MzLoc0=;
	h=To:Subject:From:Date:From;
	b=jzsOAHl6//9JxJiPIdm0FWYjM8cYsZKFtFKMfrYMJaLAwHmkJ9z/rEe4c3FWRWlI/
	 BU3ICv1qzdaRNhhuJcLlmyiTZ0Nn3/WMSLu3V1vv96ZivsMVO9i+yD7wyMtqqyQxKj
	 yyBcDovl8vb44eoRpTr8NFx1S/O4JK6YcB21AlYG5VBoJoM4f91ndVSC3uUX6V48a6
	 3q4L5c0jzw+bUK+UdlNgGzz3se2CdToNTcJMbknFKQXoctEa5MJ3GXQm3s66sB08kc
	 2T8zqi6qiHACXNRR9yyh/jmgIACKFqsVmX9wa1awacKIQ6QijjM5XFpWqnLoOOVHN6
	 hxztV0l4ByVHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C92C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172177535366.9275.5867864178226250149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d9d739386e83cf7f7d27192835fc011bb0144b372338616e9ed313baaee2cb
Date: Tue, 23 Jul 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721775353
