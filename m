Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC35259483
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744617594; cv=none; b=lv3Ypg7I+ezdPzG150RNzsbvJ/cvl1IFSG4uyZu070Q65Ws7Z96pSMa+t1H8/2aNgixFV2KFIrN+Wp/+yzIrTXqEgs2+A4eDXyu9drxzUs0tN8X+C48z2AVaNe+htnRqO3H9vrd6DwiYp01iATsQM3r/M2ZgD4/qM+DiNHfegeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744617594; c=relaxed/simple;
	bh=gIC6whH0EgGRJCnbrXFVBwDMjM9pevXCdjnz7Xbe1+U=;
	h=To:Subject:From:Message-Id:Date; b=eWCOqE01ZG4NK5Czb6VXIhRAks4Fy1ITx4fOzbxUyoQhc/fk2HOIBZdfmEAkKTEwL3Fh9ikfD3dbFpYpx+OD6kzz9K4YHA5JpNeI+6rNCLm8PRG11wAi/mUDb9qCKmMyJfP2jmEmZGsD7MZ9gwSqagECX94iPyVDHYkBx6NkN3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sckbo6dq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sckbo6dq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9432C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744617593;
	bh=gIC6whH0EgGRJCnbrXFVBwDMjM9pevXCdjnz7Xbe1+U=;
	h=To:Subject:From:Date:From;
	b=Sckbo6dqaLm6K8HwgRA7/FldVYQxLGveD2E7y+YCyAr3iAQTPihLHVADtwHZc72z2
	 +CmeokaY8NRgbQkIw87aH8LorEqvuSNZn87mfyDf6Hot70dTWaApz8xa/G0E8FWf5+
	 Aph++YpL0sU5G+owgGJa44CifhRAR9JZWBVHvkoUO3lHvNIjOVitprvG2sQ7U2g8D/
	 aS38/CApE7PgWyoE8QcYwtbwztQ18pvCUSVD7UCr+C40IeyynDe8Mv392v7DeiqJF2
	 lkcHeb/+MpkE9NCDNJcl/K5ObZe7pILkBT6NIntweX0S3XbTuESLljJOhg9QM/AT8p
	 2fpKpkQIIkv8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CACC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461759361.3577.9190101289525338531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb673ac717794a6f98ad9604e6ea28533835dcade5a2ee553350d59d47c073bb
Date: Mon, 14 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744617593
