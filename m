Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1A2175BF
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746146994; cv=none; b=uh/XcGAZaJMds6DFFj2PTpA4zFsRexOID5md+xejeuUGDquSRGetlozzoo+a9VqzfS86+bo4QhVhAVIMeXSA+W8+13cXwLp70OBsnPNqx1dX7A/ZcDflWFmhguYLudmH1WuageQxVGCw4Wi4iFcRVtrmvFZGa7xTIj9TfuUnzm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746146994; c=relaxed/simple;
	bh=8G+wx3l3/YLsF5eWimiWeWGQ4SmKo7rhEcHuZmQKbfI=;
	h=To:Subject:From:Message-Id:Date; b=nZT42SjxEBGOzq3s3d5JRbSnPzTXb4iRaRpeIcl+fg5LU/tpueD2C1TDRdS7jBqNGV5eZ6fLQswBk09z9bvfYUsglqt34waGScBcBmBW4XqkQCakPuFXxnJUrtQiujkau4UayTQyWh3a0Jy/3nhjceJ5QSbjQcLwj51JMl91dnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qv+Nv1yq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qv+Nv1yq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0DDC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746146993;
	bh=8G+wx3l3/YLsF5eWimiWeWGQ4SmKo7rhEcHuZmQKbfI=;
	h=To:Subject:From:Date:From;
	b=qv+Nv1yqYUX+kz32VKgzTrrvkTkg5WgK/JHAZOY0XeDLuOUGJK1bkbtGAKexHib5q
	 hoLnBBSSrV5F0XiaKvfwFw9p0FfBj5F4VhJIeb7RCAzybd8lWdaGyaAenUE1BlUkVs
	 4Jpvu9XVzgU/Fh+f9Y0W1ftexoyvpF66Sf3MMscR4VJ36+FnWrVg8B2VFkiNabjJC7
	 IvXy1am1WuG/rs6+eG9XL/zJ/MjfcMPOYDelzn0H/q/mXq4dMoPpgffEdufH6ri1bs
	 vWo4LYj009eOgxk+tIBcmfykgoBpOM82fYcheXYBOKukzucqd6gHS5fRQ3TRrUqajV
	 Jak6eRIHQrz7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E580C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614699357.32433.11598498965059163074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd92818d2f1741c8656cbf49fb811d5da3eb9a417d806b8abf5dce4dd90db0d3
Date: Fri, 02 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746146993
