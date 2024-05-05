Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C22C13E892
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714948343; cv=none; b=bQPDrYteRN3Io01yQfjL8XYYZJNnVisWejvom3cnzyWqIiIMYkaDbuEfOC1+DcL7IZOnShQcakBwnesgoi9fq5sMK4hBNIljr18sJUG7ZwunAwop9oFfDH9kTZI33YQYvz4aorQoQ9L5AthbYSDB+t+s3qiwbTNOMGkN5l6jMHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714948343; c=relaxed/simple;
	bh=/s8a9NdJTfTqrT6E4j6tsU0roCghFpQkUa1GdTQsnqI=;
	h=To:Subject:From:Message-Id:Date; b=Iyh1L+ez4M8BC/kAwZ2lE6eYzH2xx38IQut7afehdnoc936tYkLentN8nuP6n5ay6eHMpUa/hedaU/N6LQ3Rat0zoXv9SUOU1g+HeghKXBdLPLXWR8ILsDv32VJQKTcKVyTg6HzP3nuZAegNnbRE8hP6z2vNr8S7YBGblWmodUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/Td7HNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/Td7HNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0772C116B1
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714948342;
	bh=/s8a9NdJTfTqrT6E4j6tsU0roCghFpQkUa1GdTQsnqI=;
	h=To:Subject:From:Date:From;
	b=E/Td7HNZPycmYxPJ86qGb4DhaAcTyEh2KoDDWzeE3/5Gz3Dy/+zcNZmWJbKP0fp+q
	 GkJ/Mq/jxvr2LDHKrAeHHZGh2TUpO5Hh5KGvDOuJytck40b6E0k9uyqE5rjqoaZvAU
	 XsCMrvi2LPs+p3irlQBbvBxd/kDJd5EezVHuDMK7IZflRYChgUGB4G81ixrU+5oafG
	 wKvF7IbPiUMv5Hn+UXB8DUOmfymsCRd6UVlbUJE+wornZjnoFktra7C3T3zsp+4oT6
	 iFzfj9xB3yf/rXTNUHoDFccLiCzuTM05zNZr/ExI+6GvxGvJafbLsXM0Ba94hNIbhN
	 InOmBMnPGckdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB1A1C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171494834275.6844.1192876823018495165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d705b48497629ec5ce08cb07949b72b58d34410410667ba7029b05360046de92
Date: Sun, 05 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714948342
