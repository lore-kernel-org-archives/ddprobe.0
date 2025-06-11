Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E1981749
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749613194; cv=none; b=nbnAMcKuAW0HOb7e0muz7cuCu/B/oVKSpcF0EvU+G7bg7jxciUpYdnLeJerozFSG4Wq+XGiakFFBxnEVv6A5iZ3RBzpNXzLjpWaABVAmfQTkNOZtPCRL30eoDm/pyRIgirovK/eRLVhhhDLzGRrQJEkvttD6RShNXKogLc4WL5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749613194; c=relaxed/simple;
	bh=SATvYPMZHMRFzB0FLzRcp+WWoiM5t19arpkJdoxYzJ0=;
	h=To:Subject:From:Message-Id:Date; b=FWPFZU9z3OZIJ5+OpxoGZjBNN20Fp7bd/4KfmM6JbzciKNpN62ND8vfFNbvVcvCE3qoOpov2d5PD/ngM9L6ySnY085ctCzKFqa51+fZnoIZX6Jfb6dUSliqU2K+4vIekJBRlc2hu3CDoxKLDO3nzHxRpgOhq9hHMncrjh31zWnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8f0uv1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8f0uv1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD18C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749613193;
	bh=SATvYPMZHMRFzB0FLzRcp+WWoiM5t19arpkJdoxYzJ0=;
	h=To:Subject:From:Date:From;
	b=Z8f0uv1oF7N7WpYNRZH9ZHAqRwG+shFD+eq3qioWeA3LAT+uRRT6+GRLA1zWmeF7r
	 3SuS9T3cmrYMyXfu737lC5zD2Z7J7jZdPSrUxvypJ2BN4UjT26BdRk19nMpcBoGZeG
	 rORBOCeP/5SKz8r2ZNB0ZAPHiahKblGuFgnTfDiG/c4W5EMkyCIdCrb/tiL8T8C7pe
	 GuG2/aMk8wcekWiU/zqKheValBnGX9scCT8XyrqpHJHlv9xk5VztGC1E0jixn03m1b
	 Z81yKgAxd6UArALEZFQSiscDnU/fhJyzPsTf9SnJ9EBhz/T1vsqJvK2g6Qp3MORpRj
	 St2z2qw5aX2TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1ACC61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961319360.7409.6018811910329289170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9dd1db7a77ee708dd318e8a251b0d001d5fa9744761d6192f8506e5216d3a4
Date: Wed, 11 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749613193
