Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D3EE573
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777508854; cv=none; b=ay/MjmpanuOj8tTEJ6dg37l0OItZwxUMSiGH2SkvQlKVO5IM/R6z7BKD5dUne6BEKLsMmFWAUYhYIHQNeoZt9YEM6aGNDSY+HGZ+n9FuquWfbAWUjOxHBztItZs/JNNPwgFaKwa11ILBGvLdv8aCoCUfsJxTQPAhdnK1ZlPPDUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777508854; c=relaxed/simple;
	bh=oQaAn0FS2JUyCWbMahU9dUsI5hPZKwykZdOb3Xp4sfo=;
	h=To:Subject:From:Message-Id:Date; b=fsYcIFqFtAzVigKt3p3fAtcWwY2NPqcFetJ5ypMp9DKqUde9w14CeVKeaXaIFcxwPPGJTFjtqXEL3jSFzttMtQlIRetqNOkfddWOVvtKet5984MdX4GAQ0Fk8JhBByjEkkr+ik53mvkvpgfMFwLzBwfqQMvtBc4F0gaKJhh1Sck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iu7voEuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iu7voEuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B17C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777508853;
	bh=oQaAn0FS2JUyCWbMahU9dUsI5hPZKwykZdOb3Xp4sfo=;
	h=To:Subject:From:Date:From;
	b=Iu7voEuR1NEhQmd/+/mloLD93/vPZ/H79Yq1l2HKuQvn9GNlTPzJbcFamVWkerqXZ
	 thBWq8ywpKLVLFyESMJw6fgZ8fWS4qtwdvpwN3afMONv2qh0iCNZ4cg0jxt6s2vsOK
	 f4XPNRd0LwHBppfVkvpVCCPMA4QFXd4+GpfNE65oGO3tHeJAHScCSUD13DAX0iwZeV
	 hrWTfJf9iRRVa5VYmrBdplPNT2MrAKXz6z8UHgS96lGjENBc83D0hD9IF25zoeloCx
	 ECqkzynmPEYx3MhSjZA48ci/2m1j8ftjAApOqURbbViVFjTWZ+5xtRn5+BJiEPaaDB
	 r6cfqiOxogO+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA091FF887E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750885368.25721.7660377062230268792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d43818e6c5e08d06898bf2219ca127365bbb5c579bc1e99d8b472afba1c68bb
Date: Thu, 30 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777508853
