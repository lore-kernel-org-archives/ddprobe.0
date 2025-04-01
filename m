Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E9938B
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743500395; cv=none; b=F4TF1IDvM5mQ64UqRAp6U6ZsZF8IuqhBJnyILWGeYQHqWBinDvkoQFEabZbP8BePfiDyxy56T74pq9svyWlMarWKoDeRP8ELPKajZvQ89n52l+FGBUcEbJIl67EC5TJtlhc+9CfDIDAxR2IyRzi6SxMqxsjC8v690TefHa+k1JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743500395; c=relaxed/simple;
	bh=V3efhQ3s370omyXYMP94Vg7MGPLRJK+rxaV2pI8xMY8=;
	h=To:Subject:From:Message-Id:Date; b=s8CRdoc6EH7YD5Reiq5Dpf1aikTHTTdphFj3kQbg3a0ms1i4eI3ZrMwCd3zMUyRTLTCpKLg1eoZ7RK5FkUduEddCqdOxlUV+Ig0jr8UrEFj4fbAuy03BW/NwglFcametfBxvkLpEiOkSI5Sjz5PiwQw9NO8M2oAUhTa8EB5AQYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSq+wGKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSq+wGKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA16EC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743500393;
	bh=V3efhQ3s370omyXYMP94Vg7MGPLRJK+rxaV2pI8xMY8=;
	h=To:Subject:From:Date:From;
	b=oSq+wGKe+w4GF+NoZZpURoJX0IBW4KgJQD54lI057L96J5cKgIHBvHVeFhibGme1T
	 Mu+gZfmG2DO4333qTfwAb/yCBBeB1FEV/GEm8nn5PaQGiHtnCNkIIVsfFdMJEXl4L1
	 kZ+o8LJOZ6/invqqKJFhc6j3ccwQIgufBzDizQC/EUXGhUQiq0h+3BbGY5CFUNw0sl
	 b+xaViTNgEnLR+5MMEQtc8/HrQR/S8W9s7CEa7rAsyktwltTyeat01FXevhEPykh3K
	 8W0PDEZw6OsrpD0elwlA8U/9+3h9oESeUWkdK+wkczgiHc6Ej5jiflHTLE7PRIHOOk
	 Q+1x0oWXK10tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C59C36018
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350039360.23958.2464030455128644309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13881b021e30fa1d83b3c578b7f117b3375683bcfdc120aba4f3db7118b6f14
Date: Tue, 01 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743500393
