Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E80B440C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749062994; cv=none; b=XS4JjcYo28IVfDdtvnM96RVbuY9ihOAbL3fsnjwGkh8ZAOh5YFcg+elkkWv9D9fbLm15Iw/BNPCsSXNqCob+r8ebj3BZfhOhr8c20q39EtrCEkH0Vpswtq7rz1zEYsrWZyC0qC7Zqc6B57DE/F1FMtkMUwC3TqwsGx55SR/c5cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749062994; c=relaxed/simple;
	bh=MhayL2foCPEkSJT6+rothmDXBdbGjgWGibuwN6xLmqs=;
	h=To:Subject:From:Message-Id:Date; b=V49bADTD7PaOJ8eqyyHzsr6kJK626LC+K+Z1D9yHOAy/qoDD5kvCfN1CIwnAAgOmsD/3qjVuqBOqbatKL6Ln/YvUZs9k2otVDyL00bKrTWUKt/p/WyMSb0qj2qAvrFj427NEWp6CzMWjjB9GJZ1cvPUWsMtQ0hfWJfgQnsDtKao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYfLOnKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYfLOnKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BBBC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749062993;
	bh=MhayL2foCPEkSJT6+rothmDXBdbGjgWGibuwN6xLmqs=;
	h=To:Subject:From:Date:From;
	b=sYfLOnKVjzEQgDhgEAu+vFenv0jWsyiNPChz+PXDDjXRXl1U+tWJptWGGwMA7rKYQ
	 ppBtATLLFGpGPQufu0mTD7QLXboQqdvcl40GiGhRbEIZFp9h/baJv3kcRhrYkyeDWW
	 XCaJjAoJ3UljLFXd4qIpmO1Ez8ZLPGqlWt8xPb4DzTnoRyqao3wsrINxLNz/D8Kjd+
	 pIoy/HRAZG9dbG0oIUt9uJ0iMq5VL9BWcY4GzRIuowb9IqTupkJLKruqFcYRMDkyQj
	 w3BSTecAUJleNie5zIhaNen7e5ddJ06dTmL0fiMfXesr4Zz55kmDhxDtUMFmgfSv/X
	 3BllcsqeyWUGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92442C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906299358.5829.281848351283883451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28176315566522778f4ca6b75246d5a6f3928ec53ad143c8c3cd0353cf8e5629
Date: Wed, 04 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749062993
