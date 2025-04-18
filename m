Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6D01E008B
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745009994; cv=none; b=U9JqBOVc1iSzFq7qG41sqsASKcWO7syKkvTR/apCPGCx2sjN9rp+izd6KeNC6zTVtlOWDWFEoyQVkvXPNcGF4zbjPsHxn3fkXmGqHh0865BZMYBiZBFn6bWnd/Mh3w42sdGE0l7C36jb4Z1jSlc9j6PQAurM+BN0qKDzqag3sXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745009994; c=relaxed/simple;
	bh=Eh9PitzIkCh26gaUNAapznCA0GL1BAnMU/EqlJrpSdE=;
	h=To:Subject:From:Message-Id:Date; b=mAw1vFkr/cD61XTyTB8s0uLkLfMkENONXcKhYy/rEWEvBzPJKzJIzNp2IYzXaCy/EM0I/46DHty4bbJ8rf1Se6EE6BdZgHf/Cxsa+0QIflpBZLCpqp7SBkEa8d9+XUMy6gDE4FokkSzlNgQal4oDlksl4JWBLa112NqIvUiNyeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZJgNqYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZJgNqYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6E1C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745009993;
	bh=Eh9PitzIkCh26gaUNAapznCA0GL1BAnMU/EqlJrpSdE=;
	h=To:Subject:From:Date:From;
	b=uZJgNqYNp6z4TDHDJ1HakKuNDytxCpGDBetUSK9RJMzPxl5gAtzeJ2g5Rc3SYu7nK
	 NxaKWi4SQa0GgrasgQS2R+xXXeLCtVPxSBWzrkENcTOW76tamiq9ht6keht3WC/eIf
	 oemsU5BfxCJzpQ8zK2mqY7qO1DM5QsE9UwGkuobbZdBHKA9SUvkVTi8aDgvn70tMIX
	 VYt+D2zZw0uAMlUhDAytzuJHZL7yYhnKE/ApLEiq2fvjNQ83fcQUHZ9KWUn7W0+6Jc
	 PebuGcuJ7fk6IBY3RWzgj9eWSl8MDnihd4QHYuBfyJ2o2tpXip80Fwbm8SYcKCbN0v
	 E9bEqoT44gcCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D235C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500999361.13691.17580693949564621907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b42534b627fae61a2c3fc08886d6fb2e7c6bac3921219f78911f05601704432
Date: Fri, 18 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745009993
