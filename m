Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EDE2101A7
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722611154; cv=none; b=NTixPBJlMYWsyU++uKIsKnM4egZ7BoVg5eeU3k6EUyPZJoZ4XLbeCjYJxYn44q9KMngddhaBSNsBpb7/BYS4nSE1wwwJhkg34w3EWit8djxUu/SOA25fOV56UH48ShqxLEIGk2EFfzTW0guKCWazXT5TWcWhVQpvmIRlzvI/utk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722611154; c=relaxed/simple;
	bh=JjEz1Zm0kM0iVQszHBTXuIRcBbv743giSCZZMeAjDck=;
	h=To:Subject:From:Message-Id:Date; b=icgWR0K0paB6OP87yRxkCuAXyYuFhhIaxlK4XqcP2SS4DsoEpkDRlUp/e5L3GsFiZ00bBT01Rw/wlrcXJfOg3yEWrexDuHa9uT9bq8uf+KLq3Slt6DwJyefjP8h4vzAdOlp3DzEsHuybIMpZQkWUti7Q9CQRsf/B5DxHQnbiZbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTpDbd55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTpDbd55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5A7C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722611153;
	bh=JjEz1Zm0kM0iVQszHBTXuIRcBbv743giSCZZMeAjDck=;
	h=To:Subject:From:Date:From;
	b=DTpDbd55qvE8BGelWgWS4pansKUZS1O6D/Pgw9Prb85KS2oCxUu0TIrgyvGj3ODLH
	 HWzeeSgslvYJZ7CZQx7keXuuEKSYuqiSxXCIERqXC0nzb5UVylRpW5TqO6a1kPsl7f
	 eHfgiq7bAF4r80nvJ4ZRmrSVEIwps23XmPB9P+jw9ONYNEY9BUtBQOH/QIwdnRE9iK
	 VpkE9/ZXKX67i/A6m7lT444bvve5vsujyp09R78EHeGCz8NUaQ1c/Cg/3AkDGGQLih
	 BZC0tpw4MpNgj2q4urHvoB15g0a3M1Ajq2oNkOvCSGDXaSYgdKZqq32r0YcwR+XOou
	 vl2X4IV76DpaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EF1C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172261115371.14698.16378465798850845898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5235e1fd4cf3c1a2787e472c78ae3825f23f08ee7152ba7498fb70ec6579ad1
Date: Fri, 02 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722611153
