Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F011A2560
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724856354; cv=none; b=kdLuNhxkuwwM44zNHMLTA5XeqgJ8g5f2D72KqmeztCRSCwfx1fkMYwGlG+BVtS3G4Td9AQqbB++TOZwnSW28sdKPtLS+fjD9Qmayb5b6ZRJaLbjcs3eOs6nXaBu7Zh/GE24yUNPtaorz3NWJ4MLyL22+MvWMIiJhHbR/iMx8r4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724856354; c=relaxed/simple;
	bh=OdVokR2TFJZG08xHjzmOQKraAo7GQ+kKt//I9zuSum0=;
	h=To:Subject:From:Message-Id:Date; b=lpEqVBpmb04pg8P23fB+qJreQqzsFdeuc5XuGnxTGZt0HhxHhtA5NKV2Zivg42E7UyG0T3PAmGMl/DzbxFMk1PMlYHytCJG4CAN2a6n8rBI2Hg340sYWsqYN0+xTqEKNMaSnw9gsjboEoX/rY15gauiHV1M9eFb/EJoqUSdcgyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFVV0Vwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFVV0Vwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90AFC4CEDE
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724856353;
	bh=OdVokR2TFJZG08xHjzmOQKraAo7GQ+kKt//I9zuSum0=;
	h=To:Subject:From:Date:From;
	b=JFVV0VwrwiKiDp1O4rEz33pRO8iiQ2ezKsxhNP2jKiXeAvKYfa6iYjTrNRl+sCQco
	 2WrfctkMQ+t4ZL3N42f1EImmREXoAsr/SIGToTnXat3lTVFWV0U6fazA+UWGhvJNnW
	 QBWgou11lj+M91MVlCFp428BI10AABgIGZKAnsQxZgW5JMWsxYCFxUsKmgEguOOqmi
	 YUx6Z+z7Y6K/HsOgZPeksE5Yd/so1vfkNWxTM4jjy1B6z41Kz2mLRUOEKprzTTY5gV
	 ssKaYxBJOH21pXJE+k78NZABiS4atHWa3HB1Qk2gZDXoiQvFBriBZ8fK/wJDhIHzXn
	 lYcmLQIHdQ3Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7227C5B548
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172485635367.14407.8139833188791128663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc406615071bee5c922474fa9702cae63288dd62a1364344bc638ca1c6cfb04f
Date: Wed, 28 Aug 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724856353
