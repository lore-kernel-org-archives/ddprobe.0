Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7483358DA
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782920914; cv=none; b=nxoiiJLD8icAiXn8JwhqxNXIbk/Djyyfg2b91DhdzyCylccXEvsrGRybXdC5/+lWwHUyI7kyKDQnYEVHZgFfhr8XFfQMB8VR9niLnnHq3/v/FtqkL/EsNKwIcffPsTcGVvtvxXjrYkKxWhZkubkLAlUPAxa1jrHIKZgEwW1QvPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782920914; c=relaxed/simple;
	bh=OQJ5U6ys0z4nKxedYraXnPY1cJg/uyBr368pr/0vBko=;
	h=To:Subject:From:Message-Id:Date; b=RF27n9yAnnahCO28WYkd92CB5x5u7K3piOiYmTZ3ik2XuOd69T7Fq69wd5HH4R5kUaRilp7rTZCyNsgXGaEjb8QUf5gWbx7mTbnrG1nZuVleAnxzG+j6RtLnZ37LqfAjUZfvwkKYm6bi0SFsgkeJzwL4rzJRCS2E1yx2Tqvwelk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHzEcqYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHzEcqYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3233C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782920913;
	bh=OQJ5U6ys0z4nKxedYraXnPY1cJg/uyBr368pr/0vBko=;
	h=To:Subject:From:Date:From;
	b=VHzEcqYSpsJqKMwR2oLzeMutbCHpbU/m5woR6hd0MV7GaowEl89beSwgtAMe8S+BK
	 Af/kqA4IFrihU2XRrIVaVt0+dRhs0YA+5llS1diwg2kv9T+qG5f4mvxfgJX9uvUmeV
	 6n0nP5e4KST/X+nYb+H/IegxQpiFuM7AYh2UM9//0xHxJbcoLFRX+Gbciue2lP/nlj
	 Ilxo+NFcTzX/t56wIlpVje7sJiblJnnuJeWUgtXWgsKC8CU+w9cMRQHEKbmgvOdaky
	 9fNzQimzu2+oL6JzckHryN8QTTMxw6hAHdw2plB59laYIFFQjY6XsFTwG0+IqEOvs9
	 7tNUuSwPRF8XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DA5C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292091368.8263.1160790719927465434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd39ea5353408dd64821541be8553f60257d76beb866724e2ce39c68c337c0b
Date: Wed, 01 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782920913
