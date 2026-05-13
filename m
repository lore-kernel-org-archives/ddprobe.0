Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D38383C7F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778712634; cv=none; b=tjGbRbkc3TIOz8wXJr3ZEiYUIrwy5neT0+40//D9R+PiICEN+tBO0nEnxVb4y6qQUWr0KJjgE8IQRRofMT1q/XwCB1T9QHu51cC4bnFInSevqkvUA08VWDBMC/ZgmLi1arsfXeUtGORrsz82sPcO1hqYEm0Eck8ohfiw4yK28rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778712634; c=relaxed/simple;
	bh=RiEGsJ5AwvrNpYwK01hgQ4r/eaKldlbG8SpfvtXocZg=;
	h=To:Subject:From:Message-Id:Date; b=Y+fjNy85rnjH7+arS2/OdnGbf13fPph1gzp4RQbTeeQghaPa9YdT62LSOUF/6bn1ho0+328rmCSrGJdGH1hrsavOIZoflUANumlk3x/yS9q6jH+I8HaojeeVaIc66N8zsCDfPA1trLEjPsxDR6ooFchtjZhUQf39662UUbqbBFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBZUUM7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBZUUM7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7E2C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778712633;
	bh=RiEGsJ5AwvrNpYwK01hgQ4r/eaKldlbG8SpfvtXocZg=;
	h=To:Subject:From:Date:From;
	b=NBZUUM7UuWIB3wFylHgxURgW/3JrNnTFXbD6bMjt5geZnftzwUVrdyEksatQswuJ/
	 KWGCIg0T82GCSIVBKcTZ1ijX98RlmxuDhNwj0L0VYqFWlSNSUDbv/oM9Z43r5Aesfp
	 C3kkvralZ6kdsK0woaKyJPYDm20HpCuw+ibYxfIOghuv1J3z2gvF2dMtZwZ95p0sVf
	 P/D5qChp0qTmbPkdTXlUeuODwqqDwVVkIumPeobv+7D8EducTyyFimCPkq8sGhWEf5
	 K1s9r32aWoTrov8gY81VvuyDKUb9G08n0ULe04rIfCyIXdKvgHez16M+tFlEzNQSe0
	 sgSlmMUErYisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB23FCD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871263369.10420.12460051757244426715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ca655473ffb102e5f9dac681ba4c93fc135ad71b72c22948473a5a1c3051da
Date: Wed, 13 May 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778712633
