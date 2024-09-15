Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAAA1C32
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726380954; cv=none; b=afh9/aqE6GFki9QsA7RjyYnj+0NNe86EmU3GYzWQHj8FbgL2obe17PIk9gCSzuVk6vUXo5JLeR8cTOdVYCN3FxEGHL5wLPJVK7UCWObK6u9I8w0fpu9CNvmO4hyif4krBhkSfZjHe4uALGCO5RQntMrGKh1zlW0nKTzdC2e5TBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726380954; c=relaxed/simple;
	bh=BLCn9oztYXNXl7u5bYh3MFxK5jy/cmfS/E5pvLvGhc4=;
	h=To:Subject:From:Message-Id:Date; b=fnRtivFVEITB4PlFqnkckwV7C8iqqTmKhiKG7cfA4v3Ws9VbSkU/zu1aixh4E6jccfwT3XR7GL564t+PR925VGS5VC0Xt9LSzNWHTlfoC6yfTZh3WwEq/Yw2FROUlrtnGM5tYTxpO2IkSfcOs7Nh3uL8fgYXDT+noIfi931wlr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPlTd+HN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPlTd+HN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2121C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726380953;
	bh=BLCn9oztYXNXl7u5bYh3MFxK5jy/cmfS/E5pvLvGhc4=;
	h=To:Subject:From:Date:From;
	b=uPlTd+HNt3ZJq7zXJnq/6Ec4VHZWw/x3pfDhXnarNZiiGvEpu9zhtN6H6nuK8uQBQ
	 glpiKiYYtCQ2iSAeBHdSmhOKME3fAqODkBqG8zxlod8thQGJAWIPzBq732W/9qmS8J
	 AYhb5FmZcdqqhfB26i8xKoNzZdEtQ4lFPwUfOYtHNyx1XZ/zPspMRCuUEuqb5wRFwP
	 7eMARZcZ4yPlxhdE8nAmg7Pa2u7tCQGmwCyM+7yY1Yp/O+RwC4xHIuTbfwa/wqtK3U
	 9Zq1OzeXIw+7zBvgmKl8VkwYyQk0/htlLf7I6JIEXfKYDcUToS/XExZ1iGxyD0A09q
	 4r5LacU1e1jgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99999C35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172638095361.10162.17049201031172208397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f83154eef31bb98689e7c98d61544e7c11f345a0a5dba535bc03fb6c411091
Date: Sun, 15 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726380953
