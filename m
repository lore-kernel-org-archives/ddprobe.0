Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A801524F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720395383; cv=none; b=trKCLcfyqsaWV1SekDC54tBlFgnS4eag8EEI/sJgYxF6smq1GWnykWbCDndSitx01uFYs2GTIq9qwelv2h5HXUJhCGEtN9DFmoH9JBDyila0dnZgopOaQXGEUqUABLw/S8DqmDUnuKnZ9qhWjSzolyyqeMt8SebDTTs8aKJ/qrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720395383; c=relaxed/simple;
	bh=7X8uDdLYhiNWkTfMTxQWRmNWwLGhRLtittJpUeOQM5E=;
	h=To:Subject:From:Message-Id:Date; b=Fo2Uo26Evw19LWjJJANm6I/MGo6HbUJQMnXQQJhMfE/osRhgbxrZHCbxbg84oD780TF6ASghW9Zsopb1FEoFnZ861Qq87QPd58VnzIALlrGWjdMoVIxcx1b2Lij3O8LM6O12ta0PJwO1Af/+7SOEPEb1uhS11RT6fvhQEw10eeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uecONCfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uecONCfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBFD8C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720395383;
	bh=7X8uDdLYhiNWkTfMTxQWRmNWwLGhRLtittJpUeOQM5E=;
	h=To:Subject:From:Date:From;
	b=uecONCfgDAPH/iW+deEUWPXhltqEsol16ZYDdxTRVIjbWb5HV2EH78hhBzo1AExRL
	 +b8rzHsM3n4LbCzaKRDFDEn2Qv528Oh+m3p2QwLZbNhYCnbNAuwGeM0oCKU/xmj/2v
	 mVugFhPfnIEBAq1+jNogTysy78CROnVWYhLSwSWzd5R47vnK2ZlwYeXtNGDwfyuUh4
	 /q3tgIFrJblxdoobxmtf1SFDeOKKDuXdUYYxE0OL0iQOvWw05iJ82Jojlvqv9ZJhF5
	 YMnReAEoN09nj0lqlG76gMdW9MYPY6GeNTuVKJzEOjK4nuS6uJk6xt6TBpwVQUCyRJ
	 7p16incWWH/Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D286EC38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039538283.19759.14903589535544265233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd068e901dbcd7000ac19afd88e50c8f5bbec9b0a32a4e24ad8d276f3e27d9e2
Date: Sun, 07 Jul 2024 23:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720395382
