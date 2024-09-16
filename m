Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2207E1311A7
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726485354; cv=none; b=rYDvSrRjvDisaWX928nI25Ru/6f6FReyYh4QVFDzDmC97Bha93WZX73zaUAlJNTJ8IMeEBvRXAaWdDgJLalWQRqAu08uirRvRKFxbMaM1qrBAQzfImySB+v/EhtWr5op3VKZ0mng6rpTsy3aEIdsG2entjp9kg/Rs1BmSB8B2RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726485354; c=relaxed/simple;
	bh=PSFN6nTvTT6FoS9QCIIFkiL3qYGEGPwk7w4X6aXrT68=;
	h=To:Subject:From:Message-Id:Date; b=D28Vu2ofi3wVVOZC/3Eb+ZmhgSFlBCffKVHaKVGiOc8CRFZT095UYMMgYU5aA1Sf+V7Xv0ymJGRcx776ih3O54uTGFWuAuq4kP1XROeYNR9lPrlJggPRT/0yBn2Fx0VGkg2u/hjNinheX+OK6cz4FGjw0y5WtaWixKMw4gHmjwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCOGCdK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCOGCdK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1F2C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726485353;
	bh=PSFN6nTvTT6FoS9QCIIFkiL3qYGEGPwk7w4X6aXrT68=;
	h=To:Subject:From:Date:From;
	b=YCOGCdK3JlPwcU0MzernV0TdhjxAlPyH7caLEXSSTJyXqjUGsEa9dwoURm9n36AdS
	 KF5GaGDgy5kOsqng1wcZP+t4Y9Shnw715SQagZZYJzL8WigtXlgGvsh6f3d7X8Txrt
	 V8zSV9fNC2K8kgRynLBbRE07oPH2ycAuUZSLX9rtjvb2OAxTn49VgdEw0HN7U/mfgT
	 YJh5MNaJR8kfBzX40xA9fNTMnSUs/lDjb1kPIk4UeBCNRExXwduCrTu/MDefxcm9Rt
	 cQH3iJzDz1h05Bk+PUTZD1bJnUUFrS1TxV4XrmXvbe5n/pLklvhszmGCGWbGhcAwkK
	 muu9FZOE1/cfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C4AC3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172648535359.4814.14911409565418372477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5abff7734391fa3a287f9efb32f453498c445341d2ca56dd91d0109ac911024e
Date: Mon, 16 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726485353
