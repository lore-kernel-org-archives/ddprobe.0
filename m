Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543E6BA3D
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784292514; cv=none; b=E7iBhudvD9ekD0WiU+Y9m0iYo8gaO1dzIoFItuESZWLvXkh7+c9mrhKz3VrJv/XpXPYCac55En38D8CpfxbQdyc00JjIH2PDfELVY6C2kBgGqq713/yHNHKEMdy0b+15Q7F+2bhhLxTyetecl5SDVrJmVRIy71HibYy47ACCxCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784292514; c=relaxed/simple;
	bh=seJ3qhC5ZvNd2K3zEna4/hFgIPt4naBMSCpxf+E7U0s=;
	h=To:Subject:From:Message-Id:Date; b=Knzp07tUAQbm8nr6Qt/qe2l317txMdClGvXCo4yMe5OY2RmDhJ0yQWTZHv8s/vEgjM7OV38WOj+E6GGc8Qi2CPtsi/9jJ2E6cuSoDL/7LVqSr7MTMT5gMg8LSjz7aXwgztlvgkfUDmqiolRkDxJBItxrgvp2YnYUQLFUUqqM2pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mdt4lbvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mdt4lbvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93D0C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784292513;
	bh=seJ3qhC5ZvNd2K3zEna4/hFgIPt4naBMSCpxf+E7U0s=;
	h=To:Subject:From:Date:From;
	b=Mdt4lbvYhFAaDNT8m4rW1MfuIFEGFD1Zo5IVMx+B5aJeJGYW6lQc0iKhF1GOPvw67
	 KlCO/JPCswNqVE6kfQChSEBdfrBKkqSsN4noM/U+xmTCZcgH2bzb037k98gJpMgFvD
	 6315eqUzQv1TPlJXVPzLsUh4WlFavkR+DswodVunGm2qRePqEJYNN6P+5GrTTYWxjr
	 n0x0V36/ylwkvOzAqdQi2A/JSgbtsvfKIHF/wYYf2rTNu6PeBQ2jNumRVqcjXP4QMN
	 65JvkcZyzg91uuB8xxds7zTlyXsxtMWyN2dE6rcmuVM3S+CgDRzw2aLGMvihCKsBhP
	 9Xyy0GoM0My+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E92C44516
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429251372.29324.4010391769991961783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792958c1396fb9736724b44484197749d63feb7a81646af1aee591d4514eac40
Date: Fri, 17 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784292513
