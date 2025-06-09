Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3235119F11F
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749445194; cv=none; b=uW3/vtymnhvXur+XpodWJeSJzERzHXwOwBDPHnHuXkJ7TMXk6DZW5ovCk9zFFt81tKlRz6L/3heID2ctovVIrHOVNIeK5yqsgPtmalRHimr4H0MDFPjzL1bHtmeN85ngnuzu7biEip8oP/Eallzq26Kei5rwCWw4apNrF5ToEjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749445194; c=relaxed/simple;
	bh=OapDQ/NkGuC38Um1mFErhNDWzxv2RliVzaRRkT0OnPI=;
	h=To:Subject:From:Message-Id:Date; b=dSBV0MNuCwv9+O9fPn/dfhkk8qEZhR6NpAHSfVr/6cTyAoW7S34sUfSyh8100KF/DQ57uar9wFZ652+JZ0TFTIcA8XWAF2BE7JFOW15Vw2pngZ5X7hLsEedrXhjd4ikjlgrXDlm09L5BI7RXMa70f3V/WSRdLJSCEYSpetr8LbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCO3CjAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCO3CjAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9535C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749445193;
	bh=OapDQ/NkGuC38Um1mFErhNDWzxv2RliVzaRRkT0OnPI=;
	h=To:Subject:From:Date:From;
	b=qCO3CjAKJLy7XzcLHXt/gB7yg+q+ls1VYFo9r5LJ49g/ltdD5B3yQLhWeIExrUURE
	 rmmtPx3fvx/DycDsyo4ls02xsS9RveSaH9maLq5xUR279ZXRThLZ4hFRiOq1Yr0DJA
	 VZTfZ+miE+Cix9M0e7K42000r5aiQkO1Rp4X5dUZAtJ6IlORl7mbDizLJTuXbLBofK
	 mPMRkaW4SMsgaXX4Cc0czWig4vhXjb+x/rkFbRszEJ6MVGx5qKNX69/9GdhFJs3+2o
	 3z9wkxwXplyXx6iFG11ipPa1BFc/QX3pmV5mmgvEiwvsuWd4pEG8X5MKWmaMx8NYEm
	 EtutG8i/WcBPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9557BC61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944519358.9425.4195509650564359846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29296beef949a31a4ef112eed3012d1e10eafe4a31472a8ee9bd3b11441ba1ba
Date: Mon, 09 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749445193
