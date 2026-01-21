Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E80330305
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769000034; cv=none; b=HMd+jXGVS30YvZjttfM5UADQerIjQMdqXE1APsOkyuviL6/KtLeTlRIJ66rfxkfdtccQXwMbgJsEyCpt1+fQrPZd9dQKiB+PG/YqEdDEjK3uot6JeYo6wDpuLvmtVaNIOjSZyIFNUyngToxQeL51GOZ5CeWsCF6B3sp95lRvq/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769000034; c=relaxed/simple;
	bh=r5ig6TIfQhaTLqZ0thBQ8PlqrTZGuhvy2jLOQ/P9q5A=;
	h=To:Subject:From:Message-Id:Date; b=sGUmz+Gwwxc+1nf7Cv0DYo/BGcsJm5lWWi244lGbJm6+0OEYHOTQvT1kPk6CkE6fZOvl+DnE/c4E2tRQn1xEaCsQZjKz30tdN+nXKa2JYIccQ8uYRy89f0PWOavKZzNdBNygOzitn7CiMrn/vqf7A+Zxv5mKdM+M/V8nsgOPs7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjsZX0By; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjsZX0By"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD1C19424
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769000033;
	bh=r5ig6TIfQhaTLqZ0thBQ8PlqrTZGuhvy2jLOQ/P9q5A=;
	h=To:Subject:From:Date:From;
	b=ZjsZX0ByjwnnkT3itiRte1wHrMSSy1dF6zzYg6G6niTT9+E5+4pKLZd06QWLJvZij
	 Wq3QysrzkkaDx7s/EZ7QzeMPKzp8u5IUEE01SDw7B4OKyY6fRn5ZyfT3e1ymAhdv88
	 AbI/pl2iho8zudsz/GHXTU7UpMRypMvrrx3DjCcHkhIUahpFVNcyob4krSl6GfxPUZ
	 jD73C9a9XN1dV+xd0ikCv4SZPhnvhni1wEJ9H2bKNAxM9VD2W94Sl5wMbCtJwsi+cm
	 JA+Zl/SIzjgiOn1Lndd9V9VsD1e2utKJVZdze+aYXAxJa9g7Gn7GahzkVl0pQhVplY
	 b97xIc6hNM38A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9197CC44525
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900003358.581.3173963122063160833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28710f0ec42e544a287b6285241dba0f19f206fa87147c2bfeae75593e7048d
Date: Wed, 21 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769000033
