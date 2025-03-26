Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7314C6C
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742989793; cv=none; b=F5xthVAfXLV9DrxAzu9Luys2UW1zADuJAGYQoOZVJ4ouq959kVennTelRmsIVT5Ny4GyZpFDDDJULEZPVsE/H7MtVqRcdZMm8kgqgvd2DQSjqvkz+2HaA5gnT8LZnTAUTCgeyO22gcD6hHvqAYX1Lf6P35TBIPmWfVUtJ1JmEE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742989793; c=relaxed/simple;
	bh=AzaXDZXIbp5fHzqrZEQjDXN/ivdt7QQYP5nWHj2CvH0=;
	h=To:Subject:From:Message-Id:Date; b=p9E2UhRkCbQrkcjfWcYN+R3blkQCzJyei37qSvau5Sp44rRZZ1zJ/3PNmSblrBfn5W8owyxuGfw5qMs9ZXYMfRssZIrrBoVJt0LIhLo7uaY04Gv30nQQlozJCN0lSoC62VmGVf0iehzDz6d5GHk7iMEEq7YpkK3PH210l7Ie4qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOvnB8kZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOvnB8kZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC072C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742989793;
	bh=AzaXDZXIbp5fHzqrZEQjDXN/ivdt7QQYP5nWHj2CvH0=;
	h=To:Subject:From:Date:From;
	b=OOvnB8kZ6ocjiHlSuoJ0W+jwPNA0VfChx/MrpysJvsjgfKBuYaAR4wjRCWSYQMTQa
	 eoWepv/ICcLKoWQqALzkpB9wWvaqx43n5MHf8UY9ffPrmxo5UwDKyl5uX/x4wEbzOe
	 Lk7Pcv6XKjYIFN/OcOb78U3pIKzIZKu8FhFjmXR1lGz8l//bfvR+tvfqGDL98b4DXq
	 5Gbne1YXP5emuumJLLpbb7rhPGMzCuxnX43BcsJxWq/cHlXfmPBZAvjBFIfpWeBVir
	 bWPkj0C51bDYm11C6vYyMwl/3mO+N32b1y4dnZlC+f5XwfbWF36PByzf1Na5wY0RNT
	 W/5VwEHu2QeHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DB7C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298979361.2895.17572010856996556220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f38f0dc3eb2d0c35dc3808a89c36e8f392aafb334e3075b24ce3aec226a364c
Date: Wed, 26 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742989793
