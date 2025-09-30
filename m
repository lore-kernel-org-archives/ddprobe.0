Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A95718A93F
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759252794; cv=none; b=MFFHN6aBQQ3Y0icwVLunsUUmcm281ybJOWHDOZHoajVrVdWRD2S/SW3MSJ1/VLYzjyPwYUqHMOF1z0kHy9wSuOiz3Ta9nH6BR35PBKMvZ+tIUuLeHh8qDHbI5ojbV1bjcp07O0+o9D6op8SZnx79jxN8lDUPRXwoHix7U1rwshs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759252794; c=relaxed/simple;
	bh=ZFQ8FkokeUNPpA1aXWjhp6siBElpXyiOFMJuR0+GnVo=;
	h=To:Subject:From:Message-Id:Date; b=SaXnJANlrnTkFD9YUSFLcgNw9E0wPFSAvTp1c1O9g7JyEXLsHnhraWQZM/cqvmOWq2Emr9ajQ1xp03OxxHc6+34PbwYUEZPfSgi2zdN0ttuaYtteG1pncU+h5ik56SKdg25QnEXer5NA+9ZRqqXKQNc33QjeOM9pFJRt21+SMY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ob+Gs51I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ob+Gs51I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EF4C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759252793;
	bh=ZFQ8FkokeUNPpA1aXWjhp6siBElpXyiOFMJuR0+GnVo=;
	h=To:Subject:From:Date:From;
	b=Ob+Gs51I8g7IzmaaEWuVMostIoB+9vO5UZ3rYHRVI6YtchIrjBDwoha9Du2ZBPtnl
	 CPnoyhJcvbsGuD+fXUhbMjue5/DwVJH64PV36YsT7y3B7HNraCL+RXSVh87wrY+qTa
	 7Y1ZSUhlncMjjfvq6mZcrWbzkcnRlpG9jIT3QZ5gMYoGy99lFU83UH2vTMHTxfPo1l
	 MgHm19pdn9L9b3T1+9w4BCtB/oqbQv3cybjG/XuvdxwMMQJZJ+fYlbEMNnNqCL/ePS
	 sn0I4KNew2wOOAUETr7vyU7IPkCmXkDdOeQwPfIACVKCkB+AEdIozYRWNIErZMrHBj
	 nGeIIn2U/fITw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F5CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925279359.1521.17539835137629844615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7fab6e1115a319a08a9cca1a44029918407372d98d6252f568f34ba1520561
Date: Tue, 30 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759252793
