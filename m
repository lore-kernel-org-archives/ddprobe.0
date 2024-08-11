Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D41EAE9
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723389954; cv=none; b=teCf4YuPttE75VKkVhCHputWdNzjOdFtkqLnR9AWNJEcZ7GLZcGPFHqUPhOPLCZzl1LmvUO6+OmaaSXoCPriM4FddRMGcUVehvATCRxHnRhG2yrJXIqu1oKRMsOZHADYKYRxvK8V6AdOAsrLNPLmWSgIlnYxufoMZ48VbTXYVYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723389954; c=relaxed/simple;
	bh=U7orkj6XjrGp17GduOPLCzx/lONZo1JZtmFBY6XKW4g=;
	h=To:Subject:From:Message-Id:Date; b=pkKo9JptQvo60Fa2e8kvxMISjZjriPA0F37FXqZERVYh66hOvPXtIw2sl6XroSy03mdhZej5GD/Es3HGxG8K5qiyX+5oGnpuDIpkiAlGpwVMSoHtG/4Pukaq9EmAT4UbFhYCqbtsmOQA6yJHRI/nNgJuVy8Rmuv4eww9e27YemY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sw1HhS1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sw1HhS1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF2FC32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723389953;
	bh=U7orkj6XjrGp17GduOPLCzx/lONZo1JZtmFBY6XKW4g=;
	h=To:Subject:From:Date:From;
	b=Sw1HhS1lxZKmhO0B6uenV455wDcLYavHpQpHaZMkLy5tHSJD1fPbaj6GRQ3CecUfV
	 2Ar3d0z0U80O/rGPZNe0TlVQ3hXGD6Jcj8nsJOLXYYuz+zxHahLjOc4t13zZfy0C21
	 IbaiO0rSq1at7n1gqXhmsaU7aqOcT1b6yHlMSysx3IpIZ1T9qzHmkMyqYW+Xvx8Q8I
	 MoJiRRAx0rhN6zRjEZGVfuQRMaVtICrnVrHAiMavNwDPtWSzdDTs+B/maxSX5+7VTN
	 pJdH8bweKALHAXPtbDYo3PxCpr9tSnPzBN0fQr0i2LMgvk4enL0V0lZqUd3ZDlwSDd
	 Cx8/r6RqsqxFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95906C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172338995358.13354.1521140257026775130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49de36e50e8bde8cf6d4ea66ea6f11c7374c14c7c028210b0a9b017446fcac2
Date: Sun, 11 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723389953
