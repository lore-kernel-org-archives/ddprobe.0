Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DAB1FBC8E
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782583114; cv=none; b=hW7lWTJcZZB9X3L8poDgn9EREzmmKQ6bMN68PwxhOdMv2fPI/qZzoIGBRFHQ0eySZ6PPJGD/c/oghy+huyh4SkPDd848WEgO9YlvjMgF5Wu8CLU+V5CySF518uhX6f1gWUHZhqf/Zewmirbft9+wTdrdguwfgBNNW4efPhgq94E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782583114; c=relaxed/simple;
	bh=OJ1mrVQmk/oQuhoo0zfKqBUW2Rl2vLBJGZDkDR+GICc=;
	h=To:Subject:From:Message-Id:Date; b=SbTOe+oDUIk41BlOY93JihOszyNNn9ZCaD50enMLqoSBcINvC1p1EWpfdymBconTVvqMjN82/VrrWjZcFu6dfIyxVqznbjYChrACzGLuzyRH2MFhSzg3qclF3/sRmmtzlwmcAOvQO9haSk6lI1q+7e1Ga+HHZOo9EgpZ3rANcKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+Ypwces; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+Ypwces"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CEAC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782583113;
	bh=OJ1mrVQmk/oQuhoo0zfKqBUW2Rl2vLBJGZDkDR+GICc=;
	h=To:Subject:From:Date:From;
	b=s+YpwcesjmVPUF0MpXI0A11sdEFhnuRjcHRJE0MSoY0z9OIJnbe9q7pCto2iyY9Vy
	 uql+oUc3i1kiseG2Rz0RoJkv4/I354LU3Qgbf4MtQoqaVi2rQQ3Izm5x1XnRGADEGy
	 AoBDvnd2khT72+tfdweh6lpUKy9tmSNkznEwGpRsIGs5HCpVm+AROM9I13Pk9519nU
	 ccez1FIu+qWJs5HNIdbRnuLHlvI/dX0N+68j8fvlH1hKug//TurPVZEJbzYeaj7vK8
	 CCD+kYOSOHyd/cBf2n3LRARRTG9HlttQx5vNEtHT90a578EODSlpMSrAwwA8DWWFr+
	 lNtC6qNVBGETQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B351AC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258311369.32631.5126081237308318367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ad40ae75d8edbf35295e892bdce0eae4ba53fdda3cc963a83f107520e1a518
Date: Sat, 27 Jun 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782583113
