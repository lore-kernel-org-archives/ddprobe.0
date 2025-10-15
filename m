Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E115A2BCF7F
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760525395; cv=none; b=EumaKvbOCMWrYYlB3HspIgiYtH8FEK0aqGfM+4COrr1e1jX86C1yjn9ngoaf8IE4ejeOUR7NFR34YE8sJ947mBSATlG8YRcEKJs2rHY8OiDQoxRsfVNXIBa+oLcAn4OZDz7eMxRx8Pi6ZvkmnaFtcB+L6bPlJydI/ZM/5k91Q2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760525395; c=relaxed/simple;
	bh=0MSIX+kwwxzRiG7wwFo3swFzCrGKAwtHRKND0WKYyAI=;
	h=To:Subject:From:Message-Id:Date; b=oPU1Ho6cL01iGmARXgtJ87ZFkGqay/Y5s1G1Awhnh4WlFzl8OoqyKoKUHFo1jCuVL3JcKJn7Yvn0Jln3QFxDpFhuF9S73a1lWo/XPkUT0UWyKmz/QcNjQWvk/NMomrzMyoMICDgXyA6d47dxT3r1DhWOzf+XFZ67/QBWAExEemo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhNHdzss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhNHdzss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E1FC4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760525393;
	bh=0MSIX+kwwxzRiG7wwFo3swFzCrGKAwtHRKND0WKYyAI=;
	h=To:Subject:From:Date:From;
	b=UhNHdzsske2PxCpFUDaKH6ICjcUQCeaILqupjgVYfcDsS/EXw5tjw/fz5kNdSXr/p
	 I5j585VKj5Sg+qrmb9PQGXRagaADr1Ove3yJb9dh9Klg+7Huk24BBbw9hVS9FZXJzN
	 l6iQv4qjLlrl967JUyajGB/k8OOe7uAR1udvqt1VPCQmsY/krgPvpjiQCDoeIV5wn6
	 +yW9CR/ZVOrJYnneZpjTx8Tivlf+g8qDUC0WKvlT8js/NsHDPQDTIInGOUjwysJFur
	 5z5esMkMfqR8/M29XrU3PIPoUjwPQKEWvVMl+jEnM9GBYkfzJHFc7pyPW5yzPi+6XR
	 sRYJZ+pScTovA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BF2CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052539357.7375.5689755756371746736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0658c022ee732f28a6fe460c043fc0de926455552790df84561d5ec186db2a32
Date: Wed, 15 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760525393
