Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECE7A934
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728351954; cv=none; b=VZ8pYlyQFJsyvMEBXM+cdoBJkRpus4IkUjs8TNYJD8ayqyUxsDXXMlFw9mZiohhIKLWrOm62TNl8K+P5fP5DM/HyfCQhAH9ScS75w3h3pDXPho8tYYJlvjCPDGfat3th5dT5ROfNC8ojLZR5XXDxJTsyMXqHm9ASOeI+jIrWNk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728351954; c=relaxed/simple;
	bh=dsFTm6Ij3wGYJIZsI1hQ9mdLLrxy2m7Y6TcGIi1Xc4E=;
	h=To:Subject:From:Message-Id:Date; b=N6evCtiv6E87gt6EXeejVDI3iy4WZWgKS1exeN4yXTfJ3wKMbU9wKKmfBbYtZGDhaqcUThAv3KPVfVh6Io7t+uXsgKfia/5cX8PSRm98Z9uUm5jiNtHnAlNjn5UlsytQnEb/yLHpRBJMwdCwlCijX/r4M9nLZ8qWypK/nNkce7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AL9Sxrwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AL9Sxrwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30CEC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728351953;
	bh=dsFTm6Ij3wGYJIZsI1hQ9mdLLrxy2m7Y6TcGIi1Xc4E=;
	h=To:Subject:From:Date:From;
	b=AL9SxrwpCsM/f4CkNVT/W7o6UAz4uS38fTC1PjN1ZkDZYAnrW/PAfFJSqcufSkwTg
	 99aXWziytH5suF+aMN+Vj5q5aNk5fwAKdVe7fP6wJXWyaqjwSOYhKmv2k9CwJOL+Or
	 UXOZ+ZAUXCc5yFnTFT+RDg49PpoMzEAp2LA0gxntF0UxUB0voZqpnlj1ER/xqwm9cq
	 X+OFkynUCf7SrKWfgnnz5IVpd/cJmO9Z0Ql/Vr0UTzvqmJUQJehLkAD0qd9jVShSkQ
	 Nfsc1qlw796XVTB+fgF9Rj+lU5SmbIR/SLmY6kKxcqbomplGIN3V7MoEI8WGev+T+V
	 cYEyIyRbq8gVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BABCED24E
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172835195358.12905.16245389176027172443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b604a38afe54db689ba6d966242610aab65156dbc5a0664405b60ff3c8407660
Date: Tue, 08 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728351953
