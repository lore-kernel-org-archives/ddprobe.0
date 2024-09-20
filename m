Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277C533080
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726834554; cv=none; b=uKS6mAhCkQAjMNylp7v2e83KbvpEmfQ5/QqKy34u/oEH0yKvUFfgHj3rRojNMXDYCn1A5dCH0OKVzyHAGGBKwjhzHJrUeGMxo1vMo+wDtQ6x/PMTNkHRXTr01XayfjWMcueDirbXCivzUNgDkrKcsFLGML8A0ddul8SO/nP6fSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726834554; c=relaxed/simple;
	bh=/pDCOEXI6C2A224LiJBni59v4ICKYqnrCF1LM9oBydE=;
	h=To:Subject:From:Message-Id:Date; b=Aec6xHrAVpG6zcF8c70lgILTAAc2z3n2aft7sGuEA99qgkNFnzT2Awla6DqxxySmF2O1dnwZ+UFvnS3nLE9NB3aigcx4U74NhCuOowb++BeCc386qINCd3IlfXdF6wZ0UIJQ7zn+NLu8fm5Bf40x2dVjRbMaEi92VrMVbUA7AiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWxWaJWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWxWaJWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8C5C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726834553;
	bh=/pDCOEXI6C2A224LiJBni59v4ICKYqnrCF1LM9oBydE=;
	h=To:Subject:From:Date:From;
	b=ZWxWaJWun+Td5WxypAdf0P21ckt+OdJrDZ+AwKJF5SBvZnW+W89y/sYMHVd1ely6J
	 qcLk/baZOlZ1c7OK4mr5coAASkTVH7nydh8h/6CP5YkM9+GshPeCNFC1Y79NDq4/9k
	 atfUJLRDi8qdKNySgn4cG68CT8AQQrpCUXeboyFLI6oIUAi2pnEgEkfTuYP2sBlcDZ
	 CkVS78E1xNY4iA/1ifVXFP8wxNORuE6diuskldORN+h1260sTRioX3bci9xbVVUjOD
	 bYFgtVH8SmBUyzibgJ84OMotmgMPbxMKieew+Ht2Grn7PG4OKRXF14aJiUnqzFF9iJ
	 VpHUJiwFgN+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963D9C7882E
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683455360.1103.13319057505967199827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5c7d26b7311e38ffd42868ce4093a88c7549aa985491c12a60759a5fef5992
Date: Fri, 20 Sep 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726834553
