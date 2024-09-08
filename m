Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448AC3FD4
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725759954; cv=none; b=CVyJK9jqJXt+XAXWmAUbxUr37wObvSHlMyNjayt/Y1v/tSIoPm94YuEpzWHf8hQNoXuFWIFkZQ9z9q8bhfp+Z8KNYJB0cYde8vRUsosctPf9vBsAXVApHSfDHQyG+LBS3HGTyTp8rzTn6nS9ec2JG4Aex7VfP/SxzRFvkEejBCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725759954; c=relaxed/simple;
	bh=UQsnEY9qPJtRUfM/n3Y5CODhAagpTFL0rI0JAcM/1e8=;
	h=To:Subject:From:Message-Id:Date; b=hskF6Qdhjm6cH8n479g9R4+c78bwNdawpWehlPqdAphYFBHqh8zxxFR3Z3njK0G0y6rV2zhJZhX+2+Nwadn2R1U6D+eQAGDCPweofBO6vCQjWEVSTgdQ8scYCC1V9RYFnXK0act3t08LPi9lVNCpgSlWZuCcFiimOgr7um51Dw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7GVLyFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7GVLyFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDC7C4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725759953;
	bh=UQsnEY9qPJtRUfM/n3Y5CODhAagpTFL0rI0JAcM/1e8=;
	h=To:Subject:From:Date:From;
	b=M7GVLyFsRJ1xkV8Wh2+SSA3H2iHc6TKYRgC9bR8S/O61qlZiqOHtQDxKqM1PlH6uz
	 C14WyC7P9dfkX2QSXbnY1qs5jrhqeQArml2EvFaW3fajqtkaxmQPkvH1QqS7+yWOSR
	 zxEXkQ2Zwvqyra5j14wgpUeUcPifgtk0XxVbqrITNK2D+7Zd6+q/Zf5QsuT5v19dBb
	 prlwbafa/lU/TWxsiuJb3UgxGKY7+Gvstz3IMU0OxI7hH1Nc9AepOVUr6OkoPz1Syh
	 ELW2lEuP9fZwuHGWjs9zwFv5iYvUpzIdABBigs2OChVhRIrZ7dJOzvwAMEMQbwkdkj
	 Sc8DdJjZxRuWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98855ECE579
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172575995359.7693.8471458088859736566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac6bcfa49ed3a5b6d484b78a79bfeee007a028bafba687c732e60a38c1dced5
Date: Sun, 08 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725759953
