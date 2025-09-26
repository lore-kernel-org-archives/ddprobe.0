Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171BA202976
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758929994; cv=none; b=UV49BBiNpkDhY9fhUIBk8gUeCWTYGwpdgtSaP2VEL57ZrRXF38xhl85c4SvcBQomRgod3VbH6xjY8SSTL+WNQgWkMBJTkcWbj3/R8Gx0+Rlp2Cyt5d7fKmGFaACoawA9+N3OlOpdMbrGvjYmr8rUXOBFlcWGT2DVPlOSj3S9k0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758929994; c=relaxed/simple;
	bh=qvVYmH+HPvnCcp8ce3Kfx2HbY9Tf2PHMqYyTRezsq8o=;
	h=To:Subject:From:Message-Id:Date; b=BTQGOg/r4HW4c9IiACQF9/rDnOjQby8KQLjFM18tI6ugX1GXvdms1gRnjzR+9asWvmp5dnCmJHmE/nczyn7bLNjTiKklhThD09xzf/vXWq4E4JVsiT+L2F2MajWUKDhGq60VBC5dDY2+HnPI60x898ifYTML9sJoDmqYcq9Yi5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEOpHfL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEOpHfL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EABC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758929993;
	bh=qvVYmH+HPvnCcp8ce3Kfx2HbY9Tf2PHMqYyTRezsq8o=;
	h=To:Subject:From:Date:From;
	b=bEOpHfL0oJn2pUxXK7ijORASTnxXPr2iGjZc0onQdt9CdQeubz9Vqanrc91GYtklo
	 SUinAH+zz+UitKNJnrwENJLG7VRSFbvxHMrhxNUqO4hTjIvYAcYskuF2vfTYODUA7k
	 smlBpFxet8MYNWgVpQAN8YkVVhoF5KzYuhqKmBhEp5JQ2Toc2D0tDuPFiFpzB8UdkR
	 GusbVXAmA0cN98A99xLHd3K4TC6sqisea/Aw0vq9F9uJBgIkBd8sU01DFtgFzNh0dT
	 pN5b9/a5L75h4N32QKhgonzLZ77TVWj6/8jIKoTsRWPl8Y0B0hNGITC6OoaQ+cCqFB
	 ouyvUzldG+2Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93073CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892999357.8126.9924988846564982837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ba2ca44c40ec222d6be399894da3f39ccdf91df71ff73315ddb34709f75c10
Date: Fri, 26 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758929993
