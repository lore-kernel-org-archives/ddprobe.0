Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E662877F5
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755894594; cv=none; b=qw41+rgXL+vkTYzVu3aLfaq6Ov6BgL96NiXlY1jrga4n5CYQLZcihA0Lwlsn6qNlkcIw1FFmvPHQZf1bcnmHLgTrzU1mmYGidHi2gQC/3xiuPLk+eOeRVSdo7eWsfG+CKyBRwq6kA4i6AohJEMllkYg9r1DJ9xi+/7BqjAlElIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755894594; c=relaxed/simple;
	bh=qOngmNRps+LWjmbRGG0jEY0wGqHYWRfAp6lFU+3n0oQ=;
	h=To:Subject:From:Message-Id:Date; b=SiyGzmD1XqGVwMbXd4nYkeTuFCTMou4WhjcZmi36jHxPy8qB334jpSCzVPoygc5OzN72K/PII64g7AF8pCo4fiLs/0RANdzIOLHRc5Be1qPK25jw03w9zfSUegdIOf01EKM3N1UD/65LX/HK+yhgEuM3Rh08TEwiv1J16/91QmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daI6B/Al; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daI6B/Al"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C3FC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755894593;
	bh=qOngmNRps+LWjmbRGG0jEY0wGqHYWRfAp6lFU+3n0oQ=;
	h=To:Subject:From:Date:From;
	b=daI6B/Al+aXDhp86Xb+65uGLeMf6N9dQn0G8Ib3Jho/Sb03YeRwoLBqd0+AJPV41f
	 ylOdT+tVMB2BfdE06nx/0nswaFGh/X3i8vTp0m6dePtz9UzTuzmhZQn3sb+KrPX/rD
	 Up/o4eQhjEOhDMGjJ796X88BU2Jptp/hnFzzEAnprm/OjJngCXgrsGNvD/jjWFEObj
	 3IDQyg2sY8KwzEQKn9wTqKpsRTZqB0hndEtnRO5S/zp02O5lTLjcXEkvuvW398sjds
	 ns1DkX69tc8tDuq5jjscIAiJhql0QDSRNmLs7Oqh0Sc6CGtH4LKFCcaDl+cuIcvSvZ
	 blwfqQGR4cJbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F53BCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589459358.29308.298118054875832210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ea0ec1e7e31bd2b51a0532d8cb4a156922be66912f935af18c227949176b09
Date: Fri, 22 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755894593
