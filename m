Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568F934D93C
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791049234; cv=none; b=Osyo05DccWMhHbwGMQaIr9CoNCDj5REyZV6zCPZ2lKKGE/gkDW7t19pIsgZfjTWC63f3mi50jUnq2GyeUmZEJFeFkPjlsAe/0M2GVgWux3iYlBsAFtU4g71JwXh1xKZlEgrYVay2F2OOB+T0WVaTDLV4Yrtj75xacwCgjHp5j5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791049234; c=relaxed/simple;
	bh=sY4I70bdzN82enhaAtlqSsmqlKiXX/vXWL5p+ms8M+o=;
	h=To:Subject:From:Message-Id:Date; b=XEMBY+9k0b38vma67v1DOajayrHSitBl2JMRqR4ef1sTXg5Sh5CawJu6fV4jPqgnWtTN8mAyrpvgDy4cUz82oHtVXmF1FFj8liIdYOlViP/hl7F5RWQOJSKFWKRToqawQ89Pkmh4DZQcU6kuhkmNgR9VN38ByHDnZ+5g89+GrW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTNUey1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTNUey1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BEBC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791049233;
	bh=sY4I70bdzN82enhaAtlqSsmqlKiXX/vXWL5p+ms8M+o=;
	h=To:Subject:From:Date:From;
	b=mTNUey1shdPo0TP8VFXKPELuxTqA4hJ9hHjsEuYvJXY70cpjSSyZNCmn4s8yXrHHs
	 WJxG1Q9GwXx8gN5xpZHCLdQ3fNtiojEkO749c/l6cz895LFmrrQvmPzj/56Vap2h6P
	 BqLQH7PRE+lRE0i7ZCUlOFs0frHjHdH6PQadCH6d3XSpg+ewAzFpaN29rf2CIvUR1U
	 XHjk6ZVQ0vvm3T4TuEQ64M73iPTV+GrPs7KlMKbI9H6blX0xRF+6X51v+qRAkN629G
	 tfafp2IObBXzHezi4o64X1B6hmKnVUeHifWTBNrqTXgufqvDv8q06fslnc4hPq/KWx
	 wDDQatsnchS3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD006CA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104923368.28622.10184334283629987745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6af56b9222e46ba869efe77596970149add215697b1cad7b94afdebeb0edbb
Date: Sat, 03 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791049233
