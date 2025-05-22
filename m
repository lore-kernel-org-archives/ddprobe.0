Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC512522BB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747948193; cv=none; b=GE4q7C+qI7p6KZbs7LvvgNdfzlQcyybGi9HJ+BsPxXTMFKfOw3wG6zNF+2HNKefIeSheDB+FiaFiwMzHRO9G5cG5s/HEP2YTpPWs9NPUWiq2mtcaKtLHiNFhEhWKysugbzQFNYPj6CxPDRUkv/zyqi4oHjCb9f60XL/oxE0Hng8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747948193; c=relaxed/simple;
	bh=Oc6jCvMHnM1DvV2T6+JNzeFTv2+c3pcCV0D3S2J5lyo=;
	h=To:Subject:From:Message-Id:Date; b=HjJIIc7q+0RG3Gi+MsJEZHtzEfX95Ra/Rs0pzF5pocCnR8njEOLOSBBMEoS85qAwsaiMA95Dubjtdhq9grUocqgGv8eWB5sqdAJk4790/bxlwUOY7eNlGv2Nofxk8OK2nP+80kQic5tf7MoPD8jMmjQZbycmhg6q91wYAN/QkWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWK2mM0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWK2mM0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAEEC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747948193;
	bh=Oc6jCvMHnM1DvV2T6+JNzeFTv2+c3pcCV0D3S2J5lyo=;
	h=To:Subject:From:Date:From;
	b=HWK2mM0hLpH8CDUqpy36maSjMs/0T1rOcYgUOxTj2N+khne0XlI66mL4rdOqxnmcz
	 vfgOAHafliVB/uc0NOTA39xKYfT8SyKcsh5JXgOknWgMZSAYCTfDZ1l2nX93dAttBG
	 RH5Fx0sPjBCv8+qov/ZAcInMCUn3z3bNt0OSNzr7PBpdHPoS7vFvaaL5pgfqxwbW5y
	 JWCpEFIkW8ZMOuAGPo74YOPumjvxolp1a+jcLEw6JOXKhGnycmvt7o4ie2tjISjkUF
	 fakHlE0u+jr9cJWvHxp5myJkmUPfpHjFHexe0R41ofGxYzRxjbXJe/4G0ULburvx7j
	 GgU8yBiFzyZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105BC54EDA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794819357.14535.7070434409392344672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5cb5cccf9a8821019494613fe65e96b0b7fea96bc609b45623a06b38ffc0ba
Date: Thu, 22 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747948193
