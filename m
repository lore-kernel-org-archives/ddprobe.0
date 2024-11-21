Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A2E1E487
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732157754; cv=none; b=YTPC+PegenA/798wZ4YemABUYrUz0Xq1ya1a77rBC0p+nrpFhHzZpKK1gKuJ5vO/prEBf3gqPsXedeb+6vdReUeKrYKOJtz5JHvadb4W9GU+oQtKmJN+4Td9kaPiqJpHJLOcs6HZKY4qfGpztzbQc/x35umctw49wh33ACIHOLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732157754; c=relaxed/simple;
	bh=9iUDB6dXNI8G5vSwFVOH53R/WQZiB7+JL3qLe03WsQA=;
	h=To:Subject:From:Message-Id:Date; b=OKZ2UYHTGQHqZXqd9JEdMEnr8zTRiZJw3VBRR0SjebKZASOftiDDz2HM09PzJAQTqt9hw7k0A+qmhvJaLLXvAKQwd0zdHvS91/QlTZVLhHQqFbZUVSaxPpEVKfNPf2LkaRRgCMrynQrwj6qymtO4UwipV/q9x7V0ueyi98agp2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmp0OJW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmp0OJW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDB0C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732157753;
	bh=9iUDB6dXNI8G5vSwFVOH53R/WQZiB7+JL3qLe03WsQA=;
	h=To:Subject:From:Date:From;
	b=mmp0OJW3GZmS3MhspeTsbENfcrL/77O5yQbu5efxNaEk9b2r4vdJazaIZqi1sWrc4
	 5CptJUiwu4MM3m5ZYbzJiqCopwaP1PNNrGLsswlmPRMRokH2/vZo/kb3NHxgYw5Mr/
	 4iki1fqE4ZDcFMwXMJjaAOILePlBRi1Y9UqeX0MRkkVZAgbkHN7VTBwICHmFIywT45
	 4SE6ngkqG+gNCaPu2SatXfAtOXdAStsyfHMmKvvuBpSt+x7a9iBF2myW5Up8I3tyZe
	 OXeLDLSxmAbC4EeMAAXA4LQNoFtZDOD7aAJOU3u6WefBOtumbMVCMP09vCNXij5fvk
	 otG3r1dj+XL1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9960AD75BA1
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173215775361.29328.6217312395800728200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89c68cbf0dd98dba88f9af6455fb8b9dcf82470577d620eede140abc2a7389d
Date: Thu, 21 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732157753
