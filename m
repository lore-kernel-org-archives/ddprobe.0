Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6D42DB79F
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791156034; cv=none; b=cDnsDBoDRXECc6wUTT4hAXsaNCP1UTd9cwtkWybjUA8CfveClBPmJqefM8vy0dF3tu7qhgZ92rLMWWay5ZlW+FB8sYGPYUNaun+Q1iguaIL0BXat0LwVR6Vc7J6ZA823aWwd99fPKPiw7La5uDvi9u6Cn8wYtCI6sb0msu8D0wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791156034; c=relaxed/simple;
	bh=iSM3ahSIj8vraxDQ6vz5cwHdFm1yft6naOmbttwOKKw=;
	h=To:Subject:From:Message-Id:Date; b=akmC1JxLzxcZXd2sb2Dswtm38ek1NN8eXR9e5VZhWZRtlNkEsqZ+DTuKXSfoTIaFyC01T8VtiUgstln6wA8NHdSZsvVBmmoUtUhhb/jDixh9hLv//E5qgd1tMWevRFcs4Z4nkdstGtSyHObcIkSkWbi9D+t/d4JrKPDkqiqTqsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as1/5e1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as1/5e1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECBBC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791156033;
	bh=iSM3ahSIj8vraxDQ6vz5cwHdFm1yft6naOmbttwOKKw=;
	h=To:Subject:From:Date:From;
	b=as1/5e1cmy1OjtEQv6jySSOWQCN3VJ7lxUwXEmGw2jDhaytpmEBArczg8oYUOqeqa
	 UgdgzfJ1MLZwJkQS8Lez0IZYoZLOnVYBgIu1/ZLmSMzvoS8+TvaByFljVrjbKog30n
	 kuXwjSrnebyVDBrnZQm7bhkr7yxCW66djIsaqtlFihZPQssGPuoVRiFN7oUXMeeEoC
	 YndXgrn58Z4p92hrthrgRzddt6ncdShDoSWFL9EVqhI/zwjon4x5HuXIE+JTxb6uod
	 Fwt02HD+F7cAYJa1gSvzKOVDSJCeLS5gi6YyXI+wB0IvuHIO1ntTyCIZs7q21hvupl
	 oCYU2LmQiPuVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0B8CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115603368.17042.6586336494525442917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7f4cdc8a9c79d9f102203fee2931813cfa1fb5e9b35edd9463231bf80100f7
Date: Sun, 04 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791156033
