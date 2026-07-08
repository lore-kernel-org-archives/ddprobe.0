Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A03437109
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783529314; cv=none; b=iwvPPFWEKKB8mvRl3EhcXIyP1THSssWi1PkHRTDo9tR7ddfiRt1/gdRK9qVcHhCVBBAbpK7vBH20my/r/xLQiJuV1bRH404g34QGbxIgANXGmRvh5HugD6oChPkz2JjLzLQQ/EJf+YXRwgnONEMUAO3TGAnh4CBR7eG6fgJSqOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783529314; c=relaxed/simple;
	bh=gll3O1Sk2OmF/Ockyf5uWcHN/4sNDwG+0MaxycveGrQ=;
	h=To:Subject:From:Message-Id:Date; b=ng7PXqunjIb57oUQtDvhxAcTROVFuo1VL1C0EN84/bLnTMK2jcuHa3iG546jFlQQxQtF5CJigYQ8ApA+hh9voNMPJEQuyJ/M5+UI+fE2CdewQR/7f568Q5kQDJvZOptnxDkAPI3fbr1ensKg5lChW6rQSTG3omXX8UND1cO2qZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULHhEpx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULHhEpx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC49CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783529313;
	bh=gll3O1Sk2OmF/Ockyf5uWcHN/4sNDwG+0MaxycveGrQ=;
	h=To:Subject:From:Date:From;
	b=ULHhEpx2mJyrh7jdtpsDgZpt47Z1Gx77wrSBnmEihFsYfRaDjBsSUfvgZgnL3bv71
	 uDlHHWscWHo8Rn7Bf7Kuf5k9NMHsCCtqDZb+Jfq/psYNKdKYl6+kVdgKfHbO98Cc5f
	 nRENNUrBLJTJ3ZX53BUK2JRNOtO5zlDQm2rBAbBN4E8RoXp+At4Z4Hbww/UY1+ozZr
	 NMPR27DNv750D8w4G0lSF9X3kd83bz8JGtgypg7MDvQbeH5GdQRScjsn6AA2ah+6Ig
	 XEek3h7m5keDOLvQKKppaWnIPodqDVnWvsBC5saN9NLjhehdfn0L4w1g0hLOktN++2
	 eCAz/VCqTpIjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9456C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352931368.8107.2993230676157867956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cef974869633de1bf6ebc30d85a351d57cd140288811ca25aaffa637a4ed321
Date: Wed, 08 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783529313
