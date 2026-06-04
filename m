Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B8D33C502
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780605874; cv=none; b=ZLm4IHmKvA0vlrPz/OUQ4oTZyTtPzkWmHgUIpGqxB8+dtMsn3mKXMSLW2PPc0oGER4BrV+2js8N00eTRxFkhHIL+9mTmyatyG7zDdQ0Q1IhVn/62tyowVqjQlyUN8NUcP2UhQ/ygt1A1VMn/lb9NMQ91ikDvLCrnrwN0eBtKnNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780605874; c=relaxed/simple;
	bh=keyafc+SGAbVkOHEaPfsqgFQgKVWlSDw4RQ+pbFXik8=;
	h=To:Subject:From:Message-Id:Date; b=fqWNw+Mvwtu/vnZ+8cePkTOaj7mfi8ZPY4TdOIsDooD3kUXONqKsSpVJM3fGUW+YJEsehhrZuqFiw6c4xExKlieVvc+Wyiz7ulRzQzS3GXmE5VCVBMzh9Zihan+Id1pm9OajQ3BVjbHvGNMQGV/PMNdw4XhCpZVDUNy4g/RTFRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/GaeKFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/GaeKFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D853CC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780605873;
	bh=keyafc+SGAbVkOHEaPfsqgFQgKVWlSDw4RQ+pbFXik8=;
	h=To:Subject:From:Date:From;
	b=K/GaeKFNekSTS0XKHwx5+uPQX3MifO8JTN6NVUmOrU6aNQl50vEvV6xIiL3wrZ7If
	 uP3bXTNlvQuHsbS3dRCSGkPIOpNRxpNYQs8FfCPZojfKudB//8uI8HPIJexU7wrwOH
	 SFMJmu0AOEaxHm4KdjDYENRGYbSkJBh/jrjQvtPVCG3jMfLdK2qhdhMA+HJCAfZmDb
	 7ItGnjhRR3m6kbWhNg0LGfJ0GDx4LYdI+tNVOuoRMvokwHbynPxNYvMc2pIks39Yty
	 dmXqH3gURkc4GgomadunD86y7L93yJPDFp/DNAEO5l7eL2wpWgKoV+BbNE8KOUHCRk
	 5uigk7G4iAnyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B935ACD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060587372.32268.3540075292443729874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fdc1a42260731efde3a7dd628917a328a2b6f3e1a318a1a3a56d4418a33ce0
Date: Thu, 04 Jun 2026 20:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780605873
