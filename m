Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C7C311C35
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781473594; cv=none; b=A0rEBAbbcdV7Tru/uYrnwAPETXNFapR+ICt5CMD1dLBugkrcbqcCulSgU26i+fBtOadokjg5cTuBEuU5+EsCgmS3zSLqMwrAZSUDB3WyxkR0M+xnx4xm+OJ838eNbWXPod60rM6EjVstToTScCMS17KxmCmhQgEc6jPd5hFTQrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781473594; c=relaxed/simple;
	bh=4RgeBIXtrbfWuoPbyQbx9I3HaPwvSCS9LNTUQ7rRyP0=;
	h=To:Subject:From:Message-Id:Date; b=UfVIvBQqT1F/J+duEOomTEdK8FpvO5S1bbvyFbUz2AEc123k25vDm5tgh47R9j+P36kNd4vaZ0DSZgQIJt4eVDCOIXfkcTecSjUk/m0fjMRcbNMYsiR5IOg6jmFGi80vid1yjhUw5lO0i2p6VuczsiL36wMR9hmaiEedYWJ4XJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uf2nxceS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uf2nxceS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D283AC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781473593;
	bh=4RgeBIXtrbfWuoPbyQbx9I3HaPwvSCS9LNTUQ7rRyP0=;
	h=To:Subject:From:Date:From;
	b=Uf2nxceSs7DpVaCSnE+IVDBHwWWeZXPbkLCHlt7B4PvsNYa+WVJOToJQvN0oxYI9u
	 tclAmkNJmM8zvL/SHkJND1J9FauzKQtMxnk68iO3z3TiDJgg3TuF/dWHl4Xsu8biIi
	 F4BS6D8ilpxwHqaSaCtUCpYJIwLl9dA9lRJWa+Q0YJe0SWZd9ZNIpW3fmLguZCbUmb
	 ZoTswSehDiaBqUiaKliMJluh/fzzVyn9DegUZFsA+PPLJaGbFslB8DkXYlZ902s0WF
	 iFNNiWpvay80cYFRHyv5qD6QnhcEbDgKbM2z5AGeIi9kK+1cy//O1mGLKhVtDrZl0p
	 JxQukZq5UgCuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B414ECD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147359372.7936.17713033662385884375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e88fcb5193cb5724f860d786302afa4a71901186e08caef02be1ba65be75ffd
Date: Sun, 14 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781473593
