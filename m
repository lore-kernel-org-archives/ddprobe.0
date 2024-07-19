Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B302F34
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721400354; cv=none; b=rBXrcdhruZ88a091+K8kfezbWxdbWPJRBwJ66MDUCyv0soyIaxaQ+ZOPVIYLLJcdaDaM5czDyi+/B1aamrmi2SQScFfZU3UFW1y8HnT/BOwrqmUWZQTudjwSWSo/98Wp6GvzR5dY9K5tz5+hxTBavw0h6hI7jcFGBO6gREUSy90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721400354; c=relaxed/simple;
	bh=EdG4k4YW5g2oY1r3D8m4WyhUsG1RtbWfBPs/melmnIY=;
	h=To:Subject:From:Message-Id:Date; b=iOWSijcI7Rdv4LyZhWJFy7q6clC3XpZw6MIzfyt3ddN5TsrgH+UrnVljM6lQfX8v97Fse/eD+nciuCvuW7W+iO1kbNBxqm6hxRKIk6qtw9c9iNIQpYaqiwmju914HG6ATOH7GuWo5ZEyODalns7B5FZKv0yUHiMqzTd6vQbYXRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSpd0Jna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSpd0Jna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83D3C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721400353;
	bh=EdG4k4YW5g2oY1r3D8m4WyhUsG1RtbWfBPs/melmnIY=;
	h=To:Subject:From:Date:From;
	b=qSpd0Jnat4HGLjZS3RdOISO9veHCgFKjGKyIv7z4Iqk2nGY0lj1WFpHUr92pP5q5l
	 58BBnhF7qiZOt0zEUuZtJ5UKGfmdixj9lZMYOYTeUzWaXilYANtKzcoSjKBZA+scC0
	 vOOc4GUR+NU8ITyq/4WkFBPMg59yrB6giDrtkBjfXOUicF5nzrNfUxIwRGOqQlcmx6
	 Q5i7KdqrgnxmXj7NFfAqWFzTyIvD6n/kU9PcAhjZArjzsjJBKyR01E/lhiCSx1hejN
	 jNC3a/dTAjmPCyvpnkukZo5gh1mmrb1U/Y9IJDTkjZ+U5iGBOS2nz+aDRKjm6smode
	 +ieIMVQNLEw5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9872EC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140035361.1827.1787392528198791067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791f01ca1cd993b9843088116abcc8a532650311f04870fe6d48023049786621
Date: Fri, 19 Jul 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721400353
