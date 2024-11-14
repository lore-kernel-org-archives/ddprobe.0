Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41526F9C0
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731545754; cv=none; b=tSsSB5JupHe8L0fAPttMEFm5si/VHrpFebMsGYyI+gEdWJHh1On6O/oJSWhbTSKAGGkelXZwvxmXyWCqHEPhuEbreLSMPfctZnHaynUmoYOGh2qIzwLFMO5KX4cz+iMmo0YmlvtGqB+YW0tMKWkjrkJrldl6oPXbVC+ADyVz2U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731545754; c=relaxed/simple;
	bh=z/0CUKm2e2erad884uOt7ntTV9/LWzFZ4bWZyV4pziY=;
	h=To:Subject:From:Message-Id:Date; b=gpcyU/I4Zjo9TKqmMbvnJ2fKzkKZS/Wr+CbaBbq5ELjdNrulhUJX+S3U7XkaKs6bcsRtunh5Y2BqX3bmwGKhB9cDpFNRF8zN88cThSuPgcxic8S7zIERAl/39GURXoVYQ7IO3cSAIGlch4JSztW269BoXLsfbRFHkXF87uXOXMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLwEaFj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLwEaFj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC6EC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731545753;
	bh=z/0CUKm2e2erad884uOt7ntTV9/LWzFZ4bWZyV4pziY=;
	h=To:Subject:From:Date:From;
	b=tLwEaFj1uICPq0qZr2C++XUJZZOyDapNbBMIIbegMRN2Fus3M+C6qH+fYBWAuHdmu
	 NeTS55kyxASVjObL7kpBNgoVR6ZifhEbyQHU1RUjRcnYivNPos9aK9UpsM6b7zHz80
	 nyaeCRChDzQZLaCTNTTHxrzBQfyKqGQdt1w9RDktH1khVbF+qk/cM86eFm9OyaD7R/
	 hZWQ3R4KXjcrpsAy9JjLd8dqVSvVefSX7A5L09R3T1WjaU8fR/M9yS8s4xBu8mbOr8
	 vUXiw1nn/EbawqjMuR/41xrQEhG+ZivurCuGH46JZPBeueA00xZxzYVxN1Ggojsx7f
	 ZeayHuwdHEGuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966DFD637CF
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173154575360.15141.11130422193599585317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d04672707b889144c291fb550b57c99f79fe6d4782e2f898aba7dfad21aabb9
Date: Thu, 14 Nov 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731545753
