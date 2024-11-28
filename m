Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B821BD9FD
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732812954; cv=none; b=KYyBW3jVCxck9IAKnjv/0GKcAFgL1aTVi97xJvAziEadM7f+0ifeSVyzawve3lpnKYUuWlP6pm9B9KvNcHR1k22u7EnSI2xg0Q5NSCVU1F1erol8+jbFbaJZSrjN6kUtQ76aUOqZp3cdGiPVAKARinIYCV3j9V8DaYy6JZD+oQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732812954; c=relaxed/simple;
	bh=jsU4JIKphoikjWn+a8+I6KERaxHAmWax29i2I13S898=;
	h=To:Subject:From:Message-Id:Date; b=JnqLNhd4TuvWzt9DvGhPWC5gJuREngz1vgqu8uIkyeJbtFiBNN3U1aTZwjPYOSj/JyHzR1ZhmxtHh+KyoecnX5himIwNPZOQjH89wJ/SOzruUvQ4YpjDejVB9WjRE9RvWtNOy7mXG+PRL3dhvxYainHOfYqROXu4HY3vJp25Z10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7ZI3Lqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7ZI3Lqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42B4C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732812953;
	bh=jsU4JIKphoikjWn+a8+I6KERaxHAmWax29i2I13S898=;
	h=To:Subject:From:Date:From;
	b=Q7ZI3LqbzlZSAtzKtBET7V7EMcYryYhDirK7LpSiR8hFVmdl6Q8JyyeyI5QgYWmGz
	 Due43hl8ZbaKe2rZs1cvxhFV+b9U71FfPY9AEoMDBz6KqQ0Ocm35qIwCveJsQgydYe
	 WyWSUH6Y3lYFpqzDRWBEGJKlUK5+jQ/bSizwe9pOskRz+6i4HngKg1ZFVPHTkOuF3m
	 HKx+Pdvh8bBEaRrGYFUxVNgsmaI+VTb6HVvKoPHD6ZDhxXKoDTiRzefWgrkOcoK6UG
	 jxExRhktA1xO0hAEGAvC65RNrzZnNHwIEG4mqn2KTOPgTqLg9thh5VzcOQc5wKw43c
	 L/f1auekJPvmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ED2D70DE6
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173281295360.21415.7290888671224502684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb30d6fcabf73fadda2c286dceb9389c92bedc4df178e8dc2bcf9c196b5bcb6
Date: Thu, 28 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732812953
