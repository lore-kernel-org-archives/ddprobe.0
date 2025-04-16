Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3889518A6A9
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744789794; cv=none; b=RCDOgrkYgA+7pQGVLERlkMYIPIJq8CBY7MQzKK4A0EyWviG3Nu5ihWInDFk2QnnUfdg3pxULA1z+gj7I8mc2eeu/oNozv8Hh8NEDshBjDwpY8fYKwwTVQVMdRI/ACGLu8CvPSKN5C5K1pnMjr5F9sONYFbkaDAyvRmy8QN5IcZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744789794; c=relaxed/simple;
	bh=Rjo6FCs95vYOT3Iu0+rs0siBjNeiiHsBzi77/gTSRr8=;
	h=To:Subject:From:Message-Id:Date; b=sGggFE9uB/RhukQd4qL5vVwBKsZu9C+5OOCWO+jk4XVIYJJZIfu8Voa8EMxi4qX/GuIF4zrMi/6f+07EmIS23qHpnHy62rdurRBmKeXkgrTY9dg0p2stntkHtyVOV23gDdiggwQKLBJHKapcDku2svFg8KCC0W29d0IYXGHNgOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qG7wqaRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qG7wqaRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACC3C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744789793;
	bh=Rjo6FCs95vYOT3Iu0+rs0siBjNeiiHsBzi77/gTSRr8=;
	h=To:Subject:From:Date:From;
	b=qG7wqaRlCaf9jwD/aUX0wVqHRPVxlcsgirS1qZY+3kDV0OpsKx154an7zwTP6aCef
	 GqNYo6BKYAqlSH3f7pjQeFPwZFkpUnct7FcstPc2N2WDHKq+fnQ0yw+JvFq1+J45r9
	 CyVfk+GbwMyNt34h9jWgC1+HWNnL5BVgOZ+iSNyQM/SmUnresAeDXWfCI2tZQ3gRhE
	 mG3olQA85mihjl5qjeLsH5B6TOytLetfzqKMOgnh3vxMJNe4y8rejqqcRgzuZ3Jebc
	 6Wq798quJi3cMhsrMyLCNGY1AD55wSUkdeXv08Ze9MKmeIbiuPaAf58JnwamaeUSEn
	 4ONANZQSw9zyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FA5C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478979360.9449.10207486597473959468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcac7857d67c62c1ffaae51c97cb64d00abb175256c5cfc15d2a411b993a646d
Date: Wed, 16 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744789793
