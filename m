Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E6B13C673
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 10:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717670243; cv=none; b=Z/oY+mFlpr/wTG1rFHoOSqqII5i7EerVojdQuLhDxZFDSyKz848uj16QB6hcZBBWGOTm9Ml6zBLFrJryqsOZ/giOBWJJHasjkw4uvjOLfOy0I0OcRd/Re8IGmciGYq9r4X+6vWdkxeCqrA8eewmgHRRN4QtpIXY5b4Uwuw3JC7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717670243; c=relaxed/simple;
	bh=eSq7KWYRc6w1XAgXpnxQAT+8GjzgoJvDRTHgmI367qs=;
	h=To:Subject:From:Message-Id:Date; b=KzVYFDLn2+pD/l0qosdPbf8utQg2ikC+LtQbXg06S/k0kr5y5SzcOOavIgftiyZc8MMoT54aE8XyDaZ9fawjX/of8skY4RQrn+0mRFKuW1Hb0ln+d2XQvX8spGT+k1xIKmjqEmQqFKd/xZJVXRM/kesk7x8Nn4m2uBAO/wIp6HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTL7hUvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTL7hUvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB707C3277B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 10:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717670243;
	bh=eSq7KWYRc6w1XAgXpnxQAT+8GjzgoJvDRTHgmI367qs=;
	h=To:Subject:From:Date:From;
	b=RTL7hUvmVhB86oM2Vcgn7Caz6MlzzuvqXsb9iWGBUc2wcb4gY5tf4sByfVPRNLnKV
	 bx5imES3vi7LYAesEyKw4sPEczeEDw9jZWwoFe34KEkt2j6TKFwaxt56crLFEDLfgD
	 K8lSrkqP90USBRNN7JM3tb9r/3fXSh3d0T4uTIAKU0CIEZQnoKMEKHUTROZKMOPuB3
	 5A1UnM3G4ALgZQpalcPX5GkgM3iMo27CzRX1eX9eCDE0g0ndI/xdEbxS8dSl0oHisO
	 vKLoOSQl2er0xlXrQBvciCCYVLNZe0iOzRkjqlvA4yW7TkezkW8KNcXW39eXLdAwIv
	 oBnxAszlYmOoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D61B4C27C55
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 10:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767024286.6873.1580405011734322855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97c102681bfd9f7530ad8c9a3a0c375661d86c1bd1dd8d749e9ff273a415426
Date: Thu, 06 Jun 2024 10:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717670242
