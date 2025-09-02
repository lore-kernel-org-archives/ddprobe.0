Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37A230FF24
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756820393; cv=none; b=BAYLpKhSadf8Mb6ea6gwoj7dB47Fs4sFT7y5pT/pigYOsLd/REAOPOJDJZNZ5GQM5MAjWQLd3RhzK6zjnfXBHsneKxG4qMPJjG6zvYlg8Yzii1/UUgnoWeTc8Nl6DWfGbAKZg6VE6UJDfqvutWaGTU+aN5dmd34sysHbAovR338=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756820393; c=relaxed/simple;
	bh=GouhhqcJpDnUDiRkVjohYorelluegZHZRuEVNtSHu5I=;
	h=To:Subject:From:Message-Id:Date; b=qx0AkgKaQE+WFSmMvVXbYUFEspUhfK2lIMUy3AU9+qrQ38FDJytHF1e0Wu3S6w/dHrZZUMwIDQ7HxM6f+KjA+Se9HinWPfegreJ0l7lYZjtEfS8C89KACrnfKpBMMPVG9GfHEKcsSCOFqXHRagi7O6Aom6z/hbmHZTyDmlkVofY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2QdI4p6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2QdI4p6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E46C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756820393;
	bh=GouhhqcJpDnUDiRkVjohYorelluegZHZRuEVNtSHu5I=;
	h=To:Subject:From:Date:From;
	b=p2QdI4p608b7rL74Nb66PpJdGSdZd1NANsNfDECJffJjDsOX5EyAWc8qsWTN63f5n
	 zX5zcObKIw8h2Yya2n2jp72C9v9Svy6nhJfRYB6JbJDlBdeykGd/puShWuDl64rlfG
	 OzUw0NwKvmxPBBHQVNrS5HDUS4ANPf4uPLRMi7czZxNhgSl5a5MLXGJACk0kNdkHTF
	 ce7EcbVI5SFvEpy2F8X51vaypgTmxD41V6B7w1Ka5hkwsDF81drTK9pDyZFlp3grf5
	 zzLQWJsNIEXirw3v/libJMDXBMOy9EvU02/5gSl3C3Mubm05EALRL4VSmHn7JJKX/3
	 Cj+fvOwJQDG8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F151CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682039357.24666.1511164659843735871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755818a54bad7374026c9f0176474886d26750f3fe3692ccd6370676edba081b
Date: Tue, 02 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756820393
