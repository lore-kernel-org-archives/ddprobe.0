Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B26C3D76
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730512554; cv=none; b=i2xOwymIz7DMrpXz+X/SHCz8ij9z0Ys5ywJD30FQE5HkBfYrjjDCmQzY1K0fnJwa5P8Po8fg67mhOCza7haD5GyVHmjvh894zu8Ang3ZpKRw4NdwF5YtCQArd0Hwj9lOeZwdeQRFuMOIkJbDio+xGg6NoUdXmiMwdGXa6I2sj7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730512554; c=relaxed/simple;
	bh=Ilg1v05O40D4giIVl5crFRGTIs6VaAli0T+FYvdEkJg=;
	h=To:Subject:From:Message-Id:Date; b=Rol6YNXdN2JYLg8EC3My//ngeIZzM/4oIw5X75siYkIg/tQoUu+XKjGvFQynt9TdAoD25BEeTWvY64i3U6MQjUFKprNGOsPILa5vlvQe+m1hOy/+fXvj1EAbCauXeSSRrdSdVIfa/YQ9Ms+lHYBL8lwoKqMeOesAwr76mUGpLGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3as6cYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3as6cYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE24C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730512553;
	bh=Ilg1v05O40D4giIVl5crFRGTIs6VaAli0T+FYvdEkJg=;
	h=To:Subject:From:Date:From;
	b=f3as6cYjtuNWk60PuQ1WPsxymyDL2AbItdKgvHyOP9tIrERE8lp0zuypF4YP8139n
	 VdFYpkcKPnI8CndpL9jJXf71e2Qr1eJqLFkgLrOgBbitS0Mh0fYetbFLvKKgm66Ja1
	 Kdb5M4U/MHVk3Itl0ptgRmNn8uFx93RBgk4CSYJyn3UwLbmdQfSTmSw5rYSvEf95yV
	 Tg1HS82RygnU8Sb7nK50yO3H7u7hLgfmnzYdSuehCprHBy7LK2ScPMlBJk+a2Fg7Zb
	 RxbI1Vt4rZcALdwm03RZIWpKdAi0BX0ZbU6aSX793hmVfdm5TCI4+s3LCKer6QZUc3
	 oAoH01gfnyH8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E969E6F07E
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173051255362.812.14391006989155228818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb0524dce9ee31dd7c06a762ee6e3d3aff4ecd7b01de41585ece8825d21bc85
Date: Sat, 02 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730512553
