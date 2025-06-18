Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366C0285C8E
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750257594; cv=none; b=e+GS8+b29EaapnE4pqNs0PLzUJu9jaOtrhRRVXnynPmbT2uhRlme+m1Gvxx4CC0fvTNOeYhOVOAlEjEEFqCgdFbEewAqu+u3V/6mPwpdnVAUJqX40l62bzeptJtcPhANs+Vodclq/eAvaPOIzwCTUoWfm2yytsUHSBC/lR57W9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750257594; c=relaxed/simple;
	bh=YgEullcnfGeX4TiBq+zFMkI52XprshGI51WhVkJUbeI=;
	h=To:Subject:From:Message-Id:Date; b=ITij3ZiVmGJmQtDrWlTULxX3snNk3YexnnYEEXWg/0mwnHm0uuhEbcUxnmxGpHpyhwg4hFqL5cBEXkxw1W5XzCPtqYhUj0h8zPExClv6cytG5q02U6afqsAUe0gQ+yEAoODvStfEeGYUzf4Pt8DkXidde+xWTBoD1fqLF93uhCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1eALxtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1eALxtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0835C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750257593;
	bh=YgEullcnfGeX4TiBq+zFMkI52XprshGI51WhVkJUbeI=;
	h=To:Subject:From:Date:From;
	b=D1eALxtJB1bZR4zCCkHi6WaABQtmPUB8J0Il24Hh7k53aqxiTxoAfM6H+7u8Jj7N/
	 3Pv9i7z/I81BNhv8Jj7+sSKCP6MP74bKebeJBRPL82IkOOEYW+kdnP3NeoXP5Q8IZk
	 4yIzoSU5ObQMDXkvkRr1OV+dffKVAOJQG0n+gHkGxjhS30YHQh4PJ3lr2Vi6tGlcHI
	 6yAO+xAAmUJjuEhBsR3j9hFh3sYWBBcOg3XPJvUoYf528lZNnNLjKfe6uF2oYzLHMu
	 +3T719cZtnVmvMLI2o62uJ9RnjBZEHPJWDGubpHWL3brgOtJxW87MJVDobCJTCUBmn
	 N8qdhJ+azmv5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9019AC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025759358.28845.6376711292130765204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b6053b7cbc1a0e88946269b807567968512e0f87898e487a20e713a0b03d74
Date: Wed, 18 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750257593
