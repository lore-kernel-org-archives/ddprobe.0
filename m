Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BE5175D5D
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731480954; cv=none; b=VRWW4/150CXYWpEd+JF+sDxQGBLGYa75ugqEsvjPp+CunDfxJcMzVZob/uF9trlbsZ0tERNH0RBtdz8+PBIguVAbBuRE19rZdmuJcG3wwWVnjLl9eFgXVOhRVODjzcBomcDj6LjmWXtpJD4ArLRC3+YIXWSAG4FLZl1NA60tWaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731480954; c=relaxed/simple;
	bh=X2LggdF5jewMRBcrj7iXzZYwzROZasOcnSjVb1UUy6Y=;
	h=To:Subject:From:Message-Id:Date; b=cKVvH5jHHVQ53EoyavQYC3L3eqKgiLGHryG5TmBfgW9nOaNUhShVxvVDcs1VtR45d3MQdACVGvP1kE+gLLElh8RmTj892Oa1kTmCLrP7kwP6NXY9Pue2KAoYxgov2b0NHa1Ikp0GRCLEJej3fBVywi5t8QA9oADjKttQbl8h47c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBMy0rN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBMy0rN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B028BC4CED0
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731480953;
	bh=X2LggdF5jewMRBcrj7iXzZYwzROZasOcnSjVb1UUy6Y=;
	h=To:Subject:From:Date:From;
	b=tBMy0rN/Lktv7KkYGbWYgI2Bt1ljcZ4ORb5k+mMKLP/pPlks1VOob2+NNF9cLVdMP
	 MvX3aMMfe68PCSUYWpJm/l29QMmU4iocmqgb/ccf6AkLUW2GEZVm8hQfMT0gdJ3mAM
	 1xz52wThZ5NqZQDhzqIVDVQ8xDzgwBE979ffRmAbHf9jD/w374M85LNnq8vdaKASeT
	 2UwgVkKoHOEm/MDQWZCRjlCrqlwdhuEE32ykZexVhP2t3nyK8cvFB2MkqBwYD1aC4k
	 VUnQbIcFa0iLQovAVM4hdscmjUsfk5X74wu6yj76QcXyP3d+kz0CgX+U3n0fmY1wIW
	 7FaHjWP5AcbLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EBED41C0A
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173148095364.16957.12067388555887994139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c449d95979bdb09a628a1d8326ce8c7ef1c8fe6e9be1ceef30aff0240406c248
Date: Wed, 13 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731480953
