Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAF01F5821
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775021694; cv=none; b=OGjsYx0GnF3B72SpOsQMQFwCD3QVcgHtg0tZakyef94QF+qbxgB7zNNzboqHdqcvEylgzwsNR03DKQJY2UnWdziixuB5Nup+FJmGM/jHtZNBA3IdAvAgsTAm1hIH+PQB8eR2M0j/NQ9cAsANQuoG9ybyZw5snSeH9gV1g3jZg3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775021694; c=relaxed/simple;
	bh=zjBnmxvTYsizwBOMyNc2QLJPwfIREXzHJRN7XT7mUho=;
	h=To:Subject:From:Message-Id:Date; b=Xmehdg2I0Mj0NC6/96N2puEipfdaFEauPrb2XtcRYfNzkVQcLai09jilkifoOlSvZrVWqzYSE4kgNLbddLbrrqyXvv8c4WVo0GbxiJ9cQmWj9DnWM/usMLsmRhWUwFzb0Dze+ZGPd0fygtgJ3fgNRFlOe6kdBT6UJ4EDnqX1FHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnAGlfGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnAGlfGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC59FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775021693;
	bh=zjBnmxvTYsizwBOMyNc2QLJPwfIREXzHJRN7XT7mUho=;
	h=To:Subject:From:Date:From;
	b=UnAGlfGMbKrsflD1JSmmMI0klJFJLBDy8T2m11UveDfI3Xk9nBNM4QgF+PkfV+Sgf
	 WQT4tmpMxKFzPO22H84+Je2/pfeC1jx8cJx8j4yTkLso3/oLVljVgT0/91BB5qKqdX
	 k79So9thMyrU8HDNzgeq9p5mm8Pa4nYqPdn6KTmCriwyl4tPeGfRDadCACseSrSqcd
	 5f/kg/iUmudaTATnZ72NeyPKSfkQ7S2Uv5Be2tkWr+VeqWR5Izr/IEFB1e7oy9UXvM
	 Rm+X1Qblnc/wmF1yz7ySnv4X7TsVpBKCZNC6E/yDbVRMTgQQ0x5tTiscWXQPfTluJ5
	 pOCL/Dtcp8Y1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2891107636F
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502169365.11186.4407633280886414739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db152688cdeeb784c64a25216a90c1b33bd248851d08f4f1c7bd5ef2bdf084a
Date: Wed, 01 Apr 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775021693
