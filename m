Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B37BE6C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751938794; cv=none; b=P3vv3OgRUr8X/Jv8qNUoiknY9tx00/+1ad/m3lDChiw3It+iUsSlUXYDINKAkyl7d0t/CA68WpK8tSFq7HzczDM6OVAztOdc2SROkoyibyHXoh0Kj6K0LWwodKWzsamqAXnBexRm+acq1tj9f2parRnoIpDXG0foMySAfMUU8HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751938794; c=relaxed/simple;
	bh=1Ab8uuegsgiz2MhZK/l4TutyZkss5a52okRc5k/tUkc=;
	h=To:Subject:From:Message-Id:Date; b=HGWyuuTmaSsTtezak6Q1EF2RJHNTVgFaG2csZyw6kmonAd9JBcxoCxx7rXRIOi2cjcY7NV5d+x+S7wmOD0t1BH3Gei3o3ng1t70qetbWkApvGsgYBlvZ1wU6iaC+dZ2sjl9twB0LkBP32H0XIGdEKoscxgJoSJz2uQ/+TuyaN44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxQTOn0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxQTOn0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1504C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751938793;
	bh=1Ab8uuegsgiz2MhZK/l4TutyZkss5a52okRc5k/tUkc=;
	h=To:Subject:From:Date:From;
	b=sxQTOn0SvWoSkp4ZS/EFGtQVtuW+G1uIM+4BTlWnwyC5fG4f08o2dunUfp06v1y+3
	 HWh0TvK0QqitIqgkyat6HOdWf2VN9QZvsyd308WwwZ0ExOkpjLYroHkrxNojPzB3mW
	 XujAjMT9QlF3NtQLe1heZJ05kxZ/s38OMT0mcL4lio3X6Thn4GAw6SD4bZL6lBtBBY
	 k/qPvOwf2jgqw6BXp9lZQroMULbC7iUeMp/zX//FOr0z4slwVPY5gDW98n7hbnivmX
	 O+4cIEkC1UV2SgvpzkHkw9vZjLq+aY2Tta5X83NbhaKPSMismQSOW352GiQ111mim1
	 dFsH5TDAxZWOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C2C83030
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193879357.26429.2232299453147919102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7f3cc8533d0d03426d17abced22fceeedb6f81b9528f93e9d374180cb32813
Date: Tue, 08 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751938793
