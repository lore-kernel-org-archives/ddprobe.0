Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A6D2E3367
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742860193; cv=none; b=Q+WhN1skQUT1rk+fM98zaP5LMr49ZxFKaz2bSKlEQMknuYiPT7pnDMqs5jA7eiGWnLj5tsdbDTN7Na9t0v020HsMRjzyyhC01CKJkS/XNgn4D+7G08e356AZZktr5S+tfiHiZYUcklFp4qxo4muiarZVabRu5digHa/zodtfFTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742860193; c=relaxed/simple;
	bh=WdMFnkbujHiIinhgOioXgrkoJaHfnA56CYNiW1KDbls=;
	h=To:Subject:From:Message-Id:Date; b=Xdv7/nU7rRkP0HL7sDWpZF1qzO3VOkev1oMkDzcW5sHK4V2ct8jQY2D7ilOF6hKNmKSIRkcMlKqhdvUPkh94zIcr/UeL5oVgt96GvU+Xq4AwO4h6T77ghbitMtgrycX4NrMbXl7u5XSHi8lA0I4G97ZLXTbGw9AfN92Dybwc9u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNRg9GUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNRg9GUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE363C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742860193;
	bh=WdMFnkbujHiIinhgOioXgrkoJaHfnA56CYNiW1KDbls=;
	h=To:Subject:From:Date:From;
	b=FNRg9GURazBZvYnRXE8DU0Q9ANWtLaDE1dJ41H0qcvOT0CvltVO20+51MGQbWidyV
	 5gR4wUdy2eYsHHTU7Cd1lJ9n10jG2qZTrowuJZDT8fy0bJJjfhT81InkwuR6i+ZJZu
	 U5p7oiTdXjPluXBCE8K0NS929BdYQh9lxmSzK8H1EdZFhUREdNUGx0otsbpAdqSzIa
	 4CRExsZ2HzewKTjlNrtdzizS6//x+9VzetOfthQ+1qcmfADCWiL6hLETmrq9ZlrPnm
	 Rf6SIZGJ17jWuFcFhKqPLcePp6XjaeF3fl5LJkFyRTUh2tV1Kn1O6h2cK0Vh84Nz/q
	 nVVa59yKt7pfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C8C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286019358.3434.7371056549919468792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d1bdcd05bf198fa9ba68d3d77aca5474ce14e9a049eac4d5bc1b98a43de99c
Date: Mon, 24 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742860193
