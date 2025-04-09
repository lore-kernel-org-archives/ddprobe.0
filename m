Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405EA1E7C1C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744235394; cv=none; b=srzcBEexdV3hYtYSNjMd2NQrIXV0cuSJI/b3/JnTkxgBvNkKUC7SIKXahm2kSgecaUKQhJ1ZSGsagvpuu4+Sx2jBH9UMX3OV8fZl0iZtXOjSfeCWkRRpHWMx63ommsk1F7H3+LGnjOKyIbYEfsCrODfw/AUujfwJWA+/GkrJrj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744235394; c=relaxed/simple;
	bh=7Yc6SOWrlz3/BaDEF5M5CkqWGyhleLrKhWbhrrdr99c=;
	h=To:Subject:From:Message-Id:Date; b=qDOtNH7QQMTdlNz2BJ7zBpCETgsM76DysSqWTYBi1aLF6HMfdbiat6RcI1LhR2XvCpXvMe5m9yBKP65IvAkMX56FCjOwEo90AkUZE/CJ6PFZcDF/UYctawqy8sFB21m12bLBbmz9fWof8BGLu9EzdMeS5sjg1++apB61gLlwJ68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukv+DsBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukv+DsBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23A0C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744235393;
	bh=7Yc6SOWrlz3/BaDEF5M5CkqWGyhleLrKhWbhrrdr99c=;
	h=To:Subject:From:Date:From;
	b=ukv+DsBN+NtD7Nu0A2ANTdIv63hPCUEXU43sszasdtg5ipxxJYXhpubnZwZNWjc/Q
	 Gr2r7RuOdQyqHJp/F6X7CYTI5fkMtQtQ7XM11zlH7xxOycYl+e87ac47T5AqNPgPvm
	 TJJIJijbBQAoTsKWRKPyOpzP7YYKiYDqp+MIBr7LeMzOJHy4W1N4Ei+ZjuphhnoIss
	 xRcxW6w+VGXQYHWbtPM3iHhn2su7AadVPfshwH9Ujdd4BxzDlyZ45+9AwENXgRrNE5
	 0GwGLkbkKZuwymBPkTDXT/bmaE16i52ToLyDFNJCo3hFj0qFnqyECsL5peAT+xpPCp
	 8TY7tDrbcfE9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E48CC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423539363.3869.5874492440617599837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2811f60fe7ec6347b4365cf65487fdc463c23906fde7801a4110a72d67a8789a
Date: Wed, 09 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744235393
