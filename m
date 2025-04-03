Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481A61A254E
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743710394; cv=none; b=BcgahoLYyFpIo5z1J2bbvm8nmEeSxnHJWP0vSElQ3rIBiw3VTNhj1Epi5TFDQP1Vs9aW5xk90UxMIEFF1RawW76OqMHrjDb/Ek19Op7X+3pol08nozkc/UWAdkigNa0IRbU67yIlhOOFsd1jNqsR/UIEVpcGAe/8FsuI5+GsDWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743710394; c=relaxed/simple;
	bh=UfJZr720JpS8p1cVxezhaeSeymSBoyqCzC6cKYd7VY8=;
	h=To:Subject:From:Message-Id:Date; b=S3M+BzayXWVb5fHjfYutU/yWhYg8/b5rABC3uY/BqQhdaBlV29Qm0aYRaeHHRCllO3OuvXPJSCnv4JScFgoMFFfkE9XuB3KCbHWzfkoV6DQWP++sHaOgVDOMiwJAvD8uYetCPSdOK1RJ3RKygjysnQnYcSXJ1F6GqRGVYbdJ18w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVoGTB8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVoGTB8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17F4C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743710393;
	bh=UfJZr720JpS8p1cVxezhaeSeymSBoyqCzC6cKYd7VY8=;
	h=To:Subject:From:Date:From;
	b=VVoGTB8hughxEV95rS2TqxyvYHUUIBwZJcthEW7K7U7O5HCmIUbF8JT7Fuia35eeK
	 5qaoYpw8lVKJYZt7hVPpfCFWhwW8BIuvtAd+99IvICQ6kuXsqhP3mgV/leknrJfjOE
	 0OLkjcpJdbQV0ZMuJzRnVs66x3+rVx7qlJFOyO78Szxh4Nfc7UPmtmPWcm+/Po14Fk
	 Dhv6sjJdkJ5pAUT3sbDc3s1x7WQOQHUaqzxPseIUm3RVePaH+jsywCqjKudZuPA7Cm
	 +Av8A+fQsSF/qmEbQXyF3Z8UodllhHjzerQ6z0FHExoNwObLoX7+NZo5q7G+G9Ie3U
	 nU0mOXsZUBV3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98593C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371039361.9161.17462444909610363127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d5faa7acf32c7f69e4bbe1206f6b97d0ad3e21184e675349f90ab50e6b393a
Date: Thu, 03 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743710393
