Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBBF23182D
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749823794; cv=none; b=Lp4Rjyl8UjLzm+gUI0DtLyN1nB/Gj1QIeJ4hXzy3JjOLJtQTUxTyY2vVJAQir638jXDmSnKp4xNfr0Y60NbOl99Z7ve2MbT/D4soo7LOsLJtYJcV9yiKBvSiunRJJTtlGehzex4UZhLO9YkPeo9a9J2ib/g20OrjIurlNkcGf9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749823794; c=relaxed/simple;
	bh=Homt0H9ptoXzexK87D4nMAqrhIwSijmiuf7yh45D9Vw=;
	h=To:Subject:From:Message-Id:Date; b=gJYwpjGc9YNGlaScihh+R18YhQMMNPdH//lMaA+wpwlr6gSXqjjIHB0LuBkYX9oKzHjcLE1zfC/NmSaTIYEJWNKnqSJ5pgkT03pU08rPnW5JztqOsxF1gYkbNHWi7+RZD/B7uBQ2ujuAqqPsJwrtE97pJ7ga+DknPY3QM+/y3QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6bTLyon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6bTLyon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34EBC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749823793;
	bh=Homt0H9ptoXzexK87D4nMAqrhIwSijmiuf7yh45D9Vw=;
	h=To:Subject:From:Date:From;
	b=V6bTLyonzvqZigNOO29Rt+LwdYGEKYmFEoOj4NfihtHfybE78aNBCpldrNc45UX4e
	 D9yPXzkj+h9/rjkDXRKWF7NUaNcM7ubd0SoVeV13HrdY5qBka9zCcnvcjgnp0gHT32
	 yLxmxPY2MbmFa2oAnqfE+NMkBsq7YJbvZY/FxlvQVl6rculm+nSMLAVesbIKCLiuGw
	 IqmXksRTXVVn6Oy9qY5hNqAfq7VDw61oetsCrH9qJ3sCtwnSkq7zjBYJhGgc8rdbzH
	 DZ3q8VsLCJJKbgXn9SHlnWudImNrjVHTSeeqW3GsGmfOO/AQZSyCvqObsEurOPH5wX
	 AerQxAnUTrISA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9222AC71151
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982379359.22676.1489714037498446826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b691e499c3df25b72f32fb3a2130007363e3acace9d84f0015952567fbee28
Date: Fri, 13 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749823793
