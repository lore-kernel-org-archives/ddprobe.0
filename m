Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346D025760
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748888995; cv=none; b=OHMF8SudfZSOa5r3D8zns4rd1LcOe4Y4CCw2HU2a82oqoauixBlITkyQkz1E+AL/r/YZQPT+8y0KCZfN4+fN32CKJqzwjgNrfCZvzQfqwE432E+Umn61ywULp8Y4rrFy8Y0ZKNXyrpNBYaJncsnxnDunuRDR+rNB25u1mrwSLhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748888995; c=relaxed/simple;
	bh=L20HmNRaMzea6RbbhOB/71FIDG57Vp18lXJTpXAEfbo=;
	h=To:Subject:From:Message-Id:Date; b=YHfi/M9z7hhQ028FE4S3349061bPgzkTJ51Wb1xjgNdQW0wc6ZgSHrrV+mdtCgxSLELU8aeDvQNzIOjmHBWS9LjB2MNmGh/x8BHpLiJeS8+VTk/wdWTFk+BpCIe/22TMNKiYiytP25VhrNThKtADB8dYuDSbrhHX5M1GWKiV/3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arW8adzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arW8adzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E2C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748888993;
	bh=L20HmNRaMzea6RbbhOB/71FIDG57Vp18lXJTpXAEfbo=;
	h=To:Subject:From:Date:From;
	b=arW8adzH8/ieee/E+nlrgKToP9VNHOWS19Zuahrwj1hNb4uxbJdxSZuK+btaQcRW5
	 5ebo61tSn8LxG1cdHCVkyHBnZVyfbbxqp30pvBpDAgO2x65GPuhTA1y/sFQM06NIoC
	 1oO/zAGi7gR0rEnQUqcHb8uwgrJGGxzX7hFG6YmS0bV8zdogJvczGqMKyNd8lS5b/6
	 dHSH3yGr3LIXSftpORbjI6+thsC2kEDxuuUSda8h8W0NF+wJybTLT49EPuqP37mw6d
	 jOaffsOrMFqgVq1367HGCbLUtkgWf+Iiwro+BXUH+3uyUOLcMEiJm16NiLrWjt8TtZ
	 82pAioI3lFn9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC4C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888899357.15708.16443617744351283146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035ef849eb205a3ec69c89a594e67b81351c7e30d597d204c9678f0205ae99c7
Date: Mon, 02 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748888993
