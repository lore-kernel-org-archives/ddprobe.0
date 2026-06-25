Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFDB72622
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782350854; cv=none; b=G6lr09NsjIT9LY1HAvQtkrGvDMj2HnJRwnZpY9GV0pVJQMjMwOs8yPOw69vMf9HGshDBapGwcs0JZmPtrBD2L5jblFaSwitaAWoxdjoGJo+0flgufUkD5fXXceb5l44XucxDVkKUjpVXU1HppEWexJnXf2+MONqV5WW2z9jfDrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782350854; c=relaxed/simple;
	bh=CGH4Yym8SIK9jsKLjT55lS2z3LSC1+A3PnSAjzP4vOQ=;
	h=To:Subject:From:Message-Id:Date; b=T9zVJaUkAKQhKW+GBanysJyvUKtxIY1hBeHix3F4WxHqwe5hVz+V5Twz/t3qmfN9ad1Z+EUFyjjewP8OfoqjfHs8TcKRfsRI2+uzyjQ3Mk7MIDTsV2l3Xl2G8fJc0ONJmBPZXGtP/8P6HToGbKPkhQcwnBH+LMsAsMz+zz5QL7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gE1NVbH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gE1NVbH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D28C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782350853;
	bh=CGH4Yym8SIK9jsKLjT55lS2z3LSC1+A3PnSAjzP4vOQ=;
	h=To:Subject:From:Date:From;
	b=gE1NVbH+qcZ+7gj81VYMvXkYVzWcUxXFpA9A8i8gyp1hYEt+itGFLnkm7VMuG+Dm0
	 8es4rKrgjkrD12zo82cEzTVSA6U0nHkpw7ggvGzwwtNzHrsbpVEme0tCWGHiicEakO
	 J7Im87GupEgjUZthQCh8ep5Dm2bfw4wW8e/McVgLzDIcUQUdMSsDbYRr472a4BOxZr
	 4FlbRpYqQJ0N1ho2JudPpHkHlRc2zuXyP88/1myaB5BZLyvBlB2gc3AeCf/Dv7yxei
	 3zuspOxVjwOxBO4jeKhHR6fqry5cFs30YNNJxChr0eEqYXGsFVFQmX+Rxw+CP8al+j
	 NCHbA0xVrZUfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FAFCDB47C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235085371.13626.4241182435544956180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fbb2e808e650c7748eeff501473ded8cd20703859b309752b71089230a91d2
Date: Thu, 25 Jun 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782350853
