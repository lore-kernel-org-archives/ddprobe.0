Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA84946A
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772953494; cv=none; b=UJ3j+x9BtrV10YAPf2Akt36skmsz8Lmi8X4o+xHG9hhAkFX9zg0NjibY3Hz19+FNFstAg15dBpiWEOXlVoZ2BbujM4w7rH9klV8vogTJzB0+qtHHPpcXcN+F2bZzqNgu3jbzAwYnda9xCqD+d5f4tml426q0lI54+Pd+G0WqUfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772953494; c=relaxed/simple;
	bh=+HxsvkTV6X37jjQvZ0qZ5IN/fDZgT6FQz++GrpX6vBY=;
	h=To:Subject:From:Message-Id:Date; b=JTZ5fh9iCD8iiNROFkHppxETNReX6+kOd74mZThNtrNjSRQWRxk2V/ZscGypwUzCE29Ex0QkTOw47WUX0vm1ENW3xgNCXBpjHsCwWAJa+EQ4AUfW+NbXVIXyKbS3WptrMYKy4/GucaeJFY6zyq12tAgZjVRZxqDr5XwOAt2hR9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvzKevn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvzKevn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCC9C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772953493;
	bh=+HxsvkTV6X37jjQvZ0qZ5IN/fDZgT6FQz++GrpX6vBY=;
	h=To:Subject:From:Date:From;
	b=kvzKevn7hNCc1RrBYaejp3v8FqbEjvyK5BEhri0YCEB2CehSpGk6q8tvrIY3yAQgi
	 zcbwm98hYUA61IMEMJPBAxKys1DvU3mOBYCvAdYe3oWGyj6w/DZwOkB5seoVIg6Pmc
	 qFIrbGdnVhidFDemHJcuTA7jdGFaJmnDQJokVkwx5DppXuIoHN7I92uyAaAs7P5hvQ
	 gpNwC0KnEBllBL0yTNI/blFLuyrz5wT/sG2/RIHNVf3lKiHmJmBBycrGMmXGC8ixIo
	 z6224rKQ8KTFq7PDNmodBBZMLeNiUPDQAxn80Gq0CnkixsOowLqN5YQyZhnmb+q9bl
	 Qx2BFthMZGGBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9244FF55132
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295349358.18935.12965771986302048489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae51786fe9aaa19177db3933d345c5c7871d6293d6672cafd8f6b80615f767ab
Date: Sun, 08 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772953493
