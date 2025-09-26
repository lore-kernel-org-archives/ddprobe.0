Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20416189B84
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758897595; cv=none; b=PuH+No0mW8MDrMjAL+NISaaipMF8QsGNU/ZCW7OgK3ccKWvAFDRl37YteE3udKPbNWkDNhszLGDVIIKY47HsysgB8j2Vvct3ED2AbDz3cqn+hTxqkeb4gV2qXXfd9O9LvIiigPc2a4YcTk31E/EaRsBXNibARb7NcuYIkAGd2d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758897595; c=relaxed/simple;
	bh=wZmc1JEL58Or/F5iEyEbujJRlQu0EUy1kKgY0eyaOog=;
	h=To:Subject:From:Message-Id:Date; b=HDUrwsMLhhkWmkS4FRxXWAuxEwcPHgQY7A3Sp3X6DIv0SzDxU5rYKGTrROvgWnd77KVJu5icIleas/Ip6/GlZrMdZwqVcRQ/1DVeAMHORDd4DV9bd28YAA0U8669DuFi2vIUPvTFQlC6Y/qo2V0AQBdyBiwd8PbEK/h82LNHa98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGTR0kyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGTR0kyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8079C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758897593;
	bh=wZmc1JEL58Or/F5iEyEbujJRlQu0EUy1kKgY0eyaOog=;
	h=To:Subject:From:Date:From;
	b=OGTR0kyWYQRFH9gf2P6jjuk9rdrz/3Vc7xZUllR//97PsIeUlcyEDHhneoDcbf8dR
	 oDEG0nJeSTdKGFlW1iMGKiiFFsJ2gHRvbg+iDNcWraL/pKMbFX9kgBSjy9OBk+/r9Z
	 tJTX2V/HKK3utiCjQMrPmYdBcjsoDz9/QYlOB8jWgb1zh4kMSTgirMm31/uC338PEx
	 VXCoQGFdYssfMOqZ7FqqDackCxJqGh3Y6XI35Vmvn2tuiFu+fUFMXa0CooSiQK+qKQ
	 kCiEVzuFOYBo5Vf9OG0HpZrfLKsBqQEl7KstBtA5C7gkydh7Qx+ssyP0idjj8xrvQr
	 9zGbQMrNhYEBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96870CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889759360.9924.18217873789260145056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e3a0122e779e5b4402d9de8267a06f61ffc0cb032131cd3e54aaf2406d538d
Date: Fri, 26 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758897593
