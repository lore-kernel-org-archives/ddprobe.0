Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6DD5D90B
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706969297; cv=none; b=BVDKGdnC7b/cxgQxd4zDZveL7l0sbLcWr/BdUl1cZ+o0boEo8d2iUVfchF9+qXrWw4KydtQ2e282aBO3KPuR9GPc4J4fNXJqlotg+HxkObgX/JJHRXRc0ALsvw7DfiTV4tXvkRNMYWt7bI2PV8N4TooiV/XAn8N3xCYuOMGljhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706969297; c=relaxed/simple;
	bh=okkLOnZImdzht8MXkOhCeyqQnD4bgvl5plblJ11ZgKY=;
	h=To:Subject:From:Message-Id:Date; b=Ej2GmCl66C52K+0eXGE7Ievc74Xv4pvgqzPJ0tcXhxQTni3xC5bYUbIzen/Fw+EZxrFR/qJsnJ9Fkg6kZckE2M9um6HScI9fKo8yvffQ5s9cDHFRL3GPBah0fiYjAFQDbfHIFL4s4SstraFzAZIX7Gb+7AK6rxR7Ry5EqeggZjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESrdsqsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESrdsqsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95511C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706969296;
	bh=okkLOnZImdzht8MXkOhCeyqQnD4bgvl5plblJ11ZgKY=;
	h=To:Subject:From:Date:From;
	b=ESrdsqscMrwY2VLiTHWK4xskOgSjv+bwu79UuGSaPYVwXJcCRctgKT/Esp7UZ7ufl
	 T1q7hYDpl25Ps/vdTbsitmT/cSiq9QQ1DAPKIlrxIYFfg7BAQmL0p69jN9Vjzm4FYc
	 BdI8bv4pLllkVSwG9xs1OaQFbA8zXIT5ssjR6a82EInzrZ0nZYFh2G4aijDCJpFqva
	 3yIyvuuWVpuCzsw8MpxU/TmtX8iEyXbGG2T1BwA64IbAdkljOWzwo7ySf0tFIIhi7N
	 SXKgOZ8nA+OJQhihgko69h/nXkC7nuJaYVYPt8uA4dTpRKWpegPiP02p30xdNvAB5r
	 MiU95rUvGxhHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66319C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170696929639.3739.6443447505146624130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49e912865b0905d337ffed18bf3b9e4dedd5a79175fd1a7e405ea55e0c05d26
Date: Sat, 03 Feb 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706969296
