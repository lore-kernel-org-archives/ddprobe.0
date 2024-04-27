Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51294144D22
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714254143; cv=none; b=S0sNa1PXhx/uqSBtUtGHTQl4Q1KJkrRBxke/nNUD38mS4Xj71PxoHzcWdZo+hbR1bdwOJSCfGL4fGrK+++atXTcG6VglibBu6YnUSJoJOm0wTSXlqf6zisrOwEzRuMO2nuMupokXoXTHioYy/bZRcHOAtfNDyvnOou/O+wHCQcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714254143; c=relaxed/simple;
	bh=ifs5BcY4xFSMIuIAn3aD5fGnt2QCewUkUiFfOsmP0CM=;
	h=To:Subject:From:Message-Id:Date; b=Wx9sI4esy5jnzf8gFq6pnX/vBWh77Aq/wZA8+X+TFMv9gl9RmgYK2J+KuPbLLook4QXydaFk+qcpoaESB1Mo3hrx3/PuTYUX26xd7UfY50HE4PC5TROQsZ9V9+I1xPgoWwi4jXbcObSwYzcBkicLqOvqNugHG75lMogm0gOVOpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbRT6C5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbRT6C5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAD0C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714254142;
	bh=ifs5BcY4xFSMIuIAn3aD5fGnt2QCewUkUiFfOsmP0CM=;
	h=To:Subject:From:Date:From;
	b=jbRT6C5WG8yn4VJmXpZLdglcg2/4LUV+mlTWGZG9HJf0MMEX14xbq8U7cgsACEDyK
	 b+Lg10t07f93FInP5RfGutzQaCxWpCZQXwX71dlLqvcFrV+ayqF6gtRa+N3uaPlcyK
	 qh+RY+TNV0GSBRIRevV2QyruHAHMrqmS2SmlwhLOp9XYe9wJecxkCwZSFIbG5VY9Ng
	 RAFejYUanMN2rB2aFLFtWAYN94g6VRFGccJ1E/+LH/uGh0DAPNmbjjIKfhbRhyVIOZ
	 JWPlJLERTbsYNeGx5lKv7IFXTAoCHCLV3R2QGA3K/+A463RTeb/ugZAZJFRVL71lGA
	 TWMR2bNrJLsMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1478C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171425414276.11802.6864757172821391636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b23c3882c29d8b654a9175542be418c9f525b16892634283fe41f1796403db
Date: Sat, 27 Apr 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714254142
