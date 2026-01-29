Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1072B2236FA
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769686434; cv=none; b=eye9iP2GD6YH0XLvtSBRx0hUB70X/gv9WmsC+HinSr6gICqPBZdxpr203qBvlUCRAsXAxyqWcHkZjp0JjoV0MSBQuq6HfjJFpDLgGdADloQnKSidFHwgjUZy1J+lQCODFN9IIU4sD+4WHbSPF6tqV5Pi0ET2ietwtuMb4ereMRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769686434; c=relaxed/simple;
	bh=kFDt92BHy3XslHnnE4VRWNT7M45lIy8Ddi4H0MWv/xQ=;
	h=To:Subject:From:Message-Id:Date; b=sau5ybVs0uZtdMdrLcEEEosalg1r6zv0UecbIIaDSKWJxngOZweAWPTojVqES7RG2thhPmA7wYvZOnjWvk9Kg38btaEaW+16IhQoXCGS1kdRIGFxHF0FtAFYTu+q4k8eNcTMAYaXQMR4ihfP+3iqEItzTK8hzEDGTsxD7lyx7LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f99Tv7b3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f99Tv7b3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A474AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769686433;
	bh=kFDt92BHy3XslHnnE4VRWNT7M45lIy8Ddi4H0MWv/xQ=;
	h=To:Subject:From:Date:From;
	b=f99Tv7b3RVE3pQwU8bID5mFbA+aQ9/k1MSdZEU2txCCR3/TvSpsLS5G2kDHPUFbYS
	 Yk3jsfQ2Oy4ig7TUXy6okw10YuPhGjIUO0LM+bu9ny9amOVubE0SdPPNYThiy5Qpnr
	 VjLaWwiYrqL6iPKxX9fsRrnFurrAr7OoxshVVIIaHwXGT9QsrToAyVr/KrMzpOAEn1
	 mq8P5xHrPt0i+VgDM9EPJ8aUN3tkEWRpKTFn8OoGzLBViFFjPMRRIoPK0cUyr5liFn
	 2F5u8UuJE5LW37OLxJMFW+VNJ0poZ+RN2NNSHP9HAZqyLOPARtlG0PXVyBjIYdhVau
	 j1gq9J3gmoe7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95635D6100A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968643357.23436.10794421617581682845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05743cbce645e175335cb19f17965baac488b25c39b2d32aa434a053bc7b7a6e
Date: Thu, 29 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769686433
