Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152391EB5E1
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772755494; cv=none; b=ZPZBrVQl98p2aSl/KGBEBRIdTf4Pmet4eYXMx+3NQyv6h5TDyngZCod1uRgOfoLi/25G5jq6OWFdn1/csACLH2yttUTqaSDt+PqdBTrjs1NtPN6oazH7PmQZ43ZnZ0zj+7f4gZ/BehhuPX5KOOHR1Enhh3If71c+cwfpqi4TMqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772755494; c=relaxed/simple;
	bh=DqBM1k8QuPREK9NOwv/V6ChK9R2ZSyATRVNAP3fvgbg=;
	h=To:Subject:From:Message-Id:Date; b=dZQN66AHBK8jsir2tLj0BGo/yrpidiYfcHaAuxHcAb04qACY6AD2UvA9TPHIq1AN7IPNmert2R1s8zUFd0Zzpvc5w7C3IJ/WhW5mczlkPflkeBYf6sLsa3HwNRwnTYimDlqExCQwj/wVHKmW4yhL13Zued7Qc4b01xwSCsWkKvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8Ugl3n5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8Ugl3n5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEA9C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772755493;
	bh=DqBM1k8QuPREK9NOwv/V6ChK9R2ZSyATRVNAP3fvgbg=;
	h=To:Subject:From:Date:From;
	b=s8Ugl3n59RE3dnNDN8+pOYEDWYYnBnYNgryqoa0Nw6PGnE1ms4dgH39eqqcul33Ew
	 fVCWiumRLDeJvWBrndoy4nj5csr/V/ETaQ2nlSzhIPADzFbbD0ZqImoeWk1p/Va9/P
	 izCnaD30P0PAqsPjK1FXnDEh7oavZLbcupS218bR+wNl3mPYVVucqUvM2VY085D7eW
	 XkA3MSnmS0CGpY+tFiU6Wij9aT70UAaxJwayGvr0eX3mUA53yR7HMVkwphdZAfRx/e
	 CtWCvv45H8DJ00VyKJqwY/qJChwK6wCDwqPrlGzVUehx6M2yQ26rSdOMsJe0DW27LZ
	 ZcnkxKkrQxffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98944F513EB
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275549358.17570.9661946397721986709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b1d18698c5f8df689ee25b3ad13d4adeb0178e19addb88965aab87cfb0a41c
Date: Fri, 06 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772755493
