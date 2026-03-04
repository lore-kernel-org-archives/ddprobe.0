Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9863B5843
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772636694; cv=none; b=fYT4XBUxL3WEObV+xCInarmw0NSxREL0oeFHYMUq9WzRe2vomTjpYrhm129s4x7gpYU6ZRIZuJx5xMkqoabHcA/1X18hKqkxvfmNgApWJpKl8czLkkSsnuVwU9XyFi7JakHTzNx+Y4nRusug9/dfrkMBTfuuYT2mtxwmyzWsy6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772636694; c=relaxed/simple;
	bh=AHU1if9gtyLuup8BDqsTZzInPPRPASKwMLMnXoDyNMI=;
	h=To:Subject:From:Message-Id:Date; b=auNbc1viWG1Ly+zIqBkIN6HRck/JcRRAJYayTnvtZh4q386Ihup8uSYZChFHOdjc7tRZtdWwcWmTyr2gGbq4Ugfz2HqGiCvpa4hkFjt1rIQD4L6MY1Zpip3iqmTteU06ZUmIkR+z0RuUvKJGyLyEw9Lx0513n9oUVOUkrm3/XqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpOSw48G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpOSw48G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7850C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772636693;
	bh=AHU1if9gtyLuup8BDqsTZzInPPRPASKwMLMnXoDyNMI=;
	h=To:Subject:From:Date:From;
	b=HpOSw48G5cWnjlQlNTzB2SmyrgXMx87PsLJ6GgJZicGvFe5NB0GZlwXibnJX64ezR
	 Bsn7O/eNJwESUTjLznkAYPueyVobtUcF6KHUpbQfKkm+NgP5M8qpNvu0m/JL77NXMV
	 xWpJ+KEBoAMTDF4Lzz/iCj5gBIaG9YnHtE2pcWovFvMy6890IkycbAtZ2q61xy5DRR
	 tBX4AJSZygW1Sn9boYVL/ZTPENX7bZMIw/w9771ihCcrTsJ3yVOaJ7oq14Ue7zXI8y
	 I9vCP2EXfYH9uhpYUm1Q6AESVqKG6uuTme20mZhxP8tinaFzhrBumq/Wiz7vuLu7+a
	 HlVHuBULQOsAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD6FEF8FF1
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263669365.11879.60125121403359283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac72f3dddce0e3e1f99d76123e2b36585bd2bfcc2fa76d6306fdebab6bfb8a2
Date: Wed, 04 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772636693
