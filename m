Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8FA7083C
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778798433; cv=none; b=VVqS5ogD/nCaTyPhXTmJexsNnhM18aqLlokkaW3Lo/1HugoZW6fTcZ4a8zSVCMPTekSYFN16zFbs+O9uEQ43bsBhxTNDxkTtF5n3+sG75gobRfhENqSAGS86NWv6CpAgFSgOnp36UEKxkKKOTZ7+YzI5v46/jOe243i0wLP2Zxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778798433; c=relaxed/simple;
	bh=Fb3LHJJqRyf018W35kwbd+AI3ySpfwjidTnE0CIRrJA=;
	h=To:Subject:From:Message-Id:Date; b=A/60O4rMJTOoWhQ8fyPVXkQSuKAA08PVIPOkEWoCViC45Tr6uW1hAvG8iNU2OFKhoCpcy9RW46JEpgJKAqds0j8/tyeH4U+XO7ko0Xi0UZq9WRQ5175g2uh3MB4b815WOBn2oBUX06Fp0LkwF6yUXP6sScWdX9CvwlAbUr6ZHnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bi1d/c8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bi1d/c8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06A3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778798433;
	bh=Fb3LHJJqRyf018W35kwbd+AI3ySpfwjidTnE0CIRrJA=;
	h=To:Subject:From:Date:From;
	b=Bi1d/c8LB0lJKT2VasbM+sUirsH/dk95oGWYBkNrqX9GrDUy6URUUEwF3BDWiXesZ
	 Dk0oSqMOPxkTBlsRXfVylR+wb5QAOe81y5OxEwf807fJYgSdsTitEzfcOLR91kxW/4
	 x8vjM4oDmC3PFUnxvCxwD1wCS361RqS8HwkwMo8PweGDfSCy0Kh85FekOdNsVNUmDf
	 sIf9Eh4YNMURh0WYCSmUdoEXpzK7QIt/xBZLAIxaPq+KDenZXq6AZIXuOSf2A+FM5/
	 biWwyIHKXEbmcMyswoDBhmEvtYq+oGhMJKWAnpWBrijuqr7u3j0WcEM53TYmpDlEEC
	 +C4qOXCA6KMXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD896CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879843370.14773.8398722760962001218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2bce1d862652ef8bd11344b8f19b31dd023b105b16375af69ffb530565bdd2c
Date: Thu, 14 May 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778798433
