Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D37731F9B9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789851034; cv=none; b=K3FUxA/SNFCjkt3LZU6/c7hjQbR8o3ynrbn74TawO6/lUHhqkomFg8owqGzXVm1z4819PLPzzjaYwH78zmurjw+P3TkWZ6UqS0alvvr3F/ZZKuJ8cnOyNnXnFjDde66kzcif1+qEZcBunujtsn1CkDpBnfho8ZO+iOwsmurwluI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789851034; c=relaxed/simple;
	bh=9lG8UHSj0dpLi+/pi+hqILk5Ul9PF537EBRhhIqoxGk=;
	h=To:Subject:From:Message-Id:Date; b=kcv2DhSLE4CrgnXJ1oyYNPKGaszjo19EX9bVV/Dx2LvB8mx7gT0aKukG+apwv/2yFz7N9RaH11lAUaDMZOk/wsDxw1Wc3OV+Rw9EaqiSMi7Yr3ueAA8txAb4kPjIfcw+zOCeE76AKjap0vR5FtrvrdeN9UZc3NlDTOecXQYrgCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjWO+sH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjWO+sH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57A4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789851033;
	bh=9lG8UHSj0dpLi+/pi+hqILk5Ul9PF537EBRhhIqoxGk=;
	h=To:Subject:From:Date:From;
	b=DjWO+sH6z1vVx55/zqVd13P8qRrvY4VnOYtcsrWbkof/azd2y477YJRrOY7dCp/TQ
	 FVCj8qlGB0xQhaCRlVD/xsaPSzWZ5xP0kJ3wsJS65afgqh933apKfuPgjwivH8zc+0
	 hi6yU9uYzS5KGsd6kwSTmxZDTTkeld7/ngYoEOZ4vs9T9jHfc/6IclEmP1iRcIaNRj
	 7xJznU9xwApf8glZ/BKhNNLhWTp2q5Bd/oy+eoVLLzSzOIJpeyu5ivGNZ7oWgplGt2
	 BK4qp6HluYaet3UHVE1cyeIJfh3INwqANgo44LqlPiFPY1q+ph7dTaL1luEgsYMEji
	 pS6LvCjO5OD7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5F9C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985103368.4980.11836555046133249706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcff05869f7fbb8bb3da9f0c49fb3ffdc618d4214afad2bb7b558a3d4611839e
Date: Sat, 19 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789851033
