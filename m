Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F61634
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735779954; cv=none; b=SsZB8W80YU/D/M5w/jZBc7cYztNrsoWuMTMf4u1bOdSVarV8Lb4CkoAHjXHK0k3cESOvJMDEzMUyljMQ5/c6cL7XVnLQMfREFidbpr2gd+jKU/EndL9hBY6ph47sl0stbO5wXFuZTYu+dVrSlWvjtyBREN4pT1uyPEDUhaoMNAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735779954; c=relaxed/simple;
	bh=O8y7TzGNOGfBI4vQ04vGZd/PFVkUfqEIhyfFeJBsKUo=;
	h=To:Subject:From:Message-Id:Date; b=nIhAGwdubrP5ZdveinqtI+TUSXO2InMKq5YlaNAVvoxMe14ycZysl7u19sYAIi483ivBYfKTSC9kP0w1SGCt0vQvFg8qmGvhXHgnsPoQDxh2He+al2BYALQBvIeOoeJYJ0tauzZmLSCqtXQq0qOYH+2ttVJL199QeFt7dzcXk0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbtaoqQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbtaoqQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A815CC4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735779953;
	bh=O8y7TzGNOGfBI4vQ04vGZd/PFVkUfqEIhyfFeJBsKUo=;
	h=To:Subject:From:Date:From;
	b=UbtaoqQO/6M+tUWywP58cNsWamQKOwz5uY4eGKWeViHyT6xaoFNKbIjdk/TfHOHR6
	 tEAl4FOJAEMafsBb0zC+lSSEro5xGeldjtqgRplVRWoyHeYSCS0fcgymqYFYIKE4uA
	 VPKUTEFwzuCc7uDygu+YK7iEBAW3bvOcvuN28S3PAyiuiJ9fpImtinrhh+8WkJ+eoF
	 hxpZevIAWh6M7dx0JFDDmez6MpwqD+nQzp3oD9DBwbZm3VyCvYWTpH39mcpawwe+La
	 s6gkl+whASPB7SJeq0jdqAvl7XE+axY7ZvO4/i9XbDmza+yPJYTU3nUVzf4Sc6yjNz
	 pG2gk2kzYcMUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91394E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577995358.20835.11678618223302032467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9fc58adc8d85d03eedb299653f4622a272045936acd407525ebc4e97d3141e9
Date: Thu, 02 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735779953
