Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3529813D891
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763730714; cv=none; b=oIuH/LIdMG0A3IYl8mkJaFo0yeErItB/XuQzNmD6TYc7/Hsuc89y+Tmv08BJT7T9FWoDzloic8QlzDaDOu5NVqEc6qUZ4qp4yn//go4oTANrH+fM0pd9K4lYwQfo3STeRtZ5t7RVenA2BCYuY8oTgYDb9d6yUcrupdmK7zJZakQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763730714; c=relaxed/simple;
	bh=OHTrr4VgBjxXS7KUaaTc8sE+4cUqifUPropG90CvawY=;
	h=To:Subject:From:Message-Id:Date; b=haGHAWVsnnb7aQWEa8+WKGJUHtvKF3J0Av0amlPN8zcpPysa2FBvMX1QS/wJ52EylYdRvDJDGvn6uUYlX4XdA39oDQP7F8PvGHEYz+1W3zaC1h+AfbpbVU3SfeUi/w9wuI2EoaL0EbIFBF8T6UeCqRsVv31RiSelOZtcogl+1w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPADWpGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPADWpGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1154C116C6
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763730713;
	bh=OHTrr4VgBjxXS7KUaaTc8sE+4cUqifUPropG90CvawY=;
	h=To:Subject:From:Date:From;
	b=RPADWpGqJ5vwW71ZA5qzVAM0pepR7m5r/ORRa3BJekg+8GHZDQA4U5V8wV0qmN8um
	 H74/lBBj2BZuzNMr4prX5pamOzVQWbkSmL6HKWpZogHN436HRGTvMiXXB1IPx9CPCY
	 t/LRylddFjWIh/08+ta92FcssvMApjsZmNuqx59HIo4HluCN2O8OTxtPGMWUZqt878
	 uVLubFXVph0UYjQv2z4BBPDZwceQWoldgr6QqkNudG3cS0kQ5SNqXbLR8hApz21Zhx
	 COSrYIcYQX93vsLTZIpPTFhpX48DKrNL0PLxNw6iFXOtUu2CmoaiKtN4VRdo7UPDXa
	 GgRYYBSp3Rcrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD96CFC271
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373071358.16268.17615925718403882938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456a33b36b1dcef2211b248fd2f8ebf8881b8edbb2a492b30f9da9dd6d0240d3
Date: Fri, 21 Nov 2025 13:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763730713
