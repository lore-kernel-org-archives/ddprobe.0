Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227E71E6DC5
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756127394; cv=none; b=UBw/SMabomCKRtB4AZ58ze10dcLQH7QpW35w/V9vIky8Rcr3+Ftg/eagRhX5y5ZmbLMqfejcKh5kfkQ3A728QektfPHkQBeAXkYH37DsLVuKAZ/IS3pTVyVd+xCqzy0e1HfuC4TSuDOWYMzMVm55rEZGfwmNU+lynrjRhzrVu04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756127394; c=relaxed/simple;
	bh=MgcTMVfzF6TEpy8+qJafhpNkTx2fT+zxR78ivN2na98=;
	h=To:Subject:From:Message-Id:Date; b=HQUgyengX2oSKuvkLPWOmqw1TXbrro6+oF05sPMe0ximB3UVRTmn5wmFUeS2cZsyqFYv0hn0QZNkp+Mr0kbGhQ39F8sm2/7EdIvzeXG1SZy7hGx55T2e+ZNQWasH3RGNyrENRI7+3cDo2xAvZW5cGKQZow4RRGfsOeAUb/J4Fu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXw1cVCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXw1cVCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F268C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756127393;
	bh=MgcTMVfzF6TEpy8+qJafhpNkTx2fT+zxR78ivN2na98=;
	h=To:Subject:From:Date:From;
	b=WXw1cVCzNeDEzqUXdB25/CaCVNbtN6k3xMaxPo1OKirYVgaEP1ApLFxav7PV3lpua
	 ROkPj4mxDXh3KocVOBcehrj58Vhn3Mo62dZ02Tgl5vfbU361jWcdEdf52tEsNHl85m
	 rJQEQ1t3n5PFghsGQ7ZFOTR0YH16l1cAhCaIVG9nH/0azVZSYJWnSqh7F9YdjTAQd3
	 HTI3lgvprAB1fpJk1fyAsJ4WZOah5RDPxvZ6VZvWOafEChYMAuFAdir2m33Npjh/3s
	 3uqg4/rkwkxAttnrboQrsDIISfs6AtJIvuF+Zt3LcZ5HqxaiHZFf/g3v5j2BI5S97/
	 nQrTUkRYZcXPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F668CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612739357.20462.17493185266650737710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036c059e64b7d97b2b4b166f7ea1f8fdf65c7146235b25f149b1e22e88adf26e
Date: Mon, 25 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756127393
