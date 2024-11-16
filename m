Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326EB184
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731717954; cv=none; b=FNH8SalpjC3zChmM+CEvMxJCqURIhV/kt7/HzLzrYGbmwKEH33VTXm0gGZXBOYMzXYQFnDdTzfM6/azX7qMX556lTsQE6BIvGQvf2XOBub/HkSr7wQeJA3djw/thO42PsrtOhhY6xzEBHc8v67+PQJF2+Gn9Qt2xBhQI4TJm1Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731717954; c=relaxed/simple;
	bh=FE9+VtD/+YDSMCDsiJ/d7Xyzm4ZRzEx5abpyaJHdWso=;
	h=To:Subject:From:Message-Id:Date; b=YepElUBkU8N95y5Ohs1WHzWAfQKRAlJMBJ6qREY5LxzhprpRigIny7chl7+LEoIjw9aLaTy235kbQmVjMdG8IVTt1gpJTx+BMMJadJNxG6XkIk7Hc0dF0bJZ6Fj64o0l6EHj54yhUT4jq588EgkSA3ejaFWTHgw2TW5tRNdkoqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjeFNqrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjeFNqrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FA9C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731717953;
	bh=FE9+VtD/+YDSMCDsiJ/d7Xyzm4ZRzEx5abpyaJHdWso=;
	h=To:Subject:From:Date:From;
	b=ZjeFNqrhahJO3vYsJ/WyeCcoNYk+C/b88FJNne8EvGILz5MmpqykYBWCNQdazR9Oz
	 sjL3oqmshriSmOkOhrtxPhnu8BGEe0Py4fsfWZBnGOcyToC3U0OO8JuMBk1ATpQjo/
	 Pjdj0pHSTMwDPP1ZFheYYOfOzoPw1SDHfaf86GIAPB4mGecl41SFDV9dhtMaKyZCsW
	 NqIlijBRX3KbaTOE52+CAsFINoPlMndBtEVNq3m+eraUU7VXXlszZnYfugXhRnpQne
	 8OPjrhOfX5Vi+7mRSt/pdQF/f/CBOfTFY0GnUVoV113oAC38Z64uDQ8zBkcxVagIlo
	 EQVUfQUjr6jPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94916D68BDD
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173171795358.19491.2190724523382314420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22520d03f6202335a92c3caccff51a282491f893524688baf8ec22b1ddc1152
Date: Sat, 16 Nov 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731717953
