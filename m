Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A2C23BF9F
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770530034; cv=none; b=ef7Xy79bpFSLKmdnESWq2nxVXjwJ/AMcaLDTSdUU2HVKST0H2ERX/Wj4HEKthOe3UwJ5WbYeo28ukbBKUW45CFPtBp7XMYwc8W/+9vIhh+BBFrqZ5Pcfmu/aw2bhHWctUKmOrv48g7/AAvg4pdKX0nG/qGhwD94YoGd1lSRixl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770530034; c=relaxed/simple;
	bh=ISfBME4l+vC8JTBMDMR6kzZOeLttceRK4Z/e+qGPOlc=;
	h=To:Subject:From:Message-Id:Date; b=qdMj5lxRFboCDFwtD+ZsHfxikMIvcEhP/C77cA5DbMYdkWAVB9jn0I4i8a+Rn3gBR0SqvMnw8D1jws5WlUU9ZD0yp+kpxdHVeBzt7vtullLdK950HR5fEaFTGGAGgJr8c82Zh1vaGollLCbYTSwGNFcGJfYy0IVBTyBGd5fB5uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jx092poH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jx092poH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770530033;
	bh=ISfBME4l+vC8JTBMDMR6kzZOeLttceRK4Z/e+qGPOlc=;
	h=To:Subject:From:Date:From;
	b=jx092poHGpcQTost82x+besmPRCKV1GQqBXCWn8Sgs4BDcIly6eH+RorFBV6y95sq
	 lcPN3GUb3EOjuvbo/YkLfoughb999c2c+hBZYKjxwe7MP7sV4F/A3VnNK5Ax6yHOAD
	 OnRmkrwoNwymWI7W7+jFivXZxWPE+OVXf1zIhkW27Vi5Fjs4uQ8cWmomAxmw6KZTif
	 EI2gDTUMV8KgVfGr5EOFVadK02/IU+Ip4PdOrgVwxQdUCm84caQaXJFztHo/hcsFv3
	 u6zjLx2CMcj8qjHO0TKcTpX8Ev1x3QDlI++8SlfYnANYtaVAq5x7+mdacBXWLoiZKD
	 BvhRVlLljQIbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B77EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053003359.16903.16314472886366113502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8c962cc7bac3e0bb3ec94ac60cb7af3c56e81767d3018e4c16422bf8c0c3f8
Date: Sun, 08 Feb 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770530033
