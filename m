Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3957727B50F
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759948794; cv=none; b=HXLEo+VuyMqDoFdcV9n5w4ms2JeV5UhLvQK5Lb3M1aNfxQP/ePr/uaNix6XqRHgVVGHYHaKUr3GPKVq64LhohVaIiNMwbOBfLNC5hkdgL4X8/OcKCF0j4NuIMdd0Mnk4MonmJrfXei3P1E1b90MEBlAMUK1t8XI7lKfnol3ptJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759948794; c=relaxed/simple;
	bh=z06Ktg3gZ6W8/ECnVJCV2txFFuRXEfiIKOqCQ8I9JqU=;
	h=To:Subject:From:Message-Id:Date; b=rmCYOpiR1Tj9gi/m2xQmuRg92FVpvmx/MWSH75cwiwe799GJwRcfnDca8pF88Ukq6HCVQU0dWFmlCMWAwCIG1TfUM76GBuJ4sxCPIVFWLZL3OMy62XXuItqfSSwYe3eYeRa5xvktui5B/y5MKxcOk1qQhl46k2Meofm+8Gueufs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDjFQnsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDjFQnsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89E7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759948793;
	bh=z06Ktg3gZ6W8/ECnVJCV2txFFuRXEfiIKOqCQ8I9JqU=;
	h=To:Subject:From:Date:From;
	b=IDjFQnskPqwdQk2UNzqQ7ojSSOBwbB3Par11MlJH3RmUBQR4upqDCAji6Tr/5tAit
	 yCRTQdOOvbs7LvKNVp8l9bhPPZ8D1GCmYP+IfYuLjOybppAXJG14g4nO0nOcdUX1/w
	 RhKlUT6bdFvrsnCdK7/rJZzTldMtaUE2okP2tPlZSNVycz8NWWJCn7/6FH+RvU/gjD
	 U4heOgnav6BHInyhZPsfBCEJKLLW8ccesM6elKr6ez0Wex26O5t2cazrcpYmNtCuMC
	 xDmVqT8q5iITn3Du95uNH+EOihKI16c+gZ2jshPHzmS9w3ctLNHdAGGzX+oBW+FLX3
	 D7mxffcEL14gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B93CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994879358.19848.10924034267181161611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25daa760313e7ae9274790561a93714a213a46e4dca35d7fe898c58ba225369e
Date: Wed, 08 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759948793
