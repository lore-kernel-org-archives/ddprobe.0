Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B96B3CAE9C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779040234; cv=none; b=exaZMb8Qkt319kc0FlEoie095unRcSmZV/kffRyfRtp2LfAT6pnN9VHckfEgMUm+8avEKH7OJHriPxkLrY9T9G3gsi2ugXAkg/DsB+TgmxJCX4bsLRne1XxiXxHgm3VE4QbUqM7jdFYiWPkLudzBiWor1UsgmOKibxZ/IGOo6MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779040234; c=relaxed/simple;
	bh=JKJE+lOxO8r3vSwbShsrB0eYmrro/Bv86UmNsvyMv5c=;
	h=To:Subject:From:Message-Id:Date; b=qXdKNL489Ecaq17CgLliAiMj4IOJzxScoobRAFz0vuxg/TzfOuxPJWQASoY9gWo1pwXWbH9Lt3Si5hYeJadx6U3e+nVpg8gGzsmhHADUvtqx9fqLexpbHGB69PlyKQh8J7M7iyJ/5x/4WhAE/RaBACqYEsKhjBvyXUyuCY15aRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJWR55Ck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJWR55Ck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE3EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779040233;
	bh=JKJE+lOxO8r3vSwbShsrB0eYmrro/Bv86UmNsvyMv5c=;
	h=To:Subject:From:Date:From;
	b=QJWR55CkEablPEKVQWXk00noNTMGJMKLdTKXb4w10G+9wQ+TUbFrNDNOtfcxkNGdO
	 6Mcgk6/6Hvl1+U/110/4/7Po7t2wapQy+L3HX/WNtRrkqbNeVt1aPYusibUmmOiUSo
	 38NHXLASwr2UOXASnuCRkhe9UIFhPzwiJ7fC9x7n0gAqxPx1+VyWqin0fCeZfdRxa4
	 jtW3z1C6VttRqIr2ib3NUcrd1szsqMP/kFyTSWTjX2K2W2OPuBXUasfkS3jYq54o9Z
	 07nsuvvohIACIKwZEsqvP0eDAvppnYyFh+aRBKHscz0pklcE5ZFOFSmsMsxz2Vx2nf
	 cQq3gZQFei9Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD35CD4F4A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904023369.5678.10267066298830158276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437811c70c9ab43ebd555125ce1d34150490442c2e22a395d40e9a5e446c9844
Date: Sun, 17 May 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779040233
