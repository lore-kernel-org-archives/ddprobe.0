Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227CE17B506
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752926994; cv=none; b=pNXMdmSQ9M9BUszHwhyr1gY4sjj4daAzHL8ldf9RVcEaRd6RQ1ECSKYRqaYAzea18JmcJX37+1Lw4WzyXsVSHLHDKd9W4iheygGvYMvZBVKH6ft895V1suqlww9vARjFiFqMQfaaskiDbdLjbItTWEHynHeMCKlcGIZ6dt2d2TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752926994; c=relaxed/simple;
	bh=QTexqha7lQjngVm/Vfm9fMEdvg8vHnuclu45LKC2+oc=;
	h=To:Subject:From:Message-Id:Date; b=kHuqgwH8il3JBIjryr8pCU+woYd0t03gzLDwa+JVOJ2ScsuLogisB8oHR9/UKoPPOzYdyJw5JNxrrtDZGvPrzNxJvJBjKPT5GrWFlx/V7mIXtofmXkLljpxongotaI0EJUuCTqKP9jgZ2Ol0ILSwQBUMC4dxeEX8gTX5R2Q8HCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tk1wyvnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tk1wyvnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E080C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752926993;
	bh=QTexqha7lQjngVm/Vfm9fMEdvg8vHnuclu45LKC2+oc=;
	h=To:Subject:From:Date:From;
	b=Tk1wyvnz4WY6lbvXEK69+QLNMX8OCW008yXikqGmg7vCRV6j5+TTXY5In8eTNLDJu
	 /bQmps/y8U7TvxzUGO9syjx9Miqcm/RPXIBkrBIp9n/ZAOBUZ7xpXBrkJHfWvYIoHq
	 gsB/YZNiuyI6ISEqw2tRwjzJoiIBfQcmKdXmJ3nCMKmvJJBTS5y+XZdie2SJj1XgqI
	 fwqQE4VMFX8HhJbbG4isG0wN05NydjtpVFWj/2hoVNqnBYfT5bksG9/Qe/z1xpMiqb
	 2nTuppiIynckObqWD+a5xL0daWOkT3ZVtztiP1Sy1jHuhgps1+FXjyrR2Y/peTEr/u
	 z3KtNpqK0sobA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4BCC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292699357.7559.8195725713865677750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba18346cd0009d10ccf9225ae8a3d653d9e5b5b27be696b7c2faac3f77aeab2
Date: Sat, 19 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752926993
