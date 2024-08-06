Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592EE3BBC9
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722913554; cv=none; b=E9fWTcBydGkjm6JGSPT34Rqk8IwwBmIEPhtc6Cqn9nV4UrjY6swWmugw/juArkp8QWtbKpeHNJ8UcY+X7xvXFsb9KKC4+GbyUXV+4X76q579ob7TpN1gyBZ7GV96mCqvD8GFL3vkhmHXwAJxSV1LsnnWd/dS4AHAV7OcrqhPlmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722913554; c=relaxed/simple;
	bh=Lf5OfdM+8eTNKDdC5MuPnttLcrExfTeskiBdy7YCqgU=;
	h=To:Subject:From:Message-Id:Date; b=eFAuhC0ymR0Pikf1ph/t2Ikpc7U1WG8Z74MRA59oUSWdqUTa4dXjvKpb3lAsX0t3npvbPne5P0a/JxP5icuAPODOP/+d+vtiHxCkC9nasEdcXTFc3iwfTs6CKGf73lUc+uJUhdSHaJixg24k5bGk2Kzc0z0OUj9S+hqdCMtmjm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBfU5MjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBfU5MjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7356C32782
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722913553;
	bh=Lf5OfdM+8eTNKDdC5MuPnttLcrExfTeskiBdy7YCqgU=;
	h=To:Subject:From:Date:From;
	b=BBfU5MjC67Nj4eVUtrTvT35pW0IeEUJOVn2yBl11JZHFZmW7Fo4sBn/ssJ4YyGQFM
	 3UhiHX8G9qlOPeJ7FEL+V45GonNvA2WCM2hUjgVXULv0c+9VjIQcbB5TTEkTvoa7Z6
	 8iBa5OAHa/Id7VvVfymc/yWJkZXPem4Nh1cD2k91LsvKgeZYGpUpk26+w4xTIEkg2h
	 lWSK5Jyp2iTqDhH1Exycdxn0zDfhSzXgN9z4UfJtVpBmHUnYoqYgApHyfqPn9Ww/Q7
	 6EMIZX5BpFCoEs+2gxkFW2M9tzFxoFXNVRkCh21qGF+tWHOtC0BqJThU0YFORm2JMC
	 nZ2qZLca1onNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C0DC3DA4A
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172291355366.17491.9807100335387843270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6dce17970f945a99ed9cf31c3a07700c35917d0d9719ba7c3866267fd3c45f1
Date: Tue, 06 Aug 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722913553
