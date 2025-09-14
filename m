Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B5A2DC790
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757854195; cv=none; b=kpNJWBRyxJl6BXCbdr88AaNKN0ZN7xz5uUI9J43NRNKUIUDVIA3vZDxIlwzBCZPFjaMJez1yNUrppmeI37X89Jg3vAyxmussvD9sVMzcQMTygI7qRlL6sYAzB7x83zsEqfyw4j12CF2LjvVlQ9yJJf/cGXkn9id7YHgiEedSSB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757854195; c=relaxed/simple;
	bh=U5k1iJ5fcNtI2O0b7Qy+2/+1ZGrNXmGKe5HvsEZoPk0=;
	h=To:Subject:From:Message-Id:Date; b=F+r0DhDkVy/TSInPJaxxMXp94/vlJehyxI1obanpBqR4I/LCLKeAjac8VScUJ6keo+Yr45YdA/rak44kIEOQ+wne83qxKV64ucWoH6hfIOA8RH9W7OCZV2Zv4zH06A8NYzmQ8h/oI9uZrTKo3bQXfawHB+cOw85lD34FKpP5mdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTEbouL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTEbouL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1199C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757854193;
	bh=U5k1iJ5fcNtI2O0b7Qy+2/+1ZGrNXmGKe5HvsEZoPk0=;
	h=To:Subject:From:Date:From;
	b=lTEbouL331j6vVxDFuoLq/fV6G73WQMBx/WiGkWH40VYI+P+CRMslkvnKD8RA9426
	 s9IFiq0ENUroc91FICwf7YrEWPRKgyDgI+4MMghIO9K1yWo5/7QSUWjf5GlWr4vQGI
	 PbSYPeU3liJaaW2c4cM9gO8uJPelUi9Sn2MKkJTM3bjb5+IpoGEQckjFabmvrWnMHa
	 QdVqONdsw0MS2sHD13eRiSt+MjzDOLN1eSZG2dspYSuzh/voSgaFvWSTHeaPR8XS2N
	 5fcrs6Kbde3WE3my5ohVk0P34kyCZIVEr5TAldm4jyJ4Gy7TkYbaB2ecUw22zD6hnP
	 gG8a4unvAVkYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91248CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785419357.3857.4788702554101157434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b81fc892f85d98d77f82966ece29c89b0be7cddbecd3db613435dab25543b3d
Date: Sun, 14 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757854193
