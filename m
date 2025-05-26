Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F853D994
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748278194; cv=none; b=jo3GLg3iquRjbd9RzM8cmkmWvDKyCfEutGjsKcP3rjWNjVBBWeUqjuADKrDD77gqZepfZ9SS7ak0Ov/v9e7Q5y5VEZV+R+nmtNcolvx5g+ezPIMBRY8Aw4KHFk1Fd5/hevf500iPvNNg/z0LtcXZ16PGYGQj10gMhffFTiHvdCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748278194; c=relaxed/simple;
	bh=pKn617NKqOkojNOnH77fGw2kIFarT1ozAATUTh7BHyk=;
	h=To:Subject:From:Message-Id:Date; b=YnHuDmorj4X2ptA8dy95hfMEj48fp9HF6ghYNLusflzTxwufsGOffUagQXloh6co1bzjYYQSb6clerXazT16jIl1+ZgbxqC963gJdIwbIzbTOaNZa135i5WLdv4RhS864OxR5rIMdMwOza5yFA8EzwnKQcNJZT4ixx5nSvQHNMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1thlRPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1thlRPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AA1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748278193;
	bh=pKn617NKqOkojNOnH77fGw2kIFarT1ozAATUTh7BHyk=;
	h=To:Subject:From:Date:From;
	b=D1thlRPcHKFYtwovrda+gcw7KW6hC/Ouv3fqrl0tLjqGIPPUjIPEylU+RDdsIbZmz
	 hwOzDwkegvBmkfqad/+Gk+K6yZjnaz4K6Rp8qblrfiN+bEE4VDUdT1DwGpH7NTGKoQ
	 8AiwzTKisINbnGuegUX1ZCNcejgwdRlUvKBDYPjWCYPnBaAfUv6gsd11cR6Uw/+eKl
	 N0/5HXw+/I78koc215R0uGF2wdZ0MSGter020epSA6d6725XXTYL3M1mupNR/EICjF
	 zuMaqEgozfHB1sEeemynSDjx2cVDtspYd+Ds8yLuNNbOu0kyFLpqYolpp1IzWgNDP3
	 qSHvZQeIug34w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D2BC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827819357.31236.16215301543253104967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47057397b4396f7df8e48c547255fcdbe92b7ded8b08073e053dba8c30b2e4c1
Date: Mon, 26 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748278193
