Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC743D561
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734905154; cv=none; b=TRpTdVhUSRVIaD2wijMDPnd1HPd55SJFOPRS1b8WfaWm4HEBX11QSqC/H1dM2o5EHHANHBJyYvZpirQmU8CF1LjqggqTZ2d3KeXn13NneF1DzKPA1i3TRl0TEsKu3urd5ChMz2j9qH4QDbhxergXXlVnEi3VHsfImrogRAPVXiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734905154; c=relaxed/simple;
	bh=nuGIF6ZgvQm6mlmEXABEZJ5nGShe/U0qgGx31ojF9UE=;
	h=To:Subject:From:Message-Id:Date; b=JsCDwAmQTShkU9WBXLxE9yXeeolkmXmVbB9sQjEO7+NHJqoG56jN4iwMojDKW2BeOXyXJGuzgrBvNB+L+MTFisP4N8XKw4SkcmJb7RSoyqx/cUUlGawt4zsJMuQxFxVfk7nXNt/Ormb5fMcH4qpgeXk0vuEahwpzosMrrx39ha0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUHQywwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUHQywwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A620BC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734905153;
	bh=nuGIF6ZgvQm6mlmEXABEZJ5nGShe/U0qgGx31ojF9UE=;
	h=To:Subject:From:Date:From;
	b=YUHQywwXPVSSiBI+7+q2zWklQEXupSOtN5W0z5Cmsj6qKXNDSPjiXW+ROvjjA77Et
	 43IUUf+0ClszOU2Q/QAKwAhhqrf2/G/IpL/1fhvniHEwJ6EXidOiViDnoxxWTzHLfM
	 tpPVtvKsXg85RiL6Ve0yZNOXmTi6FnpThSuaR4mTc5y3CrYETZ0BsLIiBq8V6CGYY+
	 l2N2l1j7VPoqFu9b5l2xKNoz3XghJd//KsYX7UJxb9iNM6/l4y70XEK2Cczxz1897c
	 WoVl8WutClnxd2wq08aMz6JTSJLjOGf9AV/mJr7VOUtM2xrHkuThqFI30abAYhmLd2
	 ZZ7EXKGJADZhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D56E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173490515358.27870.1591050787962529988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421ceb4e94771b2a3c06746a730fdb001e724b3479d5ddc4df847befba6deebc
Date: Sun, 22 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734905153
